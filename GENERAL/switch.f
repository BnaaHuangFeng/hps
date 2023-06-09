      SUBROUTINE SWITCH( MODE )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C Hyplas database
      INCLUDE '../MAXDIM.f'
      INCLUDE '../MATERIAL.f'
      INCLUDE '../ELEMENTS.f'
      INCLUDE '../GLBDBASE.f'
C
      DATA R0 /0.0D0 /
C***********************************************************************
C SWITCHES STATE VARIABLES VALUES AND COORDINATES BETWEEN CURRENT
C AND LAST CONVERGED SOLUTION DURING GLOBAL EQUILIBRIUM ITERATIONS
C
C    MODE=1 -> Assigns current values of the state variables to
C              converged solution (when the current iteration
C              satisfies the convergence criterion).
C                            -----------
C
C    MODE=2 -> Assigns the last converged solution to current state
C              variables values (when a new iteration is required by
C              the iterative process).  -------------
C
C
C    MODE=3 -> Assigns the last converged solution to current state
C              variables values (when increment cutting is required).
C                                     -----------------
C
C NOTE THAT FOR GAUSS POINT THICKNESS THE INITIAL VALUE IS NEEDED.
C FOR THIS VARIABLE, APPROPRIATE ASSIGNEMENTS ARE MADE WHICH DIFFER
C FROM THE CONVENTIONAL ONES
C
C REFERENCE: Section 5.4.6
C            Figure 5.4
C***********************************************************************
      IF(MODE.EQ.1)THEN
        NTI=1
        NTO=2
        NTITHK=1
        NTOTHK=2
      ELSEIF(MODE.EQ.2.OR.MODE.EQ.3)THEN
        NTI=2
        NTO=1
        NTITHK=0
        NTOTHK=1
      ENDIF
C
C
C Set stress, other state variables, thickness and algorithmic variables
C ======================================================================
C
      DO 20 IELEM=1,NELEM
        IGRUP =IGRPID(IELEM)
        IELIDN=IELTID(IGRUP)
        NGAUSP=IELPRP(4,IELIDN)
        DO 10 IGAUSP=1,NGAUSP
C
C Call material interface to switch Gauss point data (state and
C algorithmic variables)
           CALL MATISW
     1(   MODE       ,NLARGE     ,NTYPE      ,IPROPS(1,MATTID(IGRUP)),
     2    LALGVA(1,IGAUSP,IELEM,1)     ,LALGVA(1,IGAUSP,IELEM,2)     ,
     3    RALGVA(1,IGAUSP,IELEM,1)     ,RALGVA(1,IGAUSP,IELEM,2)     ,
     4    RPROPS(1,MATTID(IGRUP))      ,RSTAVA(1,IGAUSP,IELEM,1)     ,
     5    RSTAVA(1,IGAUSP,IELEM,2)     ,STRSG(1,IGAUSP,IELEM,1)      ,
     6    STRSG(1,IGAUSP,IELEM,2)      )
C
C
C thickness (for large strain analysis in plane stress only)
C
          IF(NLARGE.EQ.1.AND.NTYPE.EQ.1)THEN
            THKGP(IGAUSP,IELEM,NTOTHK)=THKGP(IGAUSP,IELEM,NTITHK)
          ENDIF
C
   10   CONTINUE
   20 CONTINUE
C
C
C Set nodal coordinates (for large strain analysis only)
C ======================================================
C
      IF(NLARGE.EQ.1.AND.(MODE.EQ.1.OR.MODE.EQ.3))THEN
        DO 40 IPOIN=1,NPOIN
          DO 30 IDIME=1,NDIME
            COORD(IDIME,IPOIN,NTO)=COORD(IDIME,IPOIN,NTI)
   30     CONTINUE
   40   CONTINUE
      ENDIF
C
C Set converged ELOAD and displacements
C =====================================
C
      IF(MODE.EQ.1)THEN
        DO 50 ITOTV=1,NTOTV
          TDISPO(ITOTV)=TDISP(ITOTV)
          DINCRO(ITOTV)=DINCR(ITOTV)
          DINCR(ITOTV)=R0
          DITER(ITOTV)=R0
   50   CONTINUE
        DO 70 IELEM=1,NELEM
          IGRUP =IGRPID(IELEM)
          IELIDN=IELTID(IGRUP)
          NEVAB =IELPRP(5,IELIDN)
          DO 60 IEVAB=1,NEVAB
            ELOADO(IEVAB,IELEM)=ELOAD(IEVAB,IELEM)
   60     CONTINUE
   70   CONTINUE
      ENDIF
C
C Reset displacements, logical algorithmic variables and
C ELOAD to last converged values (for increment cutting mode only)
C ================================================================
C
      IF(MODE.EQ.3)THEN
        DO 80 ITOTV=1,NTOTV
          TDISP(ITOTV)=TDISPO(ITOTV)
          DINCR(ITOTV)=R0
          DITER(ITOTV)=R0
   80   CONTINUE
        DO 100 IELEM=1,NELEM
          IGRUP =IGRPID(IELEM)
          IELIDN=IELTID(IGRUP)
          NEVAB =IELPRP(5,IELIDN)
          DO 90 IEVAB=1,NEVAB
            ELOAD(IEVAB,IELEM)=ELOADO(IEVAB,IELEM)
   90     CONTINUE
  100   CONTINUE
      ENDIF
C
      RETURN
      END
