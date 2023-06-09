      SUBROUTINE GETBMX
     1(   BMATX      ,CARTCO     ,CARTD      ,NDIME      ,MBDIM      ,  
     2    NAXIS      ,NNODE      ,NTYPE      ,SHAPE      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION
     1    BMATX(MBDIM,*)     ,CARTCO(NDIME)      ,CARTD(NDIME,*)     ,
     2    SHAPE(*)
      DATA R0/0.0D0/
C***********************************************************************
C EVALUATES THE DISCRETE SYMMETRIC GRADIENT OPERATOR 'B' (SMALL
C STRAIN-DISPLACEMENT MATRIX) FOR PLANE STRESS/STRAIN AND AXISYMMETRIC
C PROBLEMS
C
C REFERENCE: Expression (4.30)
C***********************************************************************
C Plane strain/stress
C -------------------
      IY=0
      DO 10 INODE=1,NNODE
        IX=IY+1
        IY=IX+1
        BMATX(1,IX)=CARTD(1,INODE)
        BMATX(1,IY)=R0
        BMATX(2,IX)=R0
        BMATX(2,IY)=CARTD(2,INODE)
        BMATX(3,IX)=CARTD(2,INODE)
        BMATX(3,IY)=CARTD(1,INODE)
   10 CONTINUE
      IF(NTYPE.EQ.3)THEN
C Axisymmetric problem
C --------------------
        IY=0
        DO 20 INODE=1,NNODE
          IX=IY+1
          IY=IX+1
          IF(NAXIS.EQ.1)THEN
C Axisymmetric about Y axis
            BMATX(4,IX)=SHAPE(INODE)/CARTCO(NAXIS)
            BMATX(4,IY)=R0
          ELSE IF(NAXIS.EQ.2)THEN
C Axisymmetric about X axis
            BMATX(4,IX)=R0
            BMATX(4,IY)=SHAPE(INODE)/CARTCO(NAXIS)
          ENDIF
   20   CONTINUE
      ENDIF
C
      RETURN
      END
