      SUBROUTINE JACOB2
     1(   CARTD      ,DERIV      ,DETJAC     ,ELCOD      ,IELEM      ,
     2    MDIME      ,NDIME      ,NNODE      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION
     1    CARTD(MDIME,*)     ,DERIV(MDIME,*)     ,ELCOD(MDIME,*)
      DIMENSION
     1    XJACI(2,2)         ,XJACM(2,2)
      DATA R0   /
     1     0.0D0/
C***********************************************************************
C EVALUATES THE JACOBIAN MATRIX, ITS DETERMINANT AND THE CARTESIAN
C DERIVATIVES OF THE SHAPE FUNCTIONS OF 2-D ISOPARAMETRIC ELEMENTS
C
C REFERENCE: Section 4.1.2
C            Expression (4.33)
C***********************************************************************
 1000 FORMAT(//'  Warning from subroutine JACOB2:'//
     1 10X,'Negative jacobian determinant ',G12.4,' Element number ',I5)
 1010 FORMAT(//'  Warning from subroutine JACOB2:'//
     1 10X,'Zero jacobian determinant ',12X,' Element number ',I5/
     2 10X,'Jacobian matrix not inverted and cartesian derivatives ',/,
     3 10X,'of shape functions not computed')
C
C Evaluate jacobian matrix XJACM
C ------------------------------
C
      DO 30 IDIME=1,NDIME
        DO 20 JDIME=1,NDIME
          XJACM(IDIME,JDIME)=R0
          DO 10 INODE=1,NNODE
            XJACM(IDIME,JDIME)=XJACM(IDIME,JDIME)+DERIV(IDIME,INODE)*
     1                         ELCOD(JDIME,INODE)
   10     CONTINUE
   20   CONTINUE
   30 CONTINUE
C Determinant of jacobian matrix
      DETJAC=XJACM(1,1)*XJACM(2,2)-XJACM(1,2)*XJACM(2,1)
      IF(DETJAC.LT.R0)THEN
        WRITE(*,1000)DETJAC,IELEM
        WRITE(16,1000)DETJAC,IELEM
      ELSEIF(DETJAC.EQ.R0)THEN
        WRITE(*,1010)IELEM
        WRITE(16,1010)IELEM
        GOTO 999
      ENDIF
C Inverse of jacobian matrix
      XJACI(1,1)=XJACM(2,2)/DETJAC
      XJACI(2,2)=XJACM(1,1)/DETJAC
      XJACI(1,2)=-XJACM(1,2)/DETJAC
      XJACI(2,1)=-XJACM(2,1)/DETJAC
C
C Evaluate cartesian derivatives of shape functions
C -------------------------------------------------
C
      DO 60 IDIME=1,NDIME
        DO 50 INODE=1,NNODE
          CARTD(IDIME,INODE)=R0
          DO 40 JDIME=1,NDIME
            CARTD(IDIME,INODE)=CARTD(IDIME,INODE)+XJACI(IDIME,JDIME)*
     1                         DERIV(JDIME,INODE)
   40     CONTINUE
   50   CONTINUE
   60 CONTINUE
  999 CONTINUE
      RETURN
      END
