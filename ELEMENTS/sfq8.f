      SUBROUTINE SFQ8
     1(   DERIV      ,ETASP      ,EXISP      ,IBOUND     ,MDIME      ,
     2    SHAPE      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION
     1    DERIV(MDIME,*)     ,SHAPE(*)
      DATA RP25  ,RP5  ,R1   ,R2   /
     1     0.25D0,0.5D0,1.0D0,2.0D0/
C***********************************************************************
C COMPUTES SHAPE FUNCTIONS AND SHAPE FUNCTION DERIVATIVES FOR
C ELEMENT 'QUAD_8' (STANDARD ISOPARAMETRIC 8-NODED QUADRILATERAL)
C
C REFERENCE: Section 4.1.3
C***********************************************************************
      IF(IBOUND.EQ.0)THEN
C Shape functions and derivatives on element DOMAIN
C -------------------------------------------------
        S=EXISP
        T=ETASP
        S2=S*R2
        T2=T*R2
        SS=S*S
        TT=T*T
        ST=S*T
        SST=S*S*T
        STT=S*T*T
        ST2=S*T*R2
C Shape functions
        SHAPE(1)=(-R1+ST+SS+TT-SST-STT)*RP25
        SHAPE(2)=(R1-T-SS+SST)*RP5
        SHAPE(3)=(-R1-ST+SS+TT-SST+STT)*RP25
        SHAPE(4)=(R1+S-TT-STT)*RP5
        SHAPE(5)=(-R1+ST+SS+TT+SST+STT)*RP25
        SHAPE(6)=(R1+T-SS-SST)*RP5
        SHAPE(7)=(-R1-ST+SS+TT+SST-STT)*RP25
        SHAPE(8)=(R1-S-TT+STT)*RP5
C Shape functions derivatives
        DERIV(1,1)=(T+S2-ST2-TT)*RP25
        DERIV(1,2)=-S+ST
        DERIV(1,3)=(-T+S2-ST2+TT)*RP25
        DERIV(1,4)=(R1-TT)*RP5
        DERIV(1,5)=(T+S2+ST2+TT)*RP25
        DERIV(1,6)=-S-ST
        DERIV(1,7)=(-T+S2+ST2-TT)*RP25
        DERIV(1,8)=(-R1+TT)*RP5
        DERIV(2,1)=(S+T2-SS-ST2)*RP25
        DERIV(2,2)=(-R1+SS)*RP5
        DERIV(2,3)=(-S+T2-SS+ST2)*RP25
        DERIV(2,4)=-T-ST
        DERIV(2,5)=(S+T2+SS+ST2)*RP25
        DERIV(2,6)=(R1-SS)*RP5
        DERIV(2,7)=(-S+T2+SS-ST2)*RP25
        DERIV(2,8)=-T+ST
      ELSE
C Shape function and derivatives on element BOUNDARY (1-D)
C --------------------------------------------------------
        S=EXISP
        SS=S*S
        S2=S*R2
C Shape functions
        SHAPE(1)=(-S+SS)*RP5
        SHAPE(2)=R1-SS
        SHAPE(3)=(S+SS)*RP5
C Shape functions derivatives
        DERIV(1,1)=(-R1+S2)*RP5
        DERIV(1,2)=-S2
        DERIV(1,3)=(R1+S2)*RP5
      ENDIF
C
      RETURN
      END
