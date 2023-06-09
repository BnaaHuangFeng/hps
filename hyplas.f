C***********************************************************************
C----------------------------------------------------------------------*
C|                                                                    |*
C|                                                                    |*
C|    H Y P L A S    version 2.0                                      |*
C|                                                                    |*
C|                                                                    |*
C|    Program for implicit small and large strain                     |*
C|    finite element analysis of hyperelastic and                     |*
C|    elastoplastic solids.                                           |*
C|                                                                    |*
C|                                                                    |*
C|    Copyright (c) 1996-2008  EA de Souza Neto, D Peric & DRJ Owen   |*
C|                             Civil and Computational Eng. Centre    |*
C|                             School of Engineering                  |*
C|                             Swansea University                     |*
C|                                                                    |*
C|                                                                    |*
C|    This program is a companion to the textbook:                    |*
C|    EA de Souza Neto, D Peric & DRJ Owen. Computational             |*
C|    Methods for Plasticity: Theory and Applications. Wiley,         |*
C|    Chichester, 2008.                                               |*
C|                                                                    |*
C|                                                                    |*
C|    Please send BUG REPORTS to                                      |*
C|                                                                    |*
C|                        hyplas_v2.0@live.co.uk                      |*
C|                                                                    |*
C|    NOTE: Messages sent to the authors' personal email addresses    |*
C|          will NOT be answered.                                     |*
C|                                                                    |*
C----------------------------------------------------------------------*
C***********************************************************************
C----------------------------------------------------------------------*
C                                                                      *
C     COPYRIGHT STATEMENT                                              *
C                                                                      *
C     You may only use this program for your own private purposes.     *
C     You are not allowed, in any circumstances, to distribute this    *
C     program (including its source code, executable and any other     *
C     files related to it, either in their original version or any     *
C     modifications introduced by you, the authors or any other party) *
C     in whole or in part, either freely or otherwise, in any medium,  *
C     without the prior written consent of the copyright holders.      *
C                                                                      *
C     DISCLAIMER                                                       *
C                                                                      *
C     This program (including its source code, executable and any      *
C     other files related to it) is provided "as is" without warranty  *
C     of any kind, either expressed or implied, including, but not     *
C     limited to, any implied warranties of fitness for purpose.       *
C     In particular, THIS PROGRAM IS BY NO MEANS GUARANTEED TO BE FREE *
C     FROM ERRORS.                                                     *
C     The results produced by this program are in no way garanteed to  *
C     be fit for any purpose.                                          *
C     This program (or any modification incorporated to it by you, the *
C     authors or any other party) will be used entirely at your own    *
C     risk.                                                            *
C     Under no circumstances will the authors/copyright holders be     *
C     liable to anyone for damages, including any general, special,    *
C     incidental or consequential damages arising from the use or      *
C     inability to use the program (including, but not limited to,     *
C     loss or corruption of data, failure of the program to operate in *
C     any particular way as well as damages arising from the use of    *
C     any results produced by the program for any purpose).            *
C                                                                      *
C     CONDITIONS OF USE                                                *
C                                                                      *
C     You may only use this program if you fully understand and agree  *
C     with the terms of the above disclaimer. You must not use this    *
C     program if you do not agree with or do not understand (fully or  *
C     in part) these conditions of use.                                *
C                                                                      *
C----------------------------------------------------------------------*
C***********************************************************************
C
C
      PROGRAM HYPLAS
C
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C
C Hyplas database: Global parameters and common blocks
      INCLUDE 'MAXDIM.f'
      INCLUDE 'MATERIAL.f'
      INCLUDE 'ELEMENTS.f'
      INCLUDE 'GLBDBASE.f'
C Common block of arrays used only by the frontal solver
      COMMON / FRONTA /
     1    EQRHS(MTOTV,2)     ,EQROW(MFRON,MTOTV) ,EQCOL(MFRON,MTOTV) ,
     2    DECAY(MFRON)       ,GLOAD(MFRON,2)     ,VECRV(MFRON,2)     ,
     3    LOCEL(MEVAB,MELEM) ,NACVA(MFRON,MELEM) ,NAMEV(MTOTV)       ,
     4    NDEST(MEVAB,MELEM) ,NPIVO(MTOTV)       ,NFRON(MELEM)
