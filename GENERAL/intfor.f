      SUBROUTINE INTFOR( INCCUT )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C
      INCLUDE '../MAXDIM.f'
      INCLUDE '../MATERIAL.f'
      INCLUDE '../ELEMENTS.f'
      INCLUDE '../GLBDBASE.f'
C Arguments
      LOGICAL  INCCUT
C Local variables
      LOGICAL  IFFAIL
C***********************************************************************
C LOOPS OVER ALL ELEMENTS OF THE STRUCTURE TO COMPUTE ELEMENT INTERNAL
C FORCE VECTORS
C
C REFERENCE: Figures 5.2-3
C***********************************************************************
C Initialise increment cutting flag
      INCCUT=.FALSE.
C
C Begin loop over elements
C ========================
      DO 50 IELEM=1,NELEM
C
C Call element interface for internal force vector computation
C ------------------------------------------------------------
        CALL ELEIIF
     1(   IELEM      ,IFFAIL     )
C
        IF(IFFAIL)THEN
C Internal force calculation failed for current element: Break loop
C over elements and return to main program with increment cutting
C flag activated
          INCCUT=.TRUE.
          GOTO 999
        ENDIF
C
   50 CONTINUE
C Emergency exit
  999 CONTINUE
      RETURN
      END
