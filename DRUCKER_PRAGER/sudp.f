      SUBROUTINE SUDP
     1(   DGAM       ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(IPHARD=7  ,MSTRE=4)
      LOGICAL APEX, IFPLAS, LALGVA(3), SUFAIL
      DIMENSION
     1    IPROPS(*)          ,RPROPS(*)          ,RSTAVA(MSTRE+1)    ,
     2    STRAT(MSTRE)       ,STRES(MSTRE)
      DIMENSION
     1    STRIAL(MSTRE)
      DATA
     1    R0   ,RP5  ,R1   ,R2   ,R3   ,TOL   / 
     2    0.0D0,0.5D0,1.0D0,2.0D0,3.0D0,1.D-08/
      DATA MAXRT / 50 /
C***********************************************************************
C STRESS UPDATE PROCEDURE FOR DRUCKER PRAGER TYPE ELASTO-PLASTIC
C MATERIAL WITH ASSOCIATIVE/NON-ASSOCIATIVE FLOW RULE AND PIECE_WISE
C LINEAR ISOTROPIC HARDENING:
C IMPLICIT ELASTIC PREDICTOR/RETURN MAPPING ALGORITHM (Boxes 8.8-10)
C
C REFERENCE: Boxes 8.8-10
C***********************************************************************
C Stops program if neither plane strain nor axisymmetric
      IF(NTYPE.NE.2.AND.NTYPE.NE.3)CALL ERRPRT('EI0016')
C Initialize some algorithmic and internal variables
      DGAMA=R0
      IFPLAS=.FALSE.
      SUFAIL=.FALSE.
      EPBARN=RSTAVA(MSTRE+1)
      EPBAR=EPBARN
C Set some material properties
      YOUNG=RPROPS(2)
      POISS=RPROPS(3)
      ETA=RPROPS(4)
      XI=RPROPS(5)
      ETABAR=RPROPS(6)
      NHARD=IPROPS(3)
C and some constants
      GMODU=YOUNG/(R2*(R1+POISS))
      BULK=YOUNG/(R3*(R1-R2*POISS))
      R2G=R2*GMODU
      R1D3=R1/R3
C Compute elastic trial state
C ---------------------------
C Elastic trial volumetric strain and pressure stress
      EETV=STRAT(1)+STRAT(2)+STRAT(4)
      PT=BULK*EETV
C Elastic trial deviatoric stress
      EEVD3=EETV*R1D3
      STRIAL(1)=R2G*(STRAT(1)-EEVD3)
      STRIAL(2)=R2G*(STRAT(2)-EEVD3)
      STRIAL(4)=R2G*(STRAT(4)-EEVD3)
C shear component
      STRIAL(3)=R2G*(STRAT(3)*RP5)
C Compute elastic trial stress J2 invariant and cohesion
      VARJ2T=STRIAL(3)*STRIAL(3)+RP5*(STRIAL(1)*STRIAL(1)+
     1       STRIAL(2)*STRIAL(2)+STRIAL(4)*STRIAL(4))
      COHE=PLFUN(EPBARN,NHARD,RPROPS(IPHARD))
C Check for plastic consistency
C -----------------------------
      SQRJ2T=SQRT(VARJ2T)
      PHI=SQRJ2T+ETA*PT-XI*COHE
      RES=PHI
      IF(COHE.NE.R0)RES=RES/ABS(COHE)
      IF(RES.GT.TOL)THEN
C Plastic step: Use return mapping
C ================================
        IFPLAS=.TRUE.
        APEX=.FALSE.
C Apply return mapping to smooth portion of cone - REFERENCE: Box 8.9
C -------------------------------------------------------------------
        DO 20 IPTER1=1,MAXRT
C Compute residual derivative
          DENOM=-GMODU-BULK*ETABAR*ETA-
     1           XI*XI*DPLFUN(EPBAR,NHARD,RPROPS(IPHARD))
C Compute Newton-Raphson increment and update variable DGAMA
          DDGAMA=-PHI/DENOM
          DGAMA=DGAMA+DDGAMA
C Compute new residual
          EPBAR=EPBARN+XI*DGAMA
          COHE=PLFUN(EPBAR,NHARD,RPROPS(IPHARD))
          SQRJ2=SQRJ2T-GMODU*DGAMA
          P=PT-BULK*ETABAR*DGAMA
          PHI=SQRJ2+ETA*P-XI*COHE
C Check convergence
          RESNOR=ABS(PHI)
          IF(COHE.NE.R0)RESNOR=RESNOR/ABS(COHE)
          IF(RESNOR.LE.TOL)THEN
C Check validity of return to smooth portion
            IF(SQRJ2.GE.R0)THEN
C results are valid, update stress components and other variables
              IF(SQRJ2T.EQ.R0)THEN
                FACTOR=R0
              ELSE
                FACTOR=R1-GMODU*DGAMA/SQRJ2T
              ENDIF
              GOTO 50
            ELSE
C smooth wall return not valid - go to apex return procedure
              GOTO 30
            ENDIF
          ENDIF
   20   CONTINUE
C failure of stress update procedure
        SUFAIL=.TRUE.
        CALL ERRPRT('WE0002')
        GOTO 999
   30   CONTINUE
C Apply return mapping to APEX - REFERENCE: Box 8.10
C --------------------------------------------------
C perform checks and set some variables
        APEX=.TRUE.
        IF(ETA.EQ.R0)CALL ERRPRT('EE0011')
        IF(ETABAR.EQ.R0)CALL ERRPRT('EE0012')
        ALPHA=XI/ETABAR
        BETA=XI/ETA
C Set initial guess for unknown DEPV and start iterations
        DEPV=R0
        EPBAR=EPBARN
        COHE=PLFUN(EPBAR,NHARD,RPROPS(IPHARD))
        RES=BETA*COHE-PT
        DO 40 IPTER2=1,MAXRT
          DENOM=ALPHA*BETA*DPLFUN(EPBAR,NHARD,RPROPS(IPHARD))+BULK
C Compute Newton-Raphson increment and update variable DEPV
          DDEPV=-RES/DENOM
          DEPV=DEPV+DDEPV
C Compute new residual
          EPBAR=EPBARN+ALPHA*DEPV
          COHE=PLFUN(EPBAR,NHARD,RPROPS(IPHARD))
          P=PT-BULK*DEPV
          RES=BETA*COHE-P
C Check convergence
          RESNOR=ABS(RES)
          IF(COHE.NE.R0)RESNOR=RESNOR/ABS(COHE)
          IF(RESNOR.LE.TOL)THEN
C update stress components and other variables
            DGAMA=DEPV/ETABAR
            FACTOR=R0
            GOTO 50
          ENDIF
   40   CONTINUE
C failure of stress update procedure
        SUFAIL=.TRUE.
        CALL ERRPRT('WE0002')
        GOTO 999
C Store converged stress components and other state variables
C -----------------------------------------------------------
   50   CONTINUE
        STRES(1)=FACTOR*STRIAL(1)+P
        STRES(2)=FACTOR*STRIAL(2)+P
        STRES(3)=FACTOR*STRIAL(3)
        STRES(4)=FACTOR*STRIAL(4)+P
C update EPBAR
        RSTAVA(MSTRE+1)=EPBAR
C compute converged elastic (engineering) strain components
        FACTOR=FACTOR/R2G
        EEVD3=P/(BULK*R3)
        RSTAVA(1)=FACTOR*STRIAL(1)+EEVD3
        RSTAVA(2)=FACTOR*STRIAL(2)+EEVD3
        RSTAVA(3)=FACTOR*STRIAL(3)*R2
        RSTAVA(4)=FACTOR*STRIAL(4)+EEVD3
      ELSE
C Elastic step: update stress using linear elastic law
C ====================================================
        STRES(1)=STRIAL(1)+PT
        STRES(2)=STRIAL(2)+PT
        STRES(3)=STRIAL(3)
        STRES(4)=STRIAL(4)+PT
C elastic engineering strain
        RSTAVA(1)=STRAT(1)
        RSTAVA(2)=STRAT(2)
        RSTAVA(3)=STRAT(3)
        RSTAVA(4)=STRAT(4)
      ENDIF
  999 CONTINUE
C Update some algorithmic variables before exit
C =============================================
      LALGVA(1)=IFPLAS
      LALGVA(2)=SUFAIL
      LALGVA(3)=APEX
      DGAM=DGAMA
      RETURN
      END
