      SUBROUTINE INITIA
     1(   DLAMD      ,IFNEG      ,KUNLD      ,TFACT      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C Hyplas global database
      INCLUDE '../MAXDIM.f'
      INCLUDE '../MATERIAL.f'
      INCLUDE '../ELEMENTS.f'
      INCLUDE '../GLBDBASE.f'
C Local variables and numerical constants
      LOGICAL  LDUMMY
      DATA R0   /
     1     0.0D0/
C***********************************************************************
C INITIALISES SOME ARRAYS AND VARIABLES
C
C REFERENCE: Section 5.3.4
C***********************************************************************
      KUNLD=0
      TFACT=R0
      DLAMD=R0
      IFNEG=1
      DO 10 IELEM=1,NELEM
        IGRUP=IGRPID(IELEM)
        IELIDN=IELTID(IGRUP)
        NEVAB=IELPRP(5,IELIDN)
        CALL RVZERO(ELOAD(1,IELEM),NEVAB)
        CALL RVZERO(ELOADO(1,IELEM),NEVAB)
   10 CONTINUE
      CALL RVZERO(DTANG,NTOTV)    ! Global tangential solution vector (used by Arc-Length method only).
      CALL RVZERO(TDISP,NTOTV)    ! Global vector of (current) total nodal displacements.
      CALL RVZERO(TDISPO,NTOTV)   ! Global vector of total nodal displacements at the previous converged (equilibrium) state.
      CALL RVZERO(DINCR,NTOTV)    ! Global vector of (current) incremental nodal displacements.
      CALL RVZERO(DINCRO,NTOTV)   ! Global vector of incremental nodal displacements at the previous converged (equilibrium) state.
      CALL RVZERO(DITER,NTOTV)    ! Global vector of iterative nodal displacements.
C Arrays from common block STATE
      DO 30 IELEM=1,NELEM
        IGRUP=IGRPID(IELEM)
        IELIDN=IELTID(IGRUP)
        NGAUSP=IELPRP(4,IELIDN)
        DO 20 IGAUSP=1,NGAUSP
C Call material interface routine to initialise material-specific Gauss
C point data
          MODE=0
          CALL MATISW
     1(   MODE       ,NLARGE     ,NTYPE      ,
     2    IPROPS(1,MATTID(IGRUP)),LALGVA(1,IGAUSP,IELEM,1)           ,
     3    LDUMMY     ,RALGVA(1,IGAUSP,IELEM,1)           ,DUMMY      ,
     4    RPROPS(1,MATTID(IGRUP))            ,
     5    RSTAVA(1,IGAUSP,IELEM,1)           ,DUMMY      ,
     6    STRSG(1,IGAUSP,IELEM,1)            ,DUMMY      )
   20   CONTINUE
   30 CONTINUE
      RETURN
      END
