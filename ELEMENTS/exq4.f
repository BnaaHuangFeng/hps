      SUBROUTINE EXQ4
     1(   NGAUSP     ,EXMATX     )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(NNODE=4)
      DIMENSION EXMATX(NNODE,NGAUSP)
      DATA R1    /
     1     1.0D0 /
      DATA
     1    A4               ,B4                 ,C4                 /
     2    1.866025404D0    ,-0.5D0             ,0.133974596D0      /
C***********************************************************************
C SETS COEFFICIENTS MATRIX (EXMATX) FOR EXTRAPOLATION FROM GAUSS POINTS
C TO NODES FOR ELEMENT TYPE 'QUAD_4' (STANDARD 4-NODED BI-LINEAR
C QUADRILATERAL)
C
C REFERENCE: Section 5.6.1
C            E Hinton & JS Campbel. Local and global Smoothing of
C            discontinuous finite element functions using a least
C            squares method. Int. J. Num. meth. Engng., 8:461-480, 1974.
C            E Hinton & DRJ Owen. An introduction to finite element
C            computations. Pineridge Press, Swansea, 1979.
C***********************************************************************
      IF(NGAUSP.EQ.1)THEN
        EXMATX(1,1)=R1
        EXMATX(2,1)=R1
        EXMATX(3,1)=R1
        EXMATX(4,1)=R1
      ELSEIF(NGAUSP.EQ.4)THEN
        EXMATX(1,1)=A4         
        EXMATX(1,2)=B4         
        EXMATX(1,3)=B4         
        EXMATX(1,4)=C4         
        EXMATX(2,1)=B4
        EXMATX(2,2)=C4
        EXMATX(2,3)=A4
        EXMATX(2,4)=B4
        EXMATX(3,1)=C4
        EXMATX(3,2)=B4
        EXMATX(3,3)=B4
        EXMATX(3,4)=A4
        EXMATX(4,1)=B4
        EXMATX(4,2)=A4
        EXMATX(4,3)=C4
        EXMATX(4,4)=B4
      ENDIF
      RETURN
      END
