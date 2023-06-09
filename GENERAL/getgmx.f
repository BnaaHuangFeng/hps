      SUBROUTINE GETGMX
     1(   CARTCO     ,CARTD      ,GMATX      ,MDIME      ,MGDIM      ,
     2    NAXIS      ,NNODE      ,NTYPE      ,SHAPE      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION
     1    CARTCO(MDIME)      ,CARTD(MDIME,*)     ,GMATX(MGDIM,*)     ,
     2    SHAPE(*)
      DATA R0/0.0D0/
C***********************************************************************
C EVALUATES THE DISCRETE (FULL) GRADIENT OPERATOR 'G' FOR PLANE
C STRESS/STRAIN AND AXISYMMETRIC PROBLEMS. COMPONENT ORDERING
C (11,21,12,22,33).
C
C REFERENCE: Expression (4.97)
C***********************************************************************
C Plane strain/stress
C -------------------
      IY=0
      DO 10 INODE=1,NNODE
        IX=IY+1
        IY=IX+1
        GMATX(1,IX)=CARTD(1,INODE)
        GMATX(1,IY)=R0
        GMATX(2,IX)=R0
        GMATX(2,IY)=CARTD(1,INODE)
        GMATX(3,IX)=CARTD(2,INODE)
        GMATX(3,IY)=R0
        GMATX(4,IX)=R0
        GMATX(4,IY)=CARTD(2,INODE)
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
            GMATX(5,IX)=SHAPE(INODE)/CARTCO(NAXIS)
            GMATX(5,IY)=R0
          ELSE IF(NAXIS.EQ.2)THEN
C Axisymmetric about X axis
            GMATX(5,IX)=R0
            GMATX(5,IY)=SHAPE(INODE)/CARTCO(NAXIS)
          ENDIF
   20   CONTINUE
      ENDIF
C
      RETURN
      END
