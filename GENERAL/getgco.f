      SUBROUTINE GETGCO
     1(   CARTCO     ,ELCOD      ,MDIME      ,NDIME      ,NNODE      ,
     2    SHAPE      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION
     1    CARTCO(NDIME)      ,ELCOD(MDIME,NNODE) ,SHAPE(NNODE)
      DATA R0/0.0D0/
C***********************************************************************
C EVALUATES THE GLOBAL CARTESIAN COORDINATES OF A POINT WITHIN AN
C ELEMENT BY INTERPOLATION OF THE ELEMENT NODAL COORDINATES
C
C REFERENCE: Expressions (4.39-40)
C***********************************************************************
      DO 20 IDIME=1,NDIME
        CARTCO(IDIME)=R0
        DO 10 INODE=1,NNODE
          CARTCO(IDIME)=CARTCO(IDIME)+ELCOD(IDIME,INODE)*SHAPE(INODE)
   10   CONTINUE
   20 CONTINUE
C
      RETURN
      END
