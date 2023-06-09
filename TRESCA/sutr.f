      SUBROUTINE SUTR
     1(   DGAM       ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(IPHARD=4  ,MSTRE=4)
C Arguments
      LOGICAL
     1    LALGVA(4)
      DIMENSION
     1    DGAM(2)            ,IPROPS(*)          ,RPROPS(*)          ,
     2    RSTAVA(MSTRE+1)    ,STRAT(MSTRE)       ,STRES(MSTRE)
C Local arrays and variables
      LOGICAL
     1    DUMMY, IFPLAS, RIGHT, SUFAIL, TWOVEC
      DIMENSION
     1    EIGPRJ(MSTRE,2)    ,PSTRS(3)           ,STREST(3)

      DATA
     1    R0   ,R1   ,R2   ,R3   ,R4   ,SMALL ,TOL   / 
     2    0.0D0,1.0D0,2.0D0,3.0D0,4.0D0,1.D-10,1.D-10/
      DATA MXITER / 50 /
C***********************************************************************
C STRESS UPDATE PROCEDURE FOR TRESCA TYPE ELASTO-PLASTIC MATERIAL WITH
C PIECE-WISE LINEAR ISOTROPIC HARDENING:
C IMPLICIT ELASTIC PREDICTOR/RETURN MAPPING ALGORITHM (Boxes 8.1-3).
C PLANE STRAIN AND AXISYMMETRIC IMPLEMENTATIONS.
C
C REFERENCE: Boxes 8.1-3
C            Section 8.1.2
C***********************************************************************
C Stops program if neither plane strain nor axisymmetric state
      IF(NTYPE.NE.2.AND.NTYPE.NE.3)CALL ERRPRT('EI0029')
C Initialize some algorithmic and internal variables
      DGAMA=R0
      DGAMB=R0
      IFPLAS=.FALSE.
      SUFAIL=.FALSE.
      EPBARN=RSTAVA(MSTRE+1)
      EPBAR=EPBARN
C Set some material properties
      YOUNG=RPROPS(2)
      POISS=RPROPS(3)
      NHARD=IPROPS(3)
C Set some constants
      GMODU=YOUNG/(R2*(R1+POISS))
      BULK=YOUNG/(R3*(R1-R2*POISS))
      R2G=R2*GMODU
      R4G=R4*GMODU
      R1D3=R1/R3
C Compute elastic trial state
C ---------------------------
C Volumetric strain and pressure stress
      EEV=STRAT(1)+STRAT(2)+STRAT(4)
      P=BULK*EEV
C Spectral decomposition of the elastic trial deviatoric stress
      EEVD3=EEV*R1D3
      STREST(1)=R2G*(STRAT(1)-EEVD3)
      STREST(2)=R2G*(STRAT(2)-EEVD3)
      STREST(3)=GMODU*STRAT(3)
      CALL SPDEC2(EIGPRJ,PSTRS,DUMMY,STREST)
      PSTRS(3)=R2G*(STRAT(4)-EEVD3)
C Identify maximum (PSTRS1) and minimum (PSTRS3) principal stresses
      II=1
      JJ=1
      PSTRS1=PSTRS(II)
      PSTRS3=PSTRS(JJ)
      DO 10 I=2,3
        IF(PSTRS(I).GE.PSTRS1)THEN
          II=I
          PSTRS1=PSTRS(II)
        ENDIF
        IF(PSTRS(I).LT.PSTRS3)THEN
          JJ=I
          PSTRS3=PSTRS(JJ)
        ENDIF
   10 CONTINUE
      IF(II.NE.1.AND.JJ.NE.1)MM=1
      IF(II.NE.2.AND.JJ.NE.2)MM=2
      IF(II.NE.3.AND.JJ.NE.3)MM=3
      PSTRS2=PSTRS(MM)
C Compute trial yield function and check for plastic consistency
C --------------------------------------------------------------
      SHMAXT=PSTRS1-PSTRS3
      SIGMAY=PLFUN(EPBARN,NHARD,RPROPS(IPHARD))
      PHIA=SHMAXT-SIGMAY
      IF(PHIA/SIGMAY.GT.TOL)THEN
C Plastic step: Apply return mapping
C ==================================
        IFPLAS=.TRUE.
C identify possible two-vector return: right or left of main plane
        SCAPRD=PSTRS1+PSTRS3-PSTRS2*R2
        IF(SCAPRD.GE.R0)THEN
          RIGHT=.TRUE.
        ELSE
          RIGHT=.FALSE.
        ENDIF
C Apply one-vector return mapping first (return to main plane)
C ------------------------------------------------------------
        TWOVEC=.FALSE.
C Start Newton-Raphson iterations
        DO 20 NRITER=1,MXITER
C Compute residual derivative
          DENOM=-R4G-DPLFUN(EPBAR,NHARD,RPROPS(IPHARD))
C Compute Newton-Raphson increment and update variable DGAMA
          DDGAMA=-PHIA/DENOM
          DGAMA=DGAMA+DDGAMA
C Compute new residual
          EPBAR=EPBARN+DGAMA
          SIGMAY=PLFUN(EPBAR,NHARD,RPROPS(IPHARD))
          SHMAX=SHMAXT-R4G*DGAMA
          PHIA=SHMAX-SIGMAY
C Check convergence
          RESNOR=ABS(PHIA/SIGMAY)
          IF(RESNOR.LE.TOL)THEN
C Check validity of one-vector return
            S1=PSTRS1-R2G*DGAMA
            S2=PSTRS2
            S3=PSTRS3+R2G*DGAMA
            DELTA=DMAX1(ABS(S1),ABS(S2),ABS(S3))*SMALL
            IF(S1+DELTA.GE.S2.AND.S2+DELTA.GE.S3)THEN
C converged stress is in the same sextant as trial stress -> 1-vector
C return is valid. Update EPBAR and principal deviatoric stresses
              RSTAVA(MSTRE+1)=EPBAR
              PSTRS1=S1
              PSTRS3=S3
              GOTO 50
            ELSE
C 1-vector return is not valid - go to two-vector procedure
              GOTO 30
            ENDIF
          ENDIF
   20   CONTINUE
C failure of stress update procedure
        SUFAIL=.TRUE.
        CALL ERRPRT('WE0001')
        GOTO 999
   30   CONTINUE
C Apply two-vector return mapping (return to corner - right or left)
C ------------------------------------------------------------------
        TWOVEC=.TRUE.
        DGAMA=R0
        DGABAR=R1
        EPBAR=EPBARN
        SIGMAY=PLFUN(EPBARN,NHARD,RPROPS(IPHARD))
        SHMXTA=PSTRS1-PSTRS3
        IF(RIGHT)THEN
          SHMXTB=PSTRS1-PSTRS2
        ELSE
          SHMXTB=PSTRS2-PSTRS3
        ENDIF
        PHIA=SHMXTA-SIGMAY
        PHIB=SHMXTB-SIGMAY
C Start Newton-Raphson iterations
        DO 40 NRITER=1,MXITER
C Compute residual derivative
          HSLOPE=DPLFUN(EPBAR,NHARD,RPROPS(IPHARD))
          DRVAA=-R4G-HSLOPE
          DRVAB=-R2G-HSLOPE
          DRVBA=-R2G-HSLOPE
          DRVBB=-R4G-HSLOPE
C Compute Newton-Raphson increment and update variables DGAMA and DGAMB
          R1DDET=R1/(DRVAA*DRVBB-DRVAB*DRVBA)
          DDGAMA=(-DRVBB*PHIA+DRVAB*PHIB)*R1DDET
          DDGAMB=(DRVBA*PHIA-DRVAA*PHIB)*R1DDET
          DGAMA=DGAMA+DDGAMA
          DGAMB=DGAMB+DDGAMB
C Compute new residual
          DGABAR=DGAMA+DGAMB
          EPBAR=EPBARN+DGABAR
          SIGMAY=PLFUN(EPBAR,NHARD,RPROPS(IPHARD))
          PHIA=SHMXTA-R2G*(R2*DGAMA+DGAMB)-SIGMAY
          PHIB=SHMXTB-R2G*(DGAMA+R2*DGAMB)-SIGMAY
C Check convergence
          RESNOR=(ABS(PHIA)+ABS(PHIB))/SIGMAY
          IF(RESNOR.LE.TOL)THEN
C Update EPBAR and principal deviatoric stresses
            RSTAVA(MSTRE+1)=EPBAR
            IF(RIGHT)THEN
              PSTRS1=PSTRS1-R2G*(DGAMA+DGAMB)
              PSTRS3=PSTRS3+R2G*DGAMA
              PSTRS2=PSTRS2+R2G*DGAMB
            ELSE
              PSTRS1=PSTRS1-R2G*DGAMA
              PSTRS3=PSTRS3+R2G*(DGAMA+DGAMB)
              PSTRS2=PSTRS2-R2G*DGAMB
            ENDIF
            GOTO 50
          ENDIF
   40   CONTINUE
C failure of stress update procedure
        SUFAIL=.TRUE.
        CALL ERRPRT('WE0001')
        GOTO 999
   50   CONTINUE
C update stress components
C ------------------------
        PSTRS(II)=PSTRS1
        PSTRS(JJ)=PSTRS3
        PSTRS(MM)=PSTRS2
        STRES(1)=PSTRS(1)*EIGPRJ(1,1)+PSTRS(2)*EIGPRJ(1,2)+P
        STRES(2)=PSTRS(1)*EIGPRJ(2,1)+PSTRS(2)*EIGPRJ(2,2)+P
        STRES(3)=PSTRS(1)*EIGPRJ(3,1)+PSTRS(2)*EIGPRJ(3,2)
        STRES(4)=PSTRS(3)+P
C and elastic engineering strain
        RSTAVA(1)=(STRES(1)-P)/R2G+EEVD3
        RSTAVA(2)=(STRES(2)-P)/R2G+EEVD3
        RSTAVA(3)=STRES(3)/GMODU
        RSTAVA(4)=PSTRS(3)/R2G+EEVD3
      ELSE
C Elastic step: update stress using linear elastic law
C ====================================================
        STRES(1)=STREST(1)+P
        STRES(2)=STREST(2)+P
        STRES(3)=STREST(3)
        STRES(4)=PSTRS(3)+P
C elastic engineering strain
        RSTAVA(1)=STRAT(1)
        RSTAVA(2)=STRAT(2)
        RSTAVA(3)=STRAT(3)
        RSTAVA(4)=STRAT(4)
      ENDIF
  999 CONTINUE
C Update algorithmic variables before exit
C ========================================
      DGAM(1)=DGAMA
      DGAM(2)=DGAMB
      LALGVA(1)=IFPLAS
      LALGVA(2)=SUFAIL
      LALGVA(3)=TWOVEC
      LALGVA(4)=RIGHT
      RETURN
      END
