      SUBROUTINE OREL
     1(   NOUTF      ,NTYPE      ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(MSTRE=4)
      DIMENSION  STRES(*)
      DATA   R2   ,R3    / 2.0D0,3.0D0 /
C***********************************************************************
C OUTPUT RESULTS FOR LINEAR ELASTIC MATERIAL MODEL
C***********************************************************************
 1000 FORMAT(' S-eff = ',G12.4,' Press.= ',G12.4)
C
      IF(NTYPE.EQ.1)THEN
        P=(STRES(1)+STRES(2))/R3
        EFFST=SQRT(R3/R2*((STRES(1)-P)**2+(STRES(2)-P)**2+
     1                     R2*STRES(3)**2+P**2))
      ELSEIF(NTYPE.EQ.2.OR.NTYPE.EQ.3)THEN
        P=(STRES(1)+STRES(2)+STRES(4))/R3
        EFFST=SQRT(R3/R2*((STRES(1)-P)**2+(STRES(2)-P)**2+
     1                     R2*STRES(3)**2+(STRES(4)-P)**2))
      ENDIF
C Write to output file
      WRITE(NOUTF,1000)EFFST,P
      RETURN
      END
