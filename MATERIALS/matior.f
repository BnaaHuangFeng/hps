      SUBROUTINE MATIOR
     1(   NTYPE      ,IPROPS     ,RALGVA     ,RPROPS     ,RSTAVA     ,
     2    STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      INCLUDE '../MATERIAL.f'
C Arguments
      DIMENSION
     1    IPROPS(*)          ,RALGVA(*)          ,RPROPS(*)          ,
     2    RSTAVA(*)          ,STRES(*)
C***********************************************************************
C MATERIAL INTERFACE FOR OUTPUT RESULT ROUTINE CALLS:
C ACCORDING TO THE MATERIAL TYPE, CALLS MATERIAL-SPECIFIC OUTPUT
C ROUTINE
C
C REFERENCE: Sections 5.7.5-6
C***********************************************************************
C First identify material type
C ----------------------------
      MATTYP=IPROPS(1)
C Then call corresponding routine to output material-specific results
C -------------------------------------------------------------------
      IF(MATTYP.EQ.ELASTC)THEN
C Elastic
        CALL OREL(16      ,NTYPE   ,STRES   )
      ELSEIF(MATTYP.EQ.TRESCA)THEN
C Tresca
        CALL ORTR(RALGVA  ,16      ,NTYPE   ,RSTAVA  ,STRES   )
      ELSEIF(MATTYP.EQ.VMISES)THEN
C von Mises
        CALL ORVM(RALGVA  ,16      ,NTYPE   ,RSTAVA  ,STRES   )
      ELSEIF(MATTYP.EQ.MOHCOU)THEN
C Mohr-Coulomb
        CALL ORMC(RALGVA  ,16      ,NTYPE   ,RSTAVA  ,STRES   )
      ELSEIF(MATTYP.EQ.DRUPRA)THEN
C Drucker-Prager
        CALL ORDP(RALGVA  ,16      ,NTYPE   ,RSTAVA  ,STRES   )
      ELSEIF(MATTYP.EQ.LEMDAM)THEN
C Lemaitre's ductile damage model
        CALL ORDAMA(RALGVA  ,16    ,NTYPE   ,RSTAVA  ,STRES   )
      ELSEIF(MATTYP.EQ.DAMELA)THEN
C Isotropically damaged isotropic elastic material with crack closure
C effects
        CALL ORDMEL(16    ,NTYPE   ,STRES   )
      ELSEIF(MATTYP.EQ.OGDEN)THEN
C Ogden hyperelastic
        CALL OROGD(16     ,NTYPE   ,STRES   )
      ELSEIF(MATTYP.EQ.PDSCRY)THEN
C Planar double-slip single crystal plasticity model
        CALL ORPDSC(RALGVA,16      ,NTYPE   ,RPROPS  ,RSTAVA  ,STRES   )
      ELSEIF(MATTYP.EQ.VMMIXD)THEN
C von Mises with mixed isotropic/kinematic hardening (infinitesimal
C only)
        CALL ORVMMX(RALGVA,16      ,NTYPE   ,RSTAVA  ,STRES   )
      ELSE
C Error: Material type not recognised
        CALL ERRPRT('EI0045')
      ENDIF 
      RETURN
      END
