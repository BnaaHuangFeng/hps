      SUBROUTINE ARCLEN
     1(   DFACT      ,DLAMD      ,DLENG      ,DLENM      ,DLENP      ,
     2    IFNEG      ,IINCS      ,IITER      ,INCCUT     ,TFACT      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C Hyplas database
      INCLUDE '../MAXDIM.f'
      INCLUDE '../MATERIAL.f'
      INCLUDE '../ELEMENTS.f'
      INCLUDE '../GLBDBASE.f'
C Arguments
      LOGICAL  INCCUT
C Local logical flags
      LOGICAL  ONEROO ,TWOROO
C Local numerical constants
      PARAMETER
     1(   R0=0.0D0   ,R1=1.0D0   ,R2=2.0D0   )
C***********************************************************************
C SOLVE ARC-LENGTH EQUATIONS AND UPDATE LOAD FACTOR AND VECTOR OF
C ITERATIVE DISPLACEMENTS ACCONDINGLY
C
C REFERENCE: Box 4.4, items (iv)-(vi)
C            Section 4.4
C***********************************************************************
C
      IF(IITER.EQ.1)THEN
C
C For first iteration only
C ========================
C
C evaluate length of tangential solution
        APARM=SCAPRD(DTANG,DTANG,NTOTV)
C
C ...and compute arc-length/load increment factor
        IF(IINCS.EQ.1)THEN
C for the first iteration of the first increment set up the arc-length
C constraint, DLENG, so as to match the user-prescribed initial load
C increment factor, DFACT
          SIGNUM=DBLE(IFNEG)
          DFACT=SIGNUM*DFACT
          DLENG=SQRT(DFACT*DFACT*APARM)
C set up the maximum allowed arc-length according to the specified
C maximum arc-length parameter, DLENP
          DLENM=DLENP*DLENG
        ELSE
C Predictor solution: for the first iteration of other increments
C compute the load increment factor, DFACT, corresponding to the
C arc-length constraint, DLENG, of the current increment
          IF(NARCL.EQ.1)THEN
C Use stiffness determinant sign criterion
            SIGNUM=DBLE(IFNEG)
          ELSEIF(NARCL.EQ.2)THEN
C Use secant path criterion (sign of the internal product between the
C previous converged displacement increment and the current tangential
C solution)
            SCAL=SCAPRD(DINCRO,DTANG,NTOTV)
            IF(SCAL.GT.R0)THEN
              SIGNUM=R1
            ELSE
              SIGNUM=-R1
            ENDIF
          ENDIF
          DFACT=SIGNUM*ABS(DLENG/SQRT(APARM))
        ENDIF
C update current total load factor
        DLAMD=DFACT
        TFACT=TFACT+DLAMD
C
      ELSE
C
C For iterations other than the first: Solve the cylindrical arc-length
C                                      constraint equation to update
C                                      the load factor 
C =====================================================================
C
C Compute the coefficients of the arc-length constraint equation
        APARM=R0
        BPARM=R0
        CPARM=R0
        DO 10 ITOTV=1,NTOTV
C Here, DTANG is the current tangential solution, DINCR is the last
C incremental displacement (at the end of the previous iteration) and
C DITER is the current iterative displacement resulting from the
C standard load controlled N-R procedure.
          APARM=APARM+DTANG(ITOTV)*DTANG(ITOTV)
          BPARM=BPARM+R2*(DINCR(ITOTV)+DITER(ITOTV))*DTANG(ITOTV)
          CPARM=CPARM+(DINCR(ITOTV)+DITER(ITOTV))*
     1                (DINCR(ITOTV)+DITER(ITOTV))
   10   CONTINUE
        CPARM=CPARM-(DLENG*DLENG)
C Solve the quadratic equation and decide which root to use
        CALL SOLQUA
     1(   APARM      ,BPARM      ,CPARM      ,ONEROO     ,TWOROO     ,
     2    DLAM1      ,DLAM2      )
        IF(TWOROO)THEN
C Two real roots: Choose the solution that renders minimum angle
C (maximum cosine) between the incremental displacements at the end
C of the previous iteration and the current iteration
          COS1=R0
          COS2=R0
          DO 20 ITOTV=1,NTOTV
            COS1=COS1+(DINCR(ITOTV)+DITER(ITOTV)+DLAM1*DTANG(ITOTV))*
     1            DINCR(ITOTV)
            COS2=COS2+(DINCR(ITOTV)+DITER(ITOTV)+DLAM2*DTANG(ITOTV))*
     1            DINCR(ITOTV)
   20     CONTINUE
          IF(COS1.GT.COS2)THEN
            DLAMD=DLAM1 
          ELSE
            DLAMD=DLAM2
          ENDIF
        ELSEIF(ONEROO)THEN
C There is only one root to the equation
          DLAMD=DLAM1
        ELSE
C There are no real roots: issue warning message and request main
C program to activate increment cutting
          CALL ERRPRT('WE0012')
          INCCUT=.TRUE.
          GOTO 999
        ENDIF
C Update current incremental and total load factors
        DFACT=DFACT+DLAMD
        TFACT=TFACT+DLAMD
C
      ENDIF
C
C For all iterations: compute actual iterative displacement using
C the arc-length expression
C ===============================================================
C
      DO 30 ITOTV=1,NTOTV
        DITER(ITOTV)=DITER(ITOTV)+DLAMD*DTANG(ITOTV)
   30 CONTINUE
C
  999 CONTINUE
      RETURN
      END
