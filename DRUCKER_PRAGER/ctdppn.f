      SUBROUTINE CTDPPN
     1(   RALGVA     ,DMATX      ,EPFLAG     ,IPROPS     ,LALGVA     ,
     2    NTYPE      ,RPROPS     ,RSTAVA     ,STRAT      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      PARAMETER(  MSTRE=4  )
C Arguments
      LOGICAL EPFLAG, LALGVA(3)
      DIMENSION
     1    RALGVA(3)          ,DMATX(MSTRE,MSTRE),IPROPS(*)           ,
     2    RPROPS(*)          ,RSTAVA(MSTRE+1)   ,STRAT(MSTRE)
C Local arrays
      DIMENSION
     1    D12(3)             ,D21(3)
C***********************************************************************
C COMPUTATION OF THE CONSISTENT TANGENT MODULUS FOR THE DRUCKER-PRAGER
C ELASTO-PLASTIC MATERIAL WITH PIECE-WISE LINEAR ISOTROPIC HARDENING.
C PLANE STRESS IMPLEMENTATION ONLY.
C
C REFERENCE: Sections 9.2.4-5
C***********************************************************************
C Stops program if not plane stress
      IF(NTYPE.NE.1)CALL ERRPRT('EI0039')
C Retrieve the elastic trial THICKNESS STRAIN last determined in the
C plane stress enforcement loop of subroutine SUDPPN. The in-plane
C elastic trial components have already been stored in the first
C three components of STRAT before the present routine was called.
      STRAT(4)=RALGVA(3)
C Compute the axisymmetric consistent tangent matrix
      CALL CTDP
     1(   RALGVA     ,DMATX      ,EPFLAG     ,IPROPS     ,LALGVA     ,
     2    3          ,RPROPS     ,RSTAVA     ,STRAT      )
C Decompose into submatrices
      D12(1)=DMATX(1,4)
      D12(2)=DMATX(2,4)
      D12(3)=DMATX(3,4)
      D21(1)=DMATX(4,1)
      D21(2)=DMATX(4,2)
      D21(3)=DMATX(4,3)
      D22=DMATX(4,4)
C Assemble plane stress consistent tangent matrix
      DO 20 I=1,3
        DO 10 J=1,3
          DMATX(I,J)=DMATX(I,J)-D12(I)*D21(J)/D22
   10   CONTINUE
   20 CONTINUE
      RETURN
      END
