      SUBROUTINE CHKNDB
     1(   FOUND      ,NNODE      ,NEDGEL     ,NODCHK     ,NORDEB     )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      LOGICAL FOUND
      DIMENSION
     1    NODCHK(NNODE)      ,NORDEB(NNODE,NEDGEL)
C***********************************************************************
C CHECKS WHETHER A GIVEN SET OF LOCAL ELEMENT NODE NUMBERS CORRESPOND TO
C ONE OF THE ELEMENT BOUNDARIES (EDGES IN 2-D AND FACETS IN 3-D). IF IT
C DOES, RETURNS (STORED IN NODCHK) THE LOCAL NODE NUMBERS ORDERED FOR
C NUMERICAL INTEGRATION ON BOUNDARY.
C***********************************************************************
      FOUND=.FALSE.
C Searches for the element boundary whose nodes coincide with the given
C set
      DO 20 IEDGEL=1,NEDGEL
        DO 10 INODE=1,NNODE
          IF((NODCHK(INODE).NE.0.AND.NORDEB(INODE,IEDGEL).EQ.0).OR.
     1       (NODCHK(INODE).EQ.0.AND.NORDEB(INODE,IEDGEL).NE.0))GOTO 20
   10   CONTINUE
        FOUND=.TRUE.
        GOTO 30
   20 CONTINUE
C
   30 CONTINUE
      IF(FOUND)THEN
C If the given node set corresponds indeed to one of the boundaries of
C the element, stores the node numbers in NODCHK ordered for numerical
C integration on the boundary.
        DO 40 INODE=1,NNODE
          INODEG=NORDEB(INODE,IEDGEL)
          IF(INODEG.NE.0)NODCHK(INODEG)=INODE
   40   CONTINUE 
      ENDIF 
C
      RETURN
      END
