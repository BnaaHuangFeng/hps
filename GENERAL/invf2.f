      SUBROUTINE INVF2
     1(   F          ,FINV       ,NTYPE      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION
     1    F(3,3)             ,FINV(3,3)
      DATA
     1   R0   ,R1   /
     2   0.0D0,1.0D0/
C***********************************************************************
C INVERTS DEFORMATION GRADIENT TENSORS FOR PLANE STRESS/STRAIN AND
C AXISYMMETRIC PROBLEMS
C***********************************************************************
      DETFPL=F(1,1)*F(2,2)-F(1,2)*F(2,1)
      IF(DETFPL.EQ.R0)CALL ERRPRT('EE0001')
      IF(NTYPE.EQ.3.AND.F(3,3).EQ.R0)CALL ERRPRT('EE0001')
C
      DETFIN=R1/DETFPL
      FINV(1,1)=F(2,2)*DETFIN
      FINV(2,2)=F(1,1)*DETFIN
      FINV(1,2)=-F(1,2)*DETFIN
      FINV(2,1)=-F(2,1)*DETFIN
      IF(NTYPE.EQ.2)THEN
        FINV(3,3)=R1
      ELSEIF(NTYPE.EQ.3)THEN
        FINV(3,3)=R1/F(3,3)
      ENDIF
C
      RETURN
      END
