      SUBROUTINE ORDAMA
     1(   DGAMA      ,NOUTF      ,NTYPE      ,RSTAVA     ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(IPHARD=6  ,MSTRE=4)
      DIMENSION  RSTAVA(MSTRE+2), STRES(*)
      DATA   R2   ,R3    / 2.0D0,3.0D0 /
C***********************************************************************
C OUTPUT RESULTS (INTERNAL AND ALGORITHMIC VARIABLES) FOR LEMAITRE'S
C DUCTILE DAMAGE ELASTO-PLASTIC MODEL WITH NON-LINEAR ISOTROPIC
C HARDENING
C***********************************************************************
 1000 FORMAT(' S-eff = ',G12.4,' R     = ',G12.4,' dgama = ',G12.4)
 2000 FORMAT(' Damage= ',G12.4)
C
C Retrieve current values of hardening variable and damage
      HVAR=RSTAVA(MSTRE+1)
      DAMAGE=RSTAVA(MSTRE+2)
      IF(NTYPE.EQ.1)THEN
C Plane stress
        P=(STRES(1)+STRES(2))/R3
        EFFST=SQRT(R3/R2*((STRES(1)-P)**2+(STRES(2)-P)**2+
     1                     R2*STRES(3)**2+P**2))
      ELSEIF(NTYPE.EQ.2.OR.NTYPE.EQ.3)THEN
C Plane strain and axisymmetric
        P=(STRES(1)+STRES(2)+STRES(4))/R3
        EFFST=SQRT(R3/R2*((STRES(1)-P)**2+(STRES(2)-P)**2+
     1                     R2*STRES(3)**2+(STRES(4)-P)**2))
      ENDIF
C Write to output file
      WRITE(NOUTF,1000)EFFST,HVAR,DGAMA
      WRITE(NOUTF,2000)DAMAGE
      RETURN
      END
