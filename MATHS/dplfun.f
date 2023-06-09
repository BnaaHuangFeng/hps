      DOUBLE PRECISION FUNCTION DPLFUN(X, NPOINT, XFX)
C
      INTEGER NPOINT, I
      DOUBLE PRECISION X, XFX(2,NPOINT), R0
      DATA R0 / 0.0D0 /
C***********************************************************************
C DERIVATIVE OF THE PIECEWISE LINEAR FUNCTION 'PLFUN' DEFINED BY A SET
C OF NPOINT PAIRS {X,F(X)} STORED IN THE MATRIX XFX (DIM. 2*NPOINT).
C***********************************************************************
      DO 100 I=1,NPOINT 
        IF (X.GE.XFX(1,I)) THEN
          GOTO 100
        ELSE
          IF (I.EQ.1) THEN
C           -- x < x1   --> f(x)=f(x1) --> df(x)/dx=0 --- 
            DPLFUN=R0
            GOTO 999
          ELSE
C           -- x(i-1) <= x < x(i) ---
            DPLFUN=(XFX(2,I)-XFX(2,I-1))/
     1             (XFX(1,I)-XFX(1,I-1))
            GOTO 999
          ENDIF
        ENDIF
 100  CONTINUE
C     ---- x >= x(npoint) --> f(x) = f(x(npoint)) --> df/dx=0 ---
      DPLFUN=R0 
 999  CONTINUE
      RETURN
      END