C Logical control flags for main program
      LOGICAL
     1    CONVRG     ,DIVERG     ,INCCUT     ,RSTRT      ,UNSYM
C File names
      CHARACTER*256
     1    DATFIL     ,RESFIL     ,RSTINP     ,RSTOUT
C Increment control arrays for main program
      DIMENSION
     1    DFACTV(MINCS)      ,DFSUB(MSUBIN)      ,MITERV(MINCS)      ,
     2    NOUTP(5)           ,NOUTPV(5,MINCS)    ,TOLERV(MINCS)
C Numerical constants
      PARAMETER
     1(   R0=0.0D0   ,RP5=0.5D0  ,RP7=0.7D0  )
C***********************************************************************
C
 1000 FORMAT(//20X,' H Y P L A S   ANALYSIS  RESULTS'/
     1         20X,'================================='/)
 1010 FORMAT(
     1 7X,' _________________________________________________________ '/
     2 7X,'|                                                         |'/
     3 7X,'| Program compiled with the dimensioning parameters       |'/
     4 7X,'|_________________________________________________________|'/
     5 7X,'|                                                 |       |'/
     6 7X,'| Maximum number of elements              (MELEM) |',I6,' |'/
     7 7X,'| Maximum frontwidth allowed in solution  (MFRON) |',I6,' |'/
     8 7X,'| Maximum number of element groups        (MGRUP) |',I6,' |'/
     9 7X,'| Maximum number of load increments       (MINCS) |',I6,' |'/
     O 7X,'| Maximum number of nodal points          (MPOIN) |',I6,' |'/
     1 7X,'| Size of increment cutting stack array   (MSUBIN)|',I6,' |'/
     2 7X,'| Max. number of nodes with prescr.displ. (MVFIV) |',I6,' |'/
     3 7X,'|_________________________________________________|_______|'/
     4                                                                 )
 1015 FORMAT(/,' Data file name:'/
     1         ' ==============='//,1X,A/)
 1020 FORMAT(////15X,'Reading data...')
 1030 FORMAT(////15X,'H Y P L A S   ANALYSIS starting...'/)
 1050 FORMAT(////
     1' INCREMENT NUMBER',I5,19X,'TOTAL LOAD FACTOR =',G15.6/
     2' --------------------------------------------------------------',
     3'------------'/
     4 4X,'         ',13X,'relative residual',13X,'maximum residual'/
     5 4X,'iteration',13X,'    norm (%)     ',13X,'     norm       '/
     6' --------------------------------------------------------------',
     7'------------')
 1055 FORMAT(////
     1' INCREMENT NUMBER',I5,19X,'       ARC LENGTH =',G15.6/
     2' --------------------------------------------------------------',
     3'------------'/
     4 4X,'         ',6X,'relative residual',4X,'maximum residual',
     5 5X,'   total'/
     6 4X,'iteration',6X,'    norm (%)     ',4X,'     norm       ',
     7 5X,'load factor'/
     8' --------------------------------------------------------------',
     9'------------')
 1060 FORMAT(
     1' --------------------------------------------------------------',
     2'------------')
 1063 FORMAT(34X,'INCREMENTAL LOAD FACTOR =',G15.6)
 1065 FORMAT(30X,'CONVERGED TOTAL LOAD FACTOR =',G15.6)
 1067 FORMAT(24X,'CONVERGED INCREMENTAL LOAD FACTOR =',G15.6)
 1070 FORMAT(/////15X,'Program  H Y P L A S  successfully completed.')
 1080 FORMAT(///15X,'Data file name was ------> ',A)
 1090 FORMAT(// 15X,'Results file name is ----> ',A///)
 1095 FORMAT(   15X,'Re-start file name is ---> ',A//
     1          15X,'Last increment written -->',I5///)
 1040 FORMAT(//' Iterations not converged.')
 1100 FORMAT(//' Iterations diverging.')
 1110 FORMAT(/ ' Re-trying with reduced increment size...'/)
 1120 FORMAT(/ ' Re-trying with reduced arc length...'/)
C
C
C
C Start up. Read data, initialise variables, etc...
C
C REFERENCE: Flowchart of Figure 5.1
C
C *************************************************
C
C Send greeting message to standard output
      CALL GREET
C Read names and open relevant files
      CALL FOPEN(   DATFIL     ,RESFIL     ,RSTOUT     )
C Echo dimensioning parameters defined in file MAXDIM.f
      WRITE(16,1000)
      WRITE(16,1010)MELEM,MFRON,MGRUP,MINCS,MPOIN,MSUBIN,MVFIX
C Echo data file name
      I=INDEX(DATFIL,' ')-1
      WRITE(16,1015)DATFIL(1:I)
C
C Read relevant data from input data/re-start file
C ------------------------------------------------
C Check if main data is to be read from the input data file or from an
C input re-start file
      CALL RSTCHK(  RSTINP     ,RSTRT      )
      WRITE(*,1020)
C
      IF(RSTRT)THEN
C Re-start mode: Read main data from input re-start file
         CALL RSTART
     1(  DFOLD      ,DLENG      ,DLENGO     ,DLENM      ,DLAMD      ,
     2   IFNEG      ,IINCS      ,MXFRON     ,NOUTP      ,TFACT      ,
     3   TFACTO     ,UNSYM      ,RSTINP     ,RSTOUT     ,0          ,
     4   IDUMMY     )
      ELSE
C Not re-start mode: Read main data from input data file
C ...read most of the problem data
        CALL INDATA(MXFRON ,UNSYM)
C ...read and evaluate the applied external loads
        CALL INLOAD
      ENDIF
C
C For any mode: Read load incrementation data from input data file
      CALL ININCR
     1(   DFACT      ,DLENP      ,FSTOP      ,ITDES      ,MINCS      ,
     2    MITER      ,NALGO      ,NINCS      ,TOLER      ,
     3    DFACTV     ,MITERV     ,NOUTP      ,NOUTPV     ,TOLERV     )
C
C Initialise some variables and arrays if not in re-start mode
C ------------------------------------------------------------
      INCRST=0
      IF(.NOT.RSTRT)THEN
        CALL INITIA
     1(   DLAMD      ,IFNEG      ,KUNLD      ,TFACT      )
      ENDIF
C
C
C
C Start incremental finite element analysis...
C ********************************************
C
      WRITE(*,1030)
C
C=======================================================================
C                                                                      |
C                   Start loop over load increments                    |
C                                                                      |
C REFERENCE: Chapter 4 (Boxes 4.1-4) of the companion textbook.        |
C            Section 5.4.                                              |
C            The load incrementation loops carried out here are those  |
C            of the Flowcharts of Figures 5.2-3.                       |
C                                                                      |
C=======================================================================
C
      IF(.NOT.RSTRT)IINCS=0
C
      DO 50 ICOUNT=1,NINCS
C
        IPSUB=1
        IF(NALGO.GT.0)THEN
          DFSUB(1)=DFACTV(ICOUNT)
          TOLER=TOLERV(ICOUNT)
          MITER=MITERV(ICOUNT)
          NOUTP(1)=NOUTPV(1,ICOUNT)
          NOUTP(2)=NOUTPV(2,ICOUNT)
          NOUTP(3)=NOUTPV(3,ICOUNT)
          NOUTP(4)=NOUTPV(4,ICOUNT)
          NOUTP(5)=NOUTPV(5,ICOUNT)
        ENDIF
C
C Reset converged problem variables
C ELOAD0=ELOAD, DINCR0=DINCR, TDISP0=TDISP, DITER=0, DINCR=0
C RSTAVA(..,2)=RSTAVA(..,1), SRESG(..,2)=SRESG(..,1)
C ---------------------------------
        CALL SWITCH( 1 )
C
   10   CONTINUE
C
C Update increment counter
C ------------------------
        IINCS=IINCS+1
C
C For fixed increments option only: Increment external load according
C to user-prescribed incremental proportional load factor
C ELOAD(IEVAB,IELEM)=ELOAD(IEVAB,IELEM)+RLOAD(IEVAB,IELEM)*DFACT
C Change ELOAD and FIXED proportionally.
C -------------------------------------------------------------------
        IF(NALGO.GT.0)THEN
          DFACT=DFSUB(IPSUB)
          CALL INCREM
     1(   IINCS      ,TFACT      ,TOLER      ,MITER      ,NOUTP      ,
     2    DFACT      ,DFOLD      ,KUNLD      )
        ENDIF
C
C______________________________________________________________________
C                                                                      |
C             Start loop over equilibrium iterations                   |
C______________________________________________________________________|
C
        DO 20 IITER=1,MITER
C
C Select solution alorithm variable KRESL
C Zero FIXED if not first iteration
          CALL ALGOR(IINCS ,IITER ,KRESL ,KUNLD )
C
          IF(NALGO.LT.0)THEN
C Set up prescribed displacements for tangential solution for the
C arc-length method
            CALL TANGEN
          ENDIF
C
C Assemble stiffness matrix and solve for iterative displacements
C (tangential solution for the arc-length method) the linearised system
C of discretised equilibrium equations using the frontal algorithm
C ---------------------------------------------------------------------
          CALL FRONT
     1(   IITER      ,KRESL      ,IFNEG      ,KUNLD      ,MXFRON     ,
     2    UNSYM      ,INCCUT     )
C After FRONT, DITER,FIXED will change, but DINCR, TDISP won't change.
C FIXED isn't prescribed displacement any more.
          IF(INCCUT)THEN
C System solution failed due to zero pivot: break equilibrium iteration
C loop and activate increment cutting
            GOTO 30
          ENDIF
C
C For Arc-Length method only: Compute iterative displacement according
C to the arc-length constraint and update the incremental and total
C load factors
C --------------------------------------------------------------------
          IF(NALGO.LT.0)THEN
            CALL ARCLEN
     1(   DFACT      ,DLAMD      ,DLENG      ,DLENM      ,DLENP      ,
     2    IFNEG      ,IINCS      ,IITER      ,INCCUT     ,TFACT      )
C
            IF(INCCUT)THEN
C No real roots for arc-length constraint equation: break equilibrium
C iteration loop and activate increment cutting
              GOTO 30
            ENDIF
          ENDIF
C
C Update incremental DINCR(ITOTV) and total displacements TDISP(ITOTV).
C Also update nodal coordinates COORD(IDOFN,IPOIN,1) for large deformation analyses
C -------------------------------------------------------------
          CALL UPCONF
C
C Re-set converged load factors and print out increment information
C -----------------------------------------------------------------
          IF(IITER.EQ.1)THEN
            IF(IINCS.EQ.1)THEN
C Re-set previous converged load factors/arc-length
              IF(NALGO.LT.0)DLENGO=DLENG
              DFACTO=DFACT
              TFACTO=R0
            ENDIF
            IF(NALGO.GT.0)THEN
C Fixed increments option: print current total load factor
              WRITE(*,1050) IINCS,TFACT
              WRITE(16,1050)IINCS,TFACT
            ELSE
C Arc-length: print current arc-length
              WRITE(*,1055) IINCS,DLENG
              WRITE(16,1055)IINCS,DLENG
            ENDIF
            ENDIF
C
C Re-set relevant problem variables to last converged solution
C DITER,DINCR,TDISP,RALGVA not changed
C ------------------------------------------------------------
          CALL SWITCH( 2 )
C
C Update problem variables (stress and other state variables) and
C evaluate internal force vectors of all elements
C CALL RVZERO(ELOAD,NEVAB) in ifstd2
C After INTFOR,ELOAD is element's internal force rather than out-of-balance force
C ELOAD, RSTAVA, STRSG, RALGVA change
C ---------------------------------------------------------------
          CALL INTFOR( INCCUT )
C
          IF(INCCUT)THEN
C Internal force calculation failed: break equilibrium iteration loop
C and activate load increment cutting
            GOTO 30
          ENDIF
C
C Assemble internal and external global force vectors, reactions,
C compute residual and check for convergence
C STFOR, TOFOR, ELOAD change.
C ELOAD becomes out-of-balance force.
C ---------------------------------------------------------------
          CALL CONVER(CONVRG,DIVERG,IITER,TOLER,TFACT)
C
          ITACT=IITER
C
          IF(CONVRG)THEN
C Iterations have converged: break equilibrium iteration loop and go to
C next load increment
            WRITE(*,1060)
            WRITE(16,1060)
            IF(NALGO.GT.0)THEN
              WRITE(*,1063) DFACT
              WRITE(16,1063)DFACT
            ELSE
              WRITE(*,1065) TFACT
              WRITE(*,1067) DFACT
              WRITE(16,1065)TFACT
              WRITE(16,1067)DFACT
            ENDIF
            WRITE(*,1060)
            WRITE(16,1060)
            GOTO 40
          ELSEIF(DIVERG)THEN
C Iterations are diverging: break equilibrium iteration loop and
C activate load increment cutting
            WRITE(16,1100)
            WRITE(*,1100)
            GOTO 30
          ENDIF
C
   20   CONTINUE
C______________________________________________________________________ 
C                                                                      |
C                End loop over equilibrium iterations                  |
C______________________________________________________________________|
C
C Newton-Raphson procedure did not converge within the prescribed
C maximum number of iterations !!
C Print corresponding message and proceed to increment cutting
C
        WRITE(16,1040)
        WRITE(*,1040)
C
C
C
   30   CONTINUE
C
C
C Activate increment cutting
C
C REFERENCE: Section 5.4.3
C --------------------------
C
        IF(NALGO.GT.0)THEN
C For fixed increments option: split current load increment into two
C equally sized sub-increments
          WRITE(16,1110)
          WRITE(*,1110)
          IF(IPSUB.EQ.MSUBIN)THEN
C abort program if maximum permissible number of consecutive increment
C cuts has been exceeded (i.e. sub-increment stack array DFSUB is full)
            CALL ERRPRT('EE0002')
          ENDIF
          DFSUB(IPSUB)  =DFSUB(IPSUB)*RP5
          DFSUB(IPSUB+1)=DFSUB(IPSUB)
          IPSUB=IPSUB+1
        ELSE
C For arc-length method: reduce the arc-length
          WRITE(16,1120)
          WRITE(*,1120)
          IF(IINCS.EQ.1)THEN
            DFACT=DFACTO*RP7
            DFACTO=DFACT
          ELSE
            DLENG=DLENGO*RP7
            DLENGO=DLENG
          ENDIF
        ENDIF
C Switch relevant variables to last converged values (in load increment
C cutting mode) before re-trying with reduced load increment/arc-length
        TFACT=TFACTO
        CALL SWITCH( 3 )
        IINCS=IINCS-1
        GOTO 10
C
C
C
   40   CONTINUE
C
C Newton-Raphson iterations converged for the current load increment
C ------------------------------------------------------------------
C Reset some converged parameters
        DLENGO=DLENG
        TFACTO=TFACT
        IF(NALGO.GT.0)THEN
C Fixed increments option: update pointer to sub-increments stack array
          IPSUB=IPSUB-1
        ELSE
C Arc-length method: update arc-length according to the desired number
C of iterations for convergence and the actual number of iterations
C needed for convergence in the previous load step
          CALL LENGTH(DLENG ,DLENM ,ITACT ,ITDES )
        ENDIF
C
C Output results if required
C REFERENCE: Section 5.4.7
C
        CALL OUTPUT(TFACT,IINCS,IITER,NOUTP)
        IF((NALGO.GT.0.AND.IPSUB.EQ.0).OR.(NALGO.LT.0))THEN
          CALL RSTART
     1(  DFOLD      ,DLENG      ,DLENGO     ,DLENM      ,DLAMD      ,
     2   IFNEG      ,IINCS      ,MXFRON     ,NOUTP      ,TFACT      ,
     3   TFACTO     ,UNSYM      ,RSTINP     ,RSTOUT     ,1          ,
     4   INCRST     )
        ELSEIF(NALGO.GT.0.AND.IPSUB.NE.0)THEN
          CALL SWITCH( 1 )
          GOTO 10
        ENDIF
        IF(NALGO.LT.0.AND.FSTOP.NE.R0.AND.TFACT.GT.FSTOP)THEN
C Arc-length only: Break loop over increments and stop if maximum
C prescribed load factor has been exceeded
          GOTO 60
        ENDIF
C
C
   50 CONTINUE
C
C=======================================================================
C                                                                      |
C                   End loop over load increments                      |
C                                                                      |
C=======================================================================
C
   60 CONTINUE
C
C
C
C Exit HYPLAS
C ***********
C
C Close files before exit
      CALL FCLOSE
C Echo file names back to standard output and stop
      WRITE(*,1070)
      I=INDEX(RESFIL,' ')-1
      WRITE(*,1080)DATFIL(1:I)
      WRITE(*,1090)RESFIL(1:I)
      IF(INCRST.NE.0)THEN
        WRITE(*,1095)RSTOUT(1:I),INCRST
      ENDIF
      STOP ' '
      END
