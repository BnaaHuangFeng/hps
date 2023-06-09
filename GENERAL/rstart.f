      SUBROUTINE RSTART
     1(  DFOLD      ,DLENG      ,DLENGO     ,DLENM      ,DLAMD      ,
     2   IFNEG      ,IINCS      ,MXFRON     ,NOUTP      ,TFACT      ,
     3   TFACTO     ,UNSYM      ,RSTINP     ,RSTOUT     ,MODE       ,
     4   INCRST     )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C
      INCLUDE '../MAXDIM.f'
      INCLUDE '../MATERIAL.f'
      INCLUDE '../ELEMENTS.f'
      INCLUDE '../GLBDBASE.f'
C
      DIMENSION NOUTP(5)
      LOGICAL UNSYM
      CHARACTER*256 RSTINP,RSTOUT
C***********************************************************************
C WRITE DATA TO OUTPUT RE-START FILE AND READ DATA FROM INPUT RE-START
C FILE
C
C REFERENCE: Figures 5.1-3
C***********************************************************************
 1000 FORMAT(//15X,
     1       'Writing converged results to re-start file ...'//)
 1010 FORMAT(////15X,
     1       'Reading data from input re-start file ...')
C
C
      IF(MODE.EQ.1)THEN
C
C Writing (output) mode
C =====================
C
C Check re-start output flag
C
        IF(NOUTP(5).EQ.0)GOTO 999
        IF(NOUTP(5).NE.0.AND.NALGO.LT.0)THEN
          IF(MOD(IINCS,NOUTP(5)).NE.0)GOTO 999
        ENDIF
C
        INCRST=IINCS
        WRITE(*,1000)
        WRITE(16,1000)
        OPEN(UNIT=17,FILE=RSTOUT,STATUS='UNKNOWN',FORM='UNFORMATTED')
C
C Write some global variables first
C ---------------------------------
        WRITE(17)DFOLD,DLENG,DLENGO,DLENM,DLAMD,IFNEG,IINCS,MXFRON,
     1           TFACT,TFACTO,UNSYM
C
C Then write all common blocks 
C ----------------------------
C COMMON/CONTRL/
        WRITE(17)
     1    NDOFN      ,NELEM      ,NGRUP      ,NPOIN      ,NTOTV      ,
     2    NVFIX      ,NTYPE      ,NALGO      ,NARCL      ,NDIME      ,
     3    NLARGE     ,NAXIS
C COMMON/CORE  /
        WRITE(17)
     1    FIXED                        ,STFOR                        ,
     2    TOFOR                        ,ELOAD                        ,
     3    ELOADO                       ,RLOAD
C COMMON/MATERL/
        WRITE(17)
     1    RPROPS              ,IPROPS
C COMMON/MESH  /
        WRITE(17)
     1    ANGLE              ,COORD              ,PRESC              ,
     2    IELTID             ,IFFIX              ,IGRPID             ,
     3    LNODS              ,MASTER             ,MATTID             ,
     4    NOFIX              ,NVALEN
C COMMON/ELEMEN/
        WRITE(17)
     1    RELPRP              ,IELPRP
C COMMON/RESULT/
        WRITE(17)
     1    DITER              ,DINCR              ,DINCRO             ,
     2    DTANG              ,TDISP              ,TDISPO             ,
     3    TREAC
C COMMON/STATE /
        WRITE(17)
     1    RALGVA                       ,RSTAVA                       ,
     2    STRSG                        ,THKGP                        ,
     3    LALGVA
C
C
      ELSEIF(MODE.EQ.0)THEN
C
C Reading (input) mode
C ====================
C
        WRITE(*,1010)
        OPEN(UNIT=17,FILE=RSTINP,STATUS='OLD',FORM='UNFORMATTED')
C
C Read some global variables first
C --------------------------------
        READ(17)DFOLD,DLENG,DLENGO,DLENM,DLAMD,IFNEG,IINCS,MXFRON,
     1          TFACT,TFACTO,UNSYM
C
C Then read all common blocks 
C ---------------------------
C COMMON/CONTRL/
        READ(17)
     1    NDOFN      ,NELEM      ,NGRUP      ,NPOIN      ,NTOTV      ,
     2    NVFIX      ,NTYPE      ,NALGO      ,NARCL      ,NDIME      ,
     3    NLARGE     ,NAXIS
C COMMON/CORE  /
        READ(17)
     1    FIXED                        ,STFOR                        ,
     2    TOFOR                        ,ELOAD                        ,
     3    ELOADO                       ,RLOAD
C COMMON/MATERL/
        READ(17)
     1    RPROPS              ,IPROPS
C COMMON/MESH  /
        READ(17)
     1    ANGLE              ,COORD              ,PRESC              ,
     2    IELTID             ,IFFIX              ,IGRPID             ,
     3    LNODS              ,MASTER             ,MATTID             ,
     4    NOFIX              ,NVALEN
C COMMON/ELEMEN/
        READ(17)
     1    RELPRP              ,IELPRP
C COMMON/RESULT/
        READ(17)
     1    DITER              ,DINCR              ,DINCRO             ,
     2    DTANG              ,TDISP              ,TDISPO             ,
     3    TREAC
C COMMON/STATE /
        READ(17)
     1    RALGVA                       ,RSTAVA                       ,
     2    STRSG                        ,THKGP                        ,
     3    LALGVA
C
      ENDIF
C
      CLOSE(UNIT=17,STATUS='KEEP')
C
  999 CONTINUE
      RETURN
      END
