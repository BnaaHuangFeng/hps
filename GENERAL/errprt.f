      SUBROUTINE ERRPRT(ERRCOD)
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      LOGICAL       AVAIL ,FOUND
      CHARACTER*6   ERRCOD
      CHARACTER*22  HEADER
      CHARACTER*72  INLINE
      CHARACTER*256 HYPLASHOME
      DIMENSION IWBEG(128), IWEND(128)
C***********************************************************************
C PRINTS (TO THE STANDARD OUTPUT AND RESULTS FILE) MOST ERROR/WARNING
C MESSAGES OF HYPLAS.
C THE ARGUMENT "ERRCOD" CONTAINS THE ERROR/WARNING MESSAGE CODE. THE
C TEXT OF THE MESSAGE ASSOCIATED WITH THE GIVEN CODE MUST BE IN FILE
C "ERROR.RUN". THIS FILE IS KEPT IN THE FILE SYSTEM DIRECTORY WHOSE
C NAME IS STORED IN THE OPERATING SYSTEM ENVIRONMENT VARIABLE
C "HYPLASHOME" (SEE COMMENTS BELOW).
C***********************************************************************
 1000 FORMAT(///' ',74('*')/' *',72X,'*'/' *',25X,A22,25X,'*'/' *',72X,
     1      '*'/' ',74('*')/' *',72X,'*'/' * Code:         ',A6,51X,'*')
 1010 FORMAT(' *',A72,'*')
 1020 FORMAT(' *',72X,'*'/' ',74('*'))
 1030 FORMAT(//'   ASSOCIATED MESSAGES WILL NOT BE PRINTED !',//,
     1  '   The above error code was not found in file ERROR.RUN.',//)
 1040 FORMAT(//'   ASSOCIATED MESSAGES WILL NOT BE PRINTED !',//,
     1   '   File ERROR.RUN does not exist in HYPLASHOME directory.',//)
C
      IF(ERRCOD(1:2).EQ.'ED')THEN
        HEADER='  INPUT  DATA  ERROR  '
      ELSEIF(ERRCOD(1:2).EQ.'WD')THEN
        HEADER=' INPUT  DATA  WARNING '
      ELSEIF(ERRCOD(1:2).EQ.'EI')THEN
        HEADER='   INTERNAL   ERROR   '
      ELSEIF(ERRCOD(1:2).EQ.'EE')THEN
        HEADER='    EXECUTION ERROR   '
      ELSEIF(ERRCOD(1:2).EQ.'WE')THEN
        HEADER='   EXECUTION WARNING  '
      ELSE
        HEADER='  UNKNOWN ERROR TYPE  '
      ENDIF
      WRITE(*,1000)HEADER,ERRCOD
      WRITE(16,1000)HEADER,ERRCOD
C
C
C WARNING: GETENV is a non-standard FORTRAN 77 instruction, used here to
C          obtain the value of the operating system environment variable
C          HYPLASHOME - A character string containig the name of the
C          directory where the file ERROR.RUN (containing the error/
C          warning messages of HYPLAS) is kept in the file system. You
C          may need to change this if your FORTRAN compiler does not
C          support the instruction GETENV.
      CALL GETENV('HYPLASHOME',HYPLASHOME)
C
C Opens file ERROR.RUN
      NWRD=NWORD(HYPLASHOME,IWBEG,IWEND)
      INQUIRE(FILE=HYPLASHOME(1:IWEND(NWRD))//'/ERROR.RUN',EXIST=AVAIL)
      IF(.NOT.AVAIL)THEN
        WRITE(*,1040)
        WRITE(16,1040)
        GOTO 999
      ENDIF
      OPEN(23,FILE=HYPLASHOME(1:IWEND(NWRD))//'/ERROR.RUN',STATUS='OLD')
C
C Finds the character string with the given error code in file ERROR.RUN
      CALL FNDKEY
     1(   FOUND      ,IWBEG      ,IWEND      ,ERRCOD     ,INLINE     ,
     2    23         ,NWRD       )
      IF(.NOT.FOUND)THEN
        WRITE(*,1030)
        WRITE(16,1030)
        GOTO 998
      ENDIF
C
C Reads and echoes the associated error/warning message
      NLINES=INTNUM(INLINE(IWBEG(2):IWEND(2)))
      DO 10 I=1,NLINES
        READ(23,'(A72)')INLINE
        WRITE(*,1010)INLINE
        WRITE(16,1010)INLINE
   10 CONTINUE
      WRITE(*,1020)
      WRITE(16,1020)
  998 CONTINUE
      CLOSE(23,STATUS='KEEP')
  999 CONTINUE
C
C All codes WE???? and WD???? are WARNING codes (execution warnings and
C input data warnings, respectively) and do not stop the execution
C of HYPLAS. Any other type of message code is seen as an ERROR code and
C will cause HYPLAS to stop its execution. Refer to comments in the
C file ERROR.RUN.
      IF(ERRCOD(1:2).NE.'WE'.AND.ERRCOD(1:2).NE.'WD')CALL PEXIT
      RETURN
      END
