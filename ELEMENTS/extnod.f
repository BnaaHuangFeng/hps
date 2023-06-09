      SUBROUTINE EXTNOD
     1(   EXMATX     ,VARGP      ,VARNOD     ,NVAR       ,NGAUSP     ,
     2    NNODE      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      INCLUDE '../ELEMENTS.f'
      DIMENSION
     1    EXMATX(NNODE,NGAUSP),VARGP(NVAR,NGAUSP),VARNOD(NVAR,NNODE)
C***********************************************************************
C EXTRAPOLATES GAUSS POINT VALUES OF A GIVEN FIELD TO NODES
C
C REFERENCE: Section 5.6.1
C            E Hinton & JS Campbel. Local and global Smoothing of
C            discontinuous finite element functions using a least
C            squares method. Int. J. Num. meth. Engng., 8:461-480, 1974.
C            E Hinton & DRJ Owen. An introduction to finite element
C            computations. Pineridge Press, Swansea, 1979.
C***********************************************************************
      CALL RVZERO(VARNOD,NVAR*NNODE)
      DO 30 IVAR=1,NVAR
        DO 20 INODE=1,NNODE
          DO 10 IGAUSP=1,NGAUSP
            VARNOD(IVAR,INODE)=VARNOD(IVAR,INODE)+
     1                         EXMATX(INODE,IGAUSP)*VARGP(IVAR,IGAUSP)
   10     CONTINUE
   20   CONTINUE
   30 CONTINUE
C
      RETURN
      END
