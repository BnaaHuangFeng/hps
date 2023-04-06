      DOUBLE PRECISION FUNCTION SCAPRD(U  ,V  ,N  ) 
C
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION U(N), V(N)
      DATA  R0  / 0.0D0 /
C***********************************************************************
C SCALAR PRODUCT OF DOUBLE PRECISION VECTORS U AND V OF DIMENSION N
C***********************************************************************
      SCAPRD=R0
      DO 10 I=1,N
        SCAPRD=SCAPRD+U(I)*V(I)
  10  CONTINUE
      RETURN
      END
