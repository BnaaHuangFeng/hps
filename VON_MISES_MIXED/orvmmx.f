      SUBROUTINE ORVMMX
     1(   DGAMA      ,NOUTF      ,NTYPE      ,RSTAVA     ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(IPHARD=4  ,MSTRE=4)
C Arguments
      DIMENSION  RSTAVA(2*MSTRE+1), STRES(*)
C Local arrays and variables
      DIMENSION  BACSTR(MSTRE)
      DATA   R2   ,R3    / 2.0D0,3.0D0 /
C***********************************************************************
C OUTPUT RESULTS (INTERNAL AND ALGORITHMIC VARIABLES) FOR VON MISES
C ELASTO-PLASTIC MATERIAL WITH NON-LINEAR MIXED HARDENING
C***********************************************************************
 1000 FORMAT(' b-xx  = ',G12.4,' b-yy  = ',G12.4,' b-xy  = ',G12.4,
     1       ' b-zz  = ',G12.4)
 1100 FORMAT(' S-eff = ',G12.4,' Eps.  = ',G12.4,' dgama = ',G12.4)
C
C Plane strain and axisymmetric only
      IF(NTYPE.NE.2.AND.NTYPE.NE.3)CALL ERRPRT('EI0050')
C Print backstress tensor
      BACSTR(1)=RSTAVA(6)
      BACSTR(2)=RSTAVA(7)
      BACSTR(3)=RSTAVA(8)
      BACSTR(4)=RSTAVA(9)
      WRITE(NOUTF,1000)BACSTR(1),BACSTR(2),BACSTR(3),BACSTR(4)
C Compute effective stress
      IF(NTYPE.EQ.2.OR.NTYPE.EQ.3)THEN
        P=(STRES(1)+STRES(2)+STRES(4))/R3
        EFFST=SQRT(R3/R2*((STRES(1)-P)**2+(STRES(2)-P)**2+
     1                     R2*STRES(3)**2+(STRES(4)-P)**2))
      ENDIF
      EPBAR=RSTAVA(MSTRE+1)
      WRITE(NOUTF,1100)EFFST,EPBAR,DGAMA
      RETURN
      END
