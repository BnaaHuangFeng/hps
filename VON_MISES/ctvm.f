      SUBROUTINE CTVM
     1(   DGAMA      ,DMATX      ,EPFLAG     ,IPROPS     ,NTYPE      ,
     2    RPROPS     ,RSTAVA     ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(IPHARD=4  ,MSTRE=4)
      LOGICAL EPFLAG
      DIMENSION
     1    DMATX(MSTRE,MSTRE),IPROPS(*)           ,RPROPS(*)          ,
     2    RSTAVA(MSTRE+1)   ,STRES(MSTRE)
      DIMENSION
     1    DEVPRJ(MSTRE,MSTRE),FOID(MSTRE,MSTRE)  ,S(MSTRE)           ,
     2    SOID(MSTRE)
C DEVPRJ(MSTRE,MSTRE) : Fourth-order deviatoric projection tensor stored in 
C                       array form. Refer to Appendix D for rules of array conversion.
C FOID(MSTRE,MSTRE)   : Fourth-order symmetric identity tensor stored in array 
C                       form according to the convention shown in (D.16) (page 762).
C SOID(MSTRE)         : Second-order identity tensor stored in array form.
      DATA
     1    FOID(1,1),FOID(1,2),FOID(1,3),FOID(1,4)/
     2    1.0D0    ,0.0D0    ,0.0D0    ,0.0D0    /
     3    FOID(2,1),FOID(2,2),FOID(2,3),FOID(2,4)/
     4    0.0D0    ,1.0D0    ,0.0D0    ,0.0D0    /
     5    FOID(3,1),FOID(3,2),FOID(3,3),FOID(3,4)/
     6    0.0D0    ,0.0D0    ,0.5D0    ,0.0D0    /
     7    FOID(4,1),FOID(4,2),FOID(4,3),FOID(4,4)/
     8    0.0D0    ,0.0D0    ,0.0D0    ,1.0D0    /
      DATA
     1    SOID(1)  ,SOID(2)  ,SOID(3)  ,SOID(4)  /
     2    1.0D0    ,1.0D0    ,0.0D0    ,1.0D0    /
      DATA
     1    R1   ,R2   ,R3   ,R6   /
     2    1.0D0,2.0D0,3.0D0,6.0D0/
C***********************************************************************
C COMPUTATION OF THE CONSISTENT TANGENT MODULUS FOR VON MISES TYPE
C ELASTO-PLASTIC MATERIAL WITH PIECE-WISE LINEAR ISOTROPIC HARDENING.
C PLANE STRAIN AND AXISYMMETRIC IMPLEMENTATIONS.
C
C REFERENCE: Section 7.4.3
C***********************************************************************
C Stops program if neither plane strain nor axisymmetric state
      IF(NTYPE.NE.2.AND.NTYPE.NE.3)CALL ERRPRT('EI0030')
C Current accumulated plastic strain
      EPBAR=RSTAVA(MSTRE+1)
C Set material properties
      YOUNG=RPROPS(2)
      POISS=RPROPS(3)
      NHARD=IPROPS(3)
C Shear and bulk moduli
      GMODU=YOUNG/(R2*(R1+POISS))
      BULK=YOUNG/(R3*(R1-R2*POISS))
      R2G=R2*GMODU
      R1D3=R1/R3
C Set deviatoric projection tensor
      IF(NTYPE.EQ.2)THEN
        NSTRE=3
      ELSEIF(NTYPE.EQ.3)THEN
        NSTRE=4
      ENDIF
      DO 20 I=1,NSTRE
        DO 10 J=1,NSTRE
          DEVPRJ(I,J)=FOID(I,J)-SOID(I)*SOID(J)*R1D3
   10   CONTINUE
   20 CONTINUE
      IF(EPFLAG)THEN
C Compute elastoplastic consistent tangent
C ----------------------------------------
        R3G=R3*GMODU
        ROO3D2=SQRT(R3/R2)
C Hydrostatic pressure
        P=(STRES(1)+STRES(2)+STRES(4))*R1D3
C Deviatoric stress components
        S(1)=STRES(1)-P
        S(2)=STRES(2)-P
        S(3)=STRES(3)
        S(4)=STRES(4)-P
C Recover last elastic trial von Mises effective stress
        SNORM=SQRT(S(1)*S(1)+S(2)*S(2)+R2*S(3)*S(3)+S(4)*S(4))
        Q=ROO3D2*SNORM      ! 上一次迭代的等效应力
        QTRIAL=Q+R3G*DGAMA  ! 上一次迭代的试等效应力
C Assemble elastoplastic tangent (upper triangle only)
        AFACT=R2G*(R1-R3G*DGAMA/QTRIAL)
        BFACT=R6*GMODU*GMODU*(DGAMA/QTRIAL-
     1        R1/(R3G+DPLFUN(EPBAR,NHARD,RPROPS(IPHARD))))/
     2        (SNORM*SNORM)
        DO 40 I=1,NSTRE
          DO 30 J=I,NSTRE
C S_n+1/||S_n+1||=S^trial_n+1/||S^trial_n+1||
            DMATX(I,J)=AFACT*DEVPRJ(I,J)+BFACT*S(I)*S(J)+
     1                 BULK*SOID(I)*SOID(J)
   30     CONTINUE       
   40   CONTINUE
      ELSE
C Compute elasticity matrix (upper triangle only)
C -----------------------------------------------
        DO 60 I=1,NSTRE
          DO 50 J=I,NSTRE
            DMATX(I,J)=R2G*DEVPRJ(I,J)+BULK*SOID(I)*SOID(J)
   50     CONTINUE       
   60   CONTINUE
      ENDIF
C Assemble lower triangle
C -----------------------
      DO 80 J=1,NSTRE-1
        DO 70 I=J+1,NSTRE
          DMATX(I,J)=DMATX(J,I)
   70   CONTINUE
   80 CONTINUE
      RETURN
      END
