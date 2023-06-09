      SUBROUTINE ATMDFB
     1(   AMATX      ,NTYPE      ,QMATX      ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER
     1(   MADIM=5    )
      DIMENSION
     1    AMATX(MADIM,MADIM)    ,QMATX(MADIM,MADIM)   ,STRES(*)
      DATA
     1    R0   ,RP5  ,R1   ,R2   ,R3   /
     2    0.0D0,0.5D0,1.0D0,2.0D0,3.0D0/
C***********************************************************************
C COMPUTE THE ADDITIONAL TANGENT MODULUS "q" REQUIRED BY F-BAR
C ELEMENTS:
C                       1                 2
C               q  :=  --- a:(I (x) I) - --- [sigma] (x) I
C                       3                 3
C FOR AXISYMMETRIC CASE, AND
C                       1                 1
C               q  :=  --- a:(I (x) I) - --- [sigma] (x) I
C                       2                 2
C FOR PLANE STRAIN.
C
C REFERENCE: Expressions (15.11) and (15.22)
C***********************************************************************
C
      IF(NTYPE.EQ.2)THEN
C Plane strain
        A=RP5
        B=-RP5
        QMATX(1,1)=A*(AMATX(1,1)+AMATX(1,4))+B*STRES(1)
        QMATX(2,1)=A*(AMATX(2,1)+AMATX(2,4))+B*STRES(3)
        QMATX(3,1)=A*(AMATX(3,1)+AMATX(3,4))+B*STRES(3)
        QMATX(4,1)=A*(AMATX(4,1)+AMATX(4,4))+B*STRES(2)
        QMATX(1,2)=R0
        QMATX(2,2)=R0
        QMATX(3,2)=R0
        QMATX(4,2)=R0
        QMATX(1,3)=R0
        QMATX(2,3)=R0
        QMATX(3,3)=R0
        QMATX(4,3)=R0
        QMATX(1,4)=QMATX(1,1)
        QMATX(2,4)=QMATX(2,1)
        QMATX(3,4)=QMATX(3,1)
        QMATX(4,4)=QMATX(4,1)
      ELSEIF(NTYPE.EQ.3)THEN
C Axisymmetric
        A=R1/R3
        B=-R2/R3
        QMATX(1,1)=A*(AMATX(1,1)+AMATX(1,4)+AMATX(1,5))+B*STRES(1)
        QMATX(2,1)=A*(AMATX(2,1)+AMATX(2,4)+AMATX(2,5))+B*STRES(3)
        QMATX(3,1)=A*(AMATX(3,1)+AMATX(3,4)+AMATX(3,5))+B*STRES(3)
        QMATX(4,1)=A*(AMATX(4,1)+AMATX(4,4)+AMATX(4,5))+B*STRES(2)
        QMATX(5,1)=A*(AMATX(5,1)+AMATX(5,4)+AMATX(5,5))+B*STRES(4)
        QMATX(1,2)=R0
        QMATX(2,2)=R0
        QMATX(3,2)=R0
        QMATX(4,2)=R0
        QMATX(5,2)=R0
        QMATX(1,3)=R0
        QMATX(2,3)=R0
        QMATX(3,3)=R0
        QMATX(4,3)=R0
        QMATX(5,3)=R0
        QMATX(1,4)=QMATX(1,1)
        QMATX(2,4)=QMATX(2,1)
        QMATX(3,4)=QMATX(3,1)
        QMATX(4,4)=QMATX(4,1)
        QMATX(5,4)=QMATX(5,1)
        QMATX(1,5)=QMATX(1,1)
        QMATX(2,5)=QMATX(2,1)
        QMATX(3,5)=QMATX(3,1)
        QMATX(4,5)=QMATX(4,1)
        QMATX(5,5)=QMATX(5,1)
      ENDIF
C
      RETURN
      END
