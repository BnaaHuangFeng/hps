      SUBROUTINE CTDAMA
     1(   DGAMA      ,DMATX      ,EPFLAG     ,IPROPS     ,NTYPE      ,
     2    RPROPS     ,RSTAVA     ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(IPHARD=6  ,MSTRE=4)
      LOGICAL EPFLAG
      DIMENSION
     1    DMATX(MSTRE,MSTRE),IPROPS(*)           ,RPROPS(*)          ,
     2    RSTAVA(MSTRE+2)   ,STRES(MSTRE)
      DIMENSION
     1    DEVPRJ(MSTRE,MSTRE),FOID(MSTRE,MSTRE)  ,S(MSTRE)           ,
     2    SOID(MSTRE)
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
     1    R0   ,R1   ,R2   ,R3   ,R6   ,SMALL ,TOLDGA/
     2    0.0D0,1.0D0,2.0D0,3.0D0,6.0D0,1.D-16,1.D-08/
C***********************************************************************
C COMPUTATION OF THE CONSISTENT TANGENT MODULUS FOR LEMAITRE'S DUCTILE
C DAMAGE ELASTO-PLASTIC MODEL WITH PIECE-WISE LINEAR ISOTROPIC
C HARDENING.
C PLANE STRAIN AND AXISYMMETRIC IMPLEMENTATIONS.
C
C REFERENCE: Section 12.4.2
C***********************************************************************
C Stops program if neither plane strain nor axisymmetric state
      IF(NTYPE.NE.2.AND.NTYPE.NE.3)CALL ERRPRT('EI0052')
C Retrieve current hardening and damage variables
      HVAR=RSTAVA(MSTRE+1)
      DAMAGE=RSTAVA(MSTRE+2)
      OMEGA=R1-DAMAGE
C Retrieve material properties
      YOUNG=RPROPS(2)
      POISS=RPROPS(3)
      DAMEXP=RPROPS(4)
      DAMDEN=RPROPS(5)
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
C ========================================
        R3G=R3*GMODU
        R6G=R6*GMODU
        R2BULK=R2*BULK
        ROO3D2=SQRT(R3/R2)
C Current hydrostatic pressure
        P=(STRES(1)+STRES(2)+STRES(4))*R1D3
C Current deviatoric stress components
        S(1)=STRES(1)-P
        S(2)=STRES(2)-P
        S(3)=STRES(3)
        S(4)=STRES(4)-P
C Recover last (undamaged) elastic trial von Mises effective stress
        SNORM=SQRT(S(1)*S(1)+S(2)*S(2)+R2*S(3)*S(3)+S(4)*S(4))
        Q=ROO3D2*SNORM
        IF(ABS(OMEGA).LT.SMALL)THEN
C... internal error: singular residual derivatives
          CALL ERRPRT('EI0053')
        ENDIF
        IF(DGAMA.EQ.R0)THEN
C... at DGAMA=0 use numerical perturbation
          DGAMA=TOLDGA
        ENDIF
        QTILTR=(Q+R3G*DGAMA)/OMEGA
C.. and last (undamaged) elastic trial pressure
        PTILDE=P/OMEGA
C Get factors required in the assemblage of the elastoplastic tangent
C -------------------------------------------------------------------
        HSLOPE=DPLFUN(HVAR,NHARD,RPROPS(IPHARD))
        SIGMAY=PLFUN(HVAR,NHARD,RPROPS(IPHARD))
        Y=-SIGMAY**2/R6G-PTILDE**2/R2BULK
        AUX=-Y/DAMDEN
        AUXB=(QTILTR-SIGMAY)/R3G
        PHIT=QTILTR-SIGMAY
        DOMEGA=(R3G+OMEGA*HSLOPE)/PHIT
        DY=-HSLOPE*SIGMAY/R3G
        DOMDQT=-OMEGA/PHIT
C... residual derivatives
        DRES=DOMEGA-HSLOPE/R3G*AUX**DAMEXP-
     2       AUXB*DAMEXP*DY/DAMDEN*AUX**(DAMEXP-R1)
        DRDPTL=DAMEXP*AUXB*AUX**(DAMEXP-R1)*PTILDE/
     1         (DAMDEN*BULK)
        DRDQTL=DOMDQT+AUX**DAMEXP/R3G
C Compute some factors
        A1=-DRDQTL/DRES
        A2=-DRDPTL/DRES
        A3=A2*DOMEGA
        A4=A1*DOMEGA+DOMDQT
        AFACT=R2G*SIGMAY*OMEGA/QTILTR
        BFACT=R2G*(A1*HSLOPE*OMEGA+A4*SIGMAY-SIGMAY*OMEGA/QTILTR)
        BFACT=BFACT/(SNORM*SNORM)
        CFACT=BULK*(A2*HSLOPE*OMEGA+A3*SIGMAY)/ROO3D2
        CFACT=CFACT/SNORM
        DFACT=PTILDE*R2G*ROO3D2*A4
        DFACT=DFACT/SNORM
        EFACT=BULK*(OMEGA+PTILDE*A3)
C Assemble elastoplastic tangent modulus
C --------------------------------------
        DO 40 I=1,NSTRE
          DO 30 J=1,NSTRE
            DMATX(I,J)=AFACT*DEVPRJ(I,J)+BFACT*S(I)*S(J)+
     1                 CFACT*S(I)*SOID(J)+DFACT*SOID(I)*S(J)+
     2                 EFACT*SOID(I)*SOID(J)
   30     CONTINUE       
   40   CONTINUE
      ELSE
C Compute damaged elasticity matrix
C ---------------------------------
C... upper triangle
        FACTG=OMEGA*R2G
        FACTK=OMEGA*BULK
        DO 60 I=1,NSTRE
          DO 50 J=I,NSTRE
            DMATX(I,J)=FACTG*DEVPRJ(I,J)+FACTK*SOID(I)*SOID(J)
   50     CONTINUE       
   60   CONTINUE
C... lower triangle
        DO 80 J=1,NSTRE-1
          DO 70 I=J+1,NSTRE
            DMATX(I,J)=DMATX(J,I)
   70     CONTINUE
   80   CONTINUE
      ENDIF
      RETURN
      END
