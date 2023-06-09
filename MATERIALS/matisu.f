      SUBROUTINE MATISU
     1(   DETF       ,NLARGE     ,NTYPE      ,SUFAIL     ,THKGP      ,
     3    EINCR      ,FINCR      ,IPROPS     ,LALGVA     ,RALGVA     ,
     4    RPROPS     ,RSTAVA     ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C
      INCLUDE '../MATERIAL.f'
C
      PARAMETER( MSTRA=4 )
C Arguments
      LOGICAL
     1    SUFAIL             ,LALGVA
      DIMENSION
     1    EINCR(*)           ,FINCR(3,3)         ,IPROPS(*)          ,
     2    LALGVA(*)          ,RALGVA(*)          ,RPROPS(*)          ,
     3    RSTAVA(*)          ,STRES(*)
C Local arrays
      DIMENSION
     1    B(MSTRA)           ,BETRL(MSTRA)       ,STRAT(MSTRA)
 1000 FORMAT(/'STRAIN0:  ',G15.4,G15.4,G15.4,G15.4)
 1500 FORMAT(/'EINCR:    ',G15.4,G15.4,G15.4,G15.4)
C Local numerical constants
      DATA
     1    R1   /
     2    1.0D0/
C***********************************************************************
C MATERIAL INTERFACE FOR STATE UPDATE ROUTINE CALLS:
C ACCORDING TO THE MATERIAL TYPE, CALLS MATERIAL-SPECIFIC STATE UPDATE
C ROUTINE TO UPDATE STRESS AND OTHER STATE VARIABLES
C
C REFERENCE: Figure 5.4
C            Sections 5.7.2, 5.7.6
C***********************************************************************
C Set up number of stress components
      IF(NTYPE.EQ.1)THEN
        NSTRE=3
      ELSEIF(NTYPE.EQ.2)THEN
        NSTRE=4
      ELSEIF(NTYPE.EQ.3)THEN
        NSTRE=4
      ELSE
        CALL ERRPRT('EI0040')
      ENDIF
C Identify material type and class
      MATTYP=IPROPS(1)
      MATCLS=IPROPS(2)
C
C Then call material class/type-specific routines
C
      IF(MATCLS.EQ.HYPEPL)THEN
C
C Isotropic elastic/elasto-plastic materials with logarithmic finite
C strain extension
C ==================================================================
C
C Compute elastic trial strains. Note that for the purely elastic models
C the elastic trial strain equals the total strain
C ----------------------------------------------------------------------
C by hf
        WRITE(16,1000) (RSTAVA(I),I=1,NSTRE)
        WRITE(16,1500) (EINCR(I),I=1,NSTRE)
        IF(NLARGE.EQ.0)THEN
C Small strains: compute elastic trial INFINITESIMAL strain
          DO 10 ISTRE=1,NSTRE
            STRAT(ISTRE)=RSTAVA(ISTRE)+EINCR(ISTRE)   ! internal variable is last equi
   10     CONTINUE
        ELSEIF(NLARGE.EQ.1)THEN
C Large strains: compute elastic trial LOGARITHMIC strain
C... elastic trial left Cauchy-Green tensor
          CALL BETRIA
     1(   BETRL      ,RSTAVA     ,FINCR       ,NTYPE      )
C... elastic trial eulerian logarithmic strain
          CALL LOGSTR
     1(   BETRL      ,STRAT      ,NTYPE       )
        ENDIF
C Apply small strain material type-specific state updating procedure
C ------------------------------------------------------------------
        IF(MATTYP.EQ.ELASTC)THEN
C Linear elastic (Hencky material in large strains)
          CALL SUEL
     1(   NTYPE      ,RPROPS     ,RSTAVA     ,STRAT      ,STRES      )
C...set elasto-plastic flag and state update failure flag
          LALGVA(1)=.FALSE.
          LALGVA(2)=.FALSE.
        ELSEIF(MATTYP.EQ.TRESCA)THEN
C Tresca elasto-plastic
          IF(NTYPE.EQ.1)THEN
            CALL SUTRPN
     1(   RALGVA     ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
          ELSEIF(NTYPE.EQ.2.OR.NTYPE.EQ.3)THEN
            CALL SUTR
     1(   RALGVA     ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
          ENDIF
        ELSEIF(MATTYP.EQ.VMISES)THEN
C von Mises elasto-plastic
          IF(NTYPE.EQ.1)THEN
            CALL SUVMPS
     1(   RALGVA     ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
          ELSEIF(NTYPE.EQ.2.OR.NTYPE.EQ.3)THEN
            CALL SUVM
     1(   RALGVA     ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
          ENDIF
        ELSEIF(MATTYP.EQ.MOHCOU)THEN
C Mohr-Coulomb elasto-plastic
          CALL SUMC
     1(   RALGVA     ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
        ELSEIF(MATTYP.EQ.DRUPRA)THEN
C Drucker-Prager elasto-plastic
          IF(NTYPE.EQ.1)THEN
            CALL SUDPPN
     1(   RALGVA     ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT       ,STRES     )
          ELSEIF(NTYPE.EQ.2.OR.NTYPE.EQ.3)THEN
            CALL SUDP
     1(   RALGVA     ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
          ENDIF
        ELSEIF(MATTYP.EQ.LEMDAM)THEN
C Lemaitre's ductile damage elasto-plastic model
          CALL SUDAMA
     1(   RALGVA     ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
        ELSEIF(MATTYP.EQ.DAMELA)THEN
C Isotropically damaged isotropic elastic material with crack closure
C effects
          CALL SUDMEL
     1(   NTYPE      ,RPROPS     ,RSTAVA     ,STRAT      ,STRES      ,
     2    LALGVA(2)  )
C...set elasto-plastic flag to false
          LALGVA(1)=.FALSE.
        ELSE
C Error: Material type not recognised
          CALL ERRPRT('EI0042')
        ENDIF
C Exit routine in case of failure of the state update procedure
        SUFAIL=LALGVA(2)
        IF(SUFAIL)GOTO 999
        IF(NLARGE.EQ.1)THEN
C Perform extra updating operations required by this class of
C elasto-pastic materials at large strains only
C -----------------------------------------------------------
          DETFT=DETF
          IF(NTYPE.EQ.1)THEN
C Plane stress: update Gauss point thickness according to material
C model. Also update the total deformation gradient (taking the
C thickness strain into account)
            IF(MATTYP.EQ.ELASTC)THEN
C... Elastic (Hencky material in large strains)
              CALL TUEL
     1(   DETFT      ,RSTAVA     ,THKGP      ,1          )
            ELSEIF(MATTYP.EQ.VMISES)THEN
C... von Mises elasto-plastic
              CALL TUVM
     1(   DETFT      ,RSTAVA     ,THKGP      ,1          )
            ELSE
C... Error: Material type not recognised or not implemented for finite
C    strains under plane stress
              CALL ERRPRT('EI0058')
            ENDIF
          ENDIF
C Transform Kirchhoff into Cauchy stress
          DETFIN=R1/DETFT
          CALL RVSCAL(STRES,NSTRE,DETFIN)
        ENDIF
C
      ELSEIF(MATCLS.EQ.SINCRY)THEN
C
C Single crystal anisotropic finite elasto-plastic models
C =======================================================
C
        IF(MATTYP.EQ.PDSCRY)THEN
C Planar double slip single crystal
          CALL SUPDSC
     1(   RALGVA     ,FINCR      ,IPROPS     ,LALGVA     ,NTYPE      ,
     2    RPROPS     ,RSTAVA     ,STRES      )
        ELSE
C Error: Material type not recognised
          CALL ERRPRT('EI0042')
        ENDIF
        SUFAIL=LALGVA(2)
        IF(SUFAIL)GOTO 999
      ELSEIF(MATCLS.EQ.HYPER)THEN
C
C Generic isotropic finite hyperelasticity models
C ===============================================
C
C First compute current Left Cauchy-Green strain tensor, B
        CALL LEFTCG
     1(   RSTAVA     ,B          ,FINCR      ,NTYPE      )
C Then call the material type-specific state update procedure
        IF(MATTYP.EQ.OGDEN)THEN
C Ogden model
          CALL SUOGD
     1(   B          ,IPROPS     ,NTYPE      ,RPROPS     ,RSTAVA     ,
     2    STRES      ,THKGP      )
          SUFAIL=.FALSE.
        ELSE
C Error: Material type not recognised
          CALL ERRPRT('EI0042')
        ENDIF
      ELSEIF(MATCLS.EQ.PLASTC)THEN
C
C Elasto-plastic materials with small strain implementation only
C ==============================================================
C
C compute elastic trial INFINITESIMAL strain
        DO 20 ISTRE=1,NSTRE
          STRAT(ISTRE)=RSTAVA(ISTRE)+EINCR(ISTRE)
   20   CONTINUE
        IF(MATTYP.EQ.VMMIXD)THEN
C von Mises with mixed isotropic/kinematic hardening
          CALL SUVMMX
     1(   RALGVA     ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
        ELSE
C Error: Material type not recognised
          CALL ERRPRT('EI0042')
        ENDIF
        SUFAIL=LALGVA(2)
        IF(SUFAIL)GOTO 999
      ELSE
C Error: Material class not recognised
        CALL ERRPRT('EI0041')
      ENDIF
  999 CONTINUE
      RETURN
      END
