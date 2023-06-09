      DOUBLE PRECISION FUNCTION PLFUN(X, NPOINT, XFX)
C
      INTEGER NPOINT, I
      DOUBLE PRECISION X, XFX(2,*)
C***********************************************************************
C PIECEWISE LINEAR FUNCTION DEFINED BY A SET OF NPOINT PAIRS
C {X,F(X)} STORED IN THE MATRIX XFX (DIM. 2*NPOINT).
C***********************************************************************
      DO 100 I=1,NPOINT 
        IF (X.GE.XFX(1,I)) THEN
          GOTO 100
        ELSE  
          IF (I.EQ.1) THEN
C           -- x < x1 --> f(x)=f(x1) --- 
            PLFUN=XFX(2,1)
            GOTO 999
          ELSE
C           -- x(i-1) <= x < x(i) ---
            PLFUN=XFX(2,I-1)+(X-XFX(1,I-1))*
     1                 (XFX(2,I)-XFX(2,I-1))/
     2                 (XFX(1,I)-XFX(1,I-1))
            GOTO 999
          ENDIF
        ENDIF
 100  CONTINUE
C     ----  x >= x(npoint) --> f(x) = f(x(npoint))  ---
      PLFUN=XFX(2,NPOINT)
 999  CONTINUE
      RETURN
      END
