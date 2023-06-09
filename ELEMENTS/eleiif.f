      SUBROUTINE ELEIIF
     1(   IELEM      ,IFFAIL     )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C
      INCLUDE '../MAXDIM.f'
      INCLUDE '../MATERIAL.f'
      INCLUDE '../ELEMENTS.f'
      INCLUDE '../GLBDBASE.f'
C
      LOGICAL  IFFAIL
C***********************************************************************
C ELEMENT INTERFACE FOR COMPUTATION OF ELEMENT INTERNAL FORCE VECTOR.
C CALL ELEMENT CLASS-SPECIFIC INTERNAL FORCE VECTOR CALCULATION ROUTINES
C
C REFERENCE: Section 5.5.1
C            Figure 5.4
C***********************************************************************
C Initialise internal force calculation failure flag
      IFFAIL=.FALSE.
C Recover element and material type group identification numbers
C --------------------------------------------------------------
      IGRUP =IGRPID(IELEM)
      IELIDN=IELTID(IGRUP)
      MATIDN=MATTID(IGRUP)
C Identify element class
C ----------------------
      IELCLS=IELPRP(2,IELIDN)
C
C Call internal force computation routine according to element class
C ------------------------------------------------------------------
C
      IF(IELCLS.EQ.STDARD)THEN
C Standard 2-D displacement-based isoparametric elements
        CALL IFSTD2
     1(   IELEM      ,IFFAIL     ,MDIME      ,MELEM      ,MPOIN      ,
     2    MSTRE      ,MTOTV      ,NAXIS      ,NLARGE     ,NTYPE      ,
     3    COORD(1,1,1)       ,DINCR              ,
     4    ELOAD(1,IELEM)     ,IELPRP(1,IELIDN)   ,IPROPS(1,MATIDN)   ,
     5    LALGVA(1,1,IELEM,1),LNODS              ,RALGVA(1,1,IELEM,1),
     6    RELPRP(1,IELIDN)   ,RPROPS(1,MATIDN)   ,RSTAVA(1,1,IELEM,1),
     7    STRSG(1,1,IELEM,1) ,THKGP(1,IELEM,1)   ,TDISP              )
C 2-D F-bar elements (for large strain formulation only)
      ELSEIF(IELCLS.EQ.FBAR)THEN
        CALL IFFBA2
     1(   IELEM      ,IFFAIL     ,MDIME      ,MELEM      ,MPOIN      ,
     2    MSTRE      ,MTOTV      ,NAXIS      ,NTYPE      ,
     3    COORD(1,1,1)       ,DINCR              ,
     4    ELOAD(1,IELEM)     ,IELPRP(1,IELIDN)   ,IPROPS(1,MATIDN)   ,
     5    LALGVA(1,1,IELEM,1),LNODS              ,RALGVA(1,1,IELEM,1),
     6    RELPRP(1,IELIDN)   ,RPROPS(1,MATIDN)   ,RSTAVA(1,1,IELEM,1),
     7    STRSG(1,1,IELEM,1) ,THKGP(1,IELEM,1)   ,TDISP              )
      ENDIF
      RETURN
      END
