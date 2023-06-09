      SUBROUTINE ELEIST
     1(   ESTIF      ,IELEM      ,KUNLD      ,UNSYM      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C Hyplas global database
      INCLUDE '../MAXDIM.f'
      INCLUDE '../MATERIAL.f'
      INCLUDE '../ELEMENTS.f'
      INCLUDE '../GLBDBASE.f'
C
      LOGICAL UNSYM
      DIMENSION
     1    ESTIF(MEVAB,MEVAB)
C***********************************************************************
C ELEMENT INTERFACE ROUTINE FOR COMPUTATION OF ELEMENT TANGENT STIFFNESS
C MATRIX.
C CALL ELEMENT CLASS-SPECIFIC STIFFNESS MATRIX CALCULATION ROUTINES
C
C REFERENCE: Section 5.6.2
C            Figure 5.5
C***********************************************************************
C
C Recover element and material type group identification numbers
C --------------------------------------------------------------
      IGRUP=IGRPID(IELEM)
      IELIDN=IELTID(IGRUP)
      MATIDN=MATTID(IGRUP)
C Identify element class
      IELCLS=IELPRP(2,IELIDN)
C
C Call stiffness computation routine according to the element class
C -----------------------------------------------------------------
      IF(IELCLS.EQ.STDARD)THEN
        CALL STSTD2
     1(   IELEM      ,KUNLD      ,MDIME      ,MELEM      ,
     2    MPOIN      ,MSTRE      ,MTOTV      ,NAXIS      ,NLARGE     ,
     3    NTYPE      ,UNSYM      ,
     4    COORD(1,1,1)       ,DINCR              ,ESTIF              ,
     5    IELPRP(1,IELIDN)   ,IPROPS(1,MATIDN)   ,LALGVA(1,1,IELEM,1),
     6    LNODS              ,RALGVA(1,1,IELEM,1),RELPRP(1,IELIDN)   ,
     7    RPROPS(1,MATIDN)   ,RSTAVA(1,1,IELEM,1),RSTAVA(1,1,IELEM,2),
     8    STRSG(1,1,IELEM,1) ,THKGP(1,IELEM,1)   ,TDISP              )
      ELSEIF(IELCLS.EQ.FBAR)THEN
        CALL STFBA2
     1(   IELEM      ,KUNLD      ,MDIME      ,MELEM      ,
     2    MPOIN      ,MSTRE      ,MTOTV      ,NAXIS      ,
     3    NTYPE      ,UNSYM      ,
     4    COORD(1,1,1)       ,DINCR              ,ESTIF              ,
     5    IELPRP(1,IELIDN)   ,IPROPS(1,MATIDN)   ,LALGVA(1,1,IELEM,1),
     6    LNODS              ,RALGVA(1,1,IELEM,1),RELPRP(1,IELIDN)   ,
     7    RPROPS(1,MATIDN)   ,RSTAVA(1,1,IELEM,1),RSTAVA(1,1,IELEM,2),
     8    STRSG(1,1,IELEM,1) ,TDISP              )
      ENDIF
C
      RETURN
      END
