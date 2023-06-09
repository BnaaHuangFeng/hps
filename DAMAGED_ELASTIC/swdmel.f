      SUBROUTINE SWDMEL
     1(   MODE       ,NTYPE      ,RSTAVC     ,RSTAVL     ,STRESC     ,
     2    STRESL     )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C Arguments
      DIMENSION
     1    RSTAVC(*)          ,RSTAVL(*)          ,STRESC(*)          ,
     2    STRESL(*)
C***********************************************************************
C INITIALISE/SWITCH DATA FOR THE DAMAGED ELASTIC MATERIAL MODEL WITH
C PARTIAL MICROCRACK/VOID CLOSURE EFFECTS
C
C    MODE=0:   Initialises the relevant data.
C
C    MODE=1:   Assigns current values of the state variables to
C              converged solution (when the current iteration
C              satisfies the convergence criterion).
C
C    MODE=2:   Assigns the last converged solution to current state
C              variables values (when a new iteration is required by
C              the iterative process).
C
C    MODE=3:   Assigns the last converged solution to current state
C              variables values (when increment cutting is required).
C***********************************************************************
C
      IF(NTYPE.EQ.2.OR.NTYPE.EQ.3)THEN
        NSTRE=4
      ELSE
        CALL ERRPRT('EI0054')
      ENDIF
C
      IF(MODE.EQ.0)THEN
C Initialisation mode
C ===================
        CALL RVZERO(STRESC,NSTRE)
C RSTAVA stores the infinitesimal egineering strain tensor components
C (logarithmic strains in large strains)
        CALL RVZERO(RSTAVC,NSTRE)
      ELSE
C Switching mode
C ==============
        IF(MODE.EQ.1)THEN
          DO 10 ISTRE=1,NSTRE
            STRESL(ISTRE)=STRESC(ISTRE)
            RSTAVL(ISTRE)=RSTAVC(ISTRE)
   10     CONTINUE
        ELSEIF(MODE.EQ.2.OR.MODE.EQ.3)THEN
          DO 20 ISTRE=1,NSTRE
            STRESC(ISTRE)=STRESL(ISTRE)
            RSTAVC(ISTRE)=RSTAVL(ISTRE)
   20     CONTINUE
        ENDIF
      ENDIF
      RETURN
      END
