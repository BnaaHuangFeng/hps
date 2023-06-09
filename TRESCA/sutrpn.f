      SUBROUTINE SUTRPN
     1(   DGAM       ,IPROPS     ,LALGVA     ,NTYPE      ,RPROPS     ,
     2    RSTAVA     ,STRAT      ,STRES      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(IPHARD=4  ,MSTRE=4)
C Arguments
      LOGICAL
     1    LALGVA(4)
      DIMENSION
     1    DGAM(2)            ,IPROPS(*)          ,RPROPS(*)          ,
     2    RSTAVA(MSTRE+1)    ,STRAT(*)           ,STRES(*)
C Local arrays and variables
      LOGICAL EPFLAG, IFPLAS, SUFAIL
      DIMENSION
     1    DMATX(MSTRE,MSTRE) ,RSTAUX(MSTRE+1)
      DATA
     1    R0    ,TOL   / 
     2    0.D0  ,1.D-08/
      DATA MXITER / 20 /
C***********************************************************************
C STRESS UPDATE PROCEDURE FOR TRESCA TYPE ELASTO-PLASTIC MATERIAL WITH
C PIECE-WISE LINEAR ISOTROPIC HARDENING IN PLANE STRESS. NESTED
C ITERATION APPROACH.
C
C REFERENCE: Section 9.2.2
C***********************************************************************
C Stop program if not plane stress
      IF(NTYPE.NE.1)CALL ERRPRT('EI0060')
C Initialise state update failure flag
      SUFAIL=.FALSE.
C Set some material properties
      NHARD=IPROPS(3)
C
C Newton-Raphson iteration loop for plane stress enforcement
C
C Set initial guess for elastic trial thickness strain. Use previously
C converged elastic trial thickness strain.
      E33TRL=RSTAVA(4)
C Set axisymmetric state flag
      NTYPAX=3
C Start N-R loop
      DO 20 ITER=1,MXITER
C Set state variables to values at beginning of increment
        DO 10 I=1,MSTRE+1
          RSTAUX(I)=RSTAVA(I)
   10   CONTINUE
C Use axisymmetric integration algorithm to compute stresses
        STRAT(4)=E33TRL
        CALL SUTR
     1(   DGAM       ,IPROPS     ,LALGVA     ,NTYPAX     ,RPROPS     ,
     2    RSTAUX     ,STRAT      ,STRES      )
        SUFAIL=LALGVA(2)
C ...emergency exit in case of failure of state update procedure
	IF(SUFAIL)THEN
	  GOTO 999
	ENDIF
        IFPLAS=LALGVA(1)
C Check plane stress convergence
        EPBAR=RSTAUX(MSTRE+1)
	SIGMAY=PLFUN(EPBAR,NHARD,RPROPS(IPHARD))
	RES=ABS(STRES(4))
C ...use normalised out-of-plane stress
        IF(SIGMAY.NE.R0)RES=RES/SIGMAY
        IF(RES.LE.TOL)THEN
C ...and break N-R loop in case of convergence
          GOTO 30
        ENDIF
C Compute axisymmetric consistent tangent components
        EPFLAG=IFPLAS
        CALL CTTR
     1(   DMATX      ,EPFLAG     ,IPROPS     ,LALGVA     ,NTYPAX     ,
     2    RPROPS     ,RSTAUX     ,STRAT      ,STRES      )
C Apply Newton-Raphson correction to normal elastic trial strain
        D22=DMATX(4,4)
        E33TRL=E33TRL-STRES(4)/D22
   20 CONTINUE
C Emergency exit in case of failure of plane stress enforcement loop
      SUFAIL=.TRUE.
      CALL ERRPRT('WE0026')
      GOTO 999
   30 CONTINUE
C Set state variables to current updated values
      DO 40 I=1,MSTRE+1
        RSTAVA(I)=RSTAUX(I)
   40 CONTINUE
      RSTAVA(4)=E33TRL
C
  999 CONTINUE
      RETURN
      END
