      SUBROUTINE RVZERO
     1(   V          ,N          )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION V(N)
      DATA R0/0.0D0/
C***********************************************************************
C INITIALISES TO ZERO A DOUBLE PRECISION ARRAY OF DIMENSION N
C***********************************************************************
      DO 10 I=1,N
        V(I)=R0
   10 CONTINUE
      RETURN
      END
