      SUBROUTINE CTVMMX
     1(   DGAMA      ,DMATX      ,EPFLAG     ,IPROPS     ,NTYPE      ,
     2    RPROPS     ,RSTAVA     ,RSTAV2     ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(IPHARD=4  ,MSTRE=4)
C Arguments
      LOGICAL EPFLAG
      DIMENSION
     1    DMATX(MSTRE,MSTRE) ,IPROPS(*)          ,RPROPS(*)          ,
     2    RSTAVA(2*MSTRE+1)  ,RSTAV2(2*MSTRE+1)  ,STRES(MSTRE)
C Local arrays and variables
      DIMENSION
     1    BACSTR(MSTRE)      ,DEVPRJ(MSTRE,MSTRE),ETA(MSTRE)         ,
     2    FOID(MSTRE,MSTRE)  ,S(MSTRE)           ,SOID(MSTRE)
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
C ELASTO-PLASTIC WITH PIECE-WISE LINEAR MIXED ISOTROPIC/KINEMATIC
C HARDENING.
C PLANE STRAIN AND AXISYMMETRIC IMPLEMENTATIONS.
C
C REFERENCE: Section 7.6.6
C***********************************************************************
C Stops program if neither plane strain nor axisymmetric state
      IF(NTYPE.NE.2.AND.NTYPE.NE.3)CALL ERRPRT('EI0048')
C Retrieve current accumulated plastic strain
      EPBAR=RSTAVA(MSTRE+1)
C Retrieve last converged accumulated plastic strain
      EPBARN=RSTAV2(MSTRE+1)
C Retrieve current backstress tensor components
      BACSTR(1)=RSTAVA(6)
      BACSTR(2)=RSTAVA(7)
      BACSTR(3)=RSTAVA(8)
      BACSTR(4)=RSTAVA(9)
C Set material properties
      YOUNG=RPROPS(2)
      POISS=RPROPS(3)
      NHARD=IPROPS(3)
C Set pointers to isotropic and kinematic hardening curves
      IPIHAR=IPHARD
      IPKHAR=IPHARD+2*NHARD
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
C Relative stress components
        DO 30 ISTRE=1,MSTRE
          ETA(ISTRE)=S(ISTRE)-BACSTR(ISTRE)
   30   CONTINUE
        ETANOR=SQRT(ETA(1)**2+ETA(2)**2+R2*ETA(3)**2+ETA(4)**2)
C Recover last elastic trial relative effective stress
        QBAR=ROO3D2*ETANOR
        BETBAN=PLFUN(EPBARN,NHARD,RPROPS(IPKHAR))
        BETBAR=PLFUN(EPBAR,NHARD,RPROPS(IPKHAR))
        QBARTR=QBAR+R3G*DGAMA+BETBAR-BETBAN
C Assemble elastoplastic tangent (upper triangle only)
        HISLOP=DPLFUN(EPBAR,NHARD,RPROPS(IPIHAR))
        AFACT=R2G*(R1-R3G*DGAMA/QBARTR)
        HKSLOP=DPLFUN(EPBAR,NHARD,RPROPS(IPKHAR))
        BFACT=R6*GMODU*GMODU*(DGAMA/QBARTR-R1/(R3G+HISLOP+HKSLOP))/
     1        (ETANOR*ETANOR)
        DO 50 I=1,NSTRE
          DO 40 J=I,NSTRE
            DMATX(I,J)=AFACT*DEVPRJ(I,J)+BFACT*ETA(I)*ETA(J)+
     1                 BULK*SOID(I)*SOID(J)
   40     CONTINUE       
   50   CONTINUE
      ELSE
C Compute elasticity matrix (upper triangle only)
C -----------------------------------------------
        DO 70 I=1,NSTRE
          DO 60 J=I,NSTRE
            DMATX(I,J)=R2G*DEVPRJ(I,J)+BULK*SOID(I)*SOID(J)
   60     CONTINUE       
   70   CONTINUE
      ENDIF
C Assemble lower triangle
C -----------------------
      DO 90 J=1,NSTRE-1
        DO 80 I=J+1,NSTRE
          DMATX(I,J)=DMATX(J,I)
   80   CONTINUE
   90 CONTINUE
      RETURN
      END
