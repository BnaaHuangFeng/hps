      SUBROUTINE STFBA2
     1(   IELEM      ,KUNLD      ,MDIME      ,MELEM      ,
     2    MPOIN      ,MSTRE      ,MTOTV      ,NAXIS      ,
     3    NTYPE      ,UNSYM      ,
     4    COORD1     ,DINCR      ,ESTIF      ,IELPRP     ,IPROPS     ,
     5    LALGVA     ,LNODS      ,RALGVA     ,RELPRP     ,RPROPS     ,
     6    RSTAVA     ,RSTAV2     ,STRSG      ,TDISP      )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C
      INCLUDE '../MATERIAL.f'
      INCLUDE '../ELEMENTS.f'
C
      PARAMETER( MGDIM=5 ,MBDIM=4 ,NDIME=2 ,NDOFN=2 )
C Arguments
      LOGICAL  LALGVA ,UNSYM
      DIMENSION
     1    COORD1(MDIME,MPOIN),DINCR(MTOTV)       ,ESTIF(MEVAB,MEVAB) ,
     2    IELPRP(*)          ,IPROPS(*)         ,LALGVA(MLALGV,MTOTG),
     3    LNODS(MELEM,MEVAB) ,RALGVA(MRALGV,MTOTG),RELPRP(*)         ,
     4    RPROPS(*)        ,RSTAVA(MRSTAV,MTOTG),RSTAV2(MRSTAV,MTOTG),
     5    STRSG(MSTRE,MTOTG) ,TDISP(MTOTV)
C Local arrays and variables
      DIMENSION
     1    AUXM(MEVAB,MGDIM)  ,AMATX(MGDIM,MGDIM) ,
     2    CARTD(NDIME,MNODE) ,DELDIS(2,MNODE)    ,DERIV(NDIME,MNODE) ,
     3    DMATX(MBDIM,MBDIM) ,EINCR(MBDIM)       ,ELCOD(NDIME,MNODE) ,
     4    FINCIN(3,3)        ,FINCR(3,3)         ,FINV(3,3)          ,
     5    GMATX(MGDIM,MEVAB) ,G0MATX(MGDIM,MEVAB),G0MGMX(MGDIM,MEVAB),
     6    GPCOD(NDIME)       ,QMATX(MGDIM,MGDIM) ,SHAPE(MNODE)       ,
     7    TELDIS(2,MNODE)
      DATA R0   ,RP5  ,R1   ,R3   ,R8   /
     1     0.0D0,0.5D0,1.0D0,3.0D0,8.0D0/
C***********************************************************************
C EVALUATES THE ELEMENT TANGENT STIFFNESS MATRIX FOR ELEMENTS OF CLASS
C 'FBAR' (F-bar ELEMENTS) IN 2-D (PLANE STRAIN AND AXISYMMETRIC
C PROBLEMS)
C
C REFERENCE: Box 15.2
C            Section 15.1.3
C***********************************************************************
      IF(NTYPE.NE.2.AND.NTYPE.NE.3)THEN
C F-bar implementation valid only for plane strain and axisymmetric
        CALL ERRPRT('EI0034')
      ENDIF
      IF(NTYPE.EQ.3)TWOPI=R8*ATAN(R1)
      R1D3=R1/R3
C Identify element type
      IELTYP=IELPRP(1)
C Recover element information
      NNODE =IELPRP(3)
      NGAUSP=IELPRP(4)
      NEVAB =IELPRP(5)
C
C Set element nodal coordinates, total and incremental displacements
C vectors
C
      DO 20 INODE =1,NNODE
        LNODE=IABS(LNODS(IELEM,INODE))
        NPOSN=(LNODE-1)*NDOFN
        DO 10 IDOFN=1,NDOFN
          NPOSN=NPOSN+1
          ELCOD(IDOFN,INODE)=COORD1(IDOFN,LNODE)
          TELDIS(IDOFN,INODE)=-TDISP(NPOSN)
          DELDIS(IDOFN,INODE)=-DINCR(NPOSN)
   10   CONTINUE
   20 CONTINUE
C
C Initialize the element stiffness matrix
C
      DO 40 IEVAB=1,NEVAB
        DO 30 JEVAB=1,NEVAB
          ESTIF(IEVAB,JEVAB)=R0
   30   CONTINUE
   40 CONTINUE
C
C
C Evaluate inverse of the incremental deformation gradient at the
C element centroid for F-bar element
      NGAUSB=IELPRP(8)
      IPOS  =NGAUSP*NDIME+NGAUSP+NGAUSP*NNODE+2*NGAUSB+1
      EXISC =RELPRP(IPOS)
      ETASC =RELPRP(IPOS+1)
C
      CALL SHPFUN
     1(   DERIV      ,ETASC      ,EXISC      ,0          ,IELTYP     ,
     2    NDIME      ,SHAPE      )
      CALL JACOB2
     1(   CARTD      ,DERIV      ,DETJAC     ,ELCOD      ,IELEM      ,
     2    NDIME      ,NDIME      ,NNODE      )
      IF(DETJAC.LE.R0)THEN
C stops program if element jacobian is not positive definite
        CALL ERRPRT('EE0007')
      ENDIF
      IF(NTYPE.EQ.3)CALL GETGCO
     1(   GPCOD      ,ELCOD      ,NDIME      ,NDIME      ,NNODE      ,
     2    SHAPE      )
C          
      CALL GETGMX
     1(   GPCOD      ,CARTD      ,G0MATX     ,NDIME      ,MGDIM      ,
     2    NAXIS      ,NNODE      ,NTYPE      ,SHAPE      )
C Determinant of the incremental deformation gradient at the centroid
      CALL DEFGRA
     1(   DELDIS     ,FINCIN     ,G0MATX     ,2          ,MGDIM      ,
     2    NDOFN      ,NTYPE      ,NNODE      )
      IF(NTYPE.EQ.2)THEN
        AFACT=RP5
        DET=FINCIN(1,1)*FINCIN(2,2)-FINCIN(1,2)*FINCIN(2,1)
      ELSEIF(NTYPE.EQ.3)THEN
C stops program if deformation gradient determinant is non-positive
        IF(FINCIN(3,3).LE.R0)CALL ERRPRT('EE0008')
        AFACT=R1D3
        DET=(FINCIN(1,1)*FINCIN(2,2)-FINCIN(1,2)*FINCIN(2,1))*
     1       FINCIN(3,3)
      ENDIF
      DET0=R1/DET
C Determinant of the total deformation gradient at the centroid
      CALL DEFGRA
     1(   TELDIS     ,FINV       ,G0MATX     ,2          ,MGDIM      ,
     2    NDOFN      ,NTYPE      ,NNODE      )
      IF(NTYPE.EQ.2)THEN
        DET=FINV(1,1)*FINV(2,2)-FINV(1,2)*FINV(2,1)
      ELSEIF(NTYPE.EQ.3)THEN
C stops program if deformation gradient determinant is non-positive
        IF(FINV(3,3).LE.R0)CALL ERRPRT('EE0008')
        DET=(FINV(1,1)*FINV(2,2)-FINV(1,2)*FINV(2,1))*FINV(3,3)
      ENDIF
      DETF0=R1/DET
C
C=======================================================================
C                 Begin loop over Gauss points                         |
C=======================================================================
      IPPOS=1
      IPWEI=NGAUSP*NDIME+1
      DO 70 IGAUSP=1,NGAUSP
        EXISP=RELPRP(IPPOS-1+IGAUSP*2-1)
        ETASP=RELPRP(IPPOS-1+IGAUSP*2)
        WEIGP=RELPRP(IPWEI-1+IGAUSP)
C Evaluate the shape functions and derivatives
        CALL SHPFUN
     1(   DERIV      ,ETASP      ,EXISP      ,0          ,IELTYP     ,
     2    NDIME      ,SHAPE      )
        CALL JACOB2
     1(   CARTD      ,DERIV      ,DETJAC     ,ELCOD      ,IELEM      ,
     2    NDIME      ,NDIME      ,NNODE      )
        IF(DETJAC.LE.R0)THEN
C... stops program if element jacobian is not positive definite
          CALL ERRPRT('EE0007')
        ENDIF
        IF(NTYPE.EQ.3)CALL GETGCO
     1(   GPCOD      ,ELCOD      ,NDIME      ,NDIME      ,NNODE      ,
     2    SHAPE      )
C
C Large strains: compute incremental deformation gradient
C -------------------------------------------------------
C gradient operator G in the current configuration
        CALL GETGMX
     1(   GPCOD      ,CARTD      ,GMATX      ,NDIME      ,MGDIM      ,
     2    NAXIS      ,NNODE      ,NTYPE      ,SHAPE      )
C inverse of incremental deformation gradient
        CALL DEFGRA
     1(   DELDIS     ,FINCIN     ,GMATX      ,2          ,MGDIM      ,
     2    NDOFN      ,NTYPE      ,NNODE      )
C stops program if deformation gradient determinant is non-positive
        IF(NTYPE.EQ.3.AND.FINCIN(3,3).LE.R0)CALL ERRPRT('EE0008')
C incremental deformation gradient
        CALL INVF2
     1(   FINCIN     ,FINCR      ,NTYPE      )
C Modified incremental deformation gradient for F-bar element
        IF(NTYPE.EQ.2)THEN
          DET=FINCR(1,1)*FINCR(2,2)-FINCR(1,2)*FINCR(2,1)
        ELSEIF(NTYPE.EQ.3)THEN
          DET=(FINCR(1,1)*FINCR(2,2)-FINCR(1,2)*FINCR(2,1))*
     1         FINCR(3,3)
        ENDIF
        FACTOR=(DET0/DET)**AFACT
        FINCR(1,1)=FACTOR*FINCR(1,1)
        FINCR(1,2)=FACTOR*FINCR(1,2)
        FINCR(2,1)=FACTOR*FINCR(2,1)
        FINCR(2,2)=FACTOR*FINCR(2,2)
        IF(NTYPE.EQ.3)FINCR(3,3)=FACTOR*FINCR(3,3)
C... and the determinant of the total deformation gradient
        DETF=DETF0
C
C Call material interface routine for consistent tangent computation
C calls: Compute the spatial tangent modulus AMATX (large strains)
C ====================================================================
C
        NLARGE=1
        CALL MATICT
     1(   DETF       ,KUNLD      ,MBDIM      ,MGDIM      ,
     2    NLARGE     ,NTYPE      ,
     3    AMATX      ,DMATX      ,EINCR      ,FINCR      ,IPROPS     ,
     4    LALGVA(1,IGAUSP)       ,RALGVA(1,IGAUSP)       ,RPROPS     ,
     5    RSTAVA(1,IGAUSP)       ,RSTAV2(1,IGAUSP)       ,
     5    STRSG(1,IGAUSP)        )
C
C Add current Gauss point contribution to element stiffness
C =========================================================
C
C Compute elemental volume
        DVOLU=DETJAC*WEIGP
        IF(NTYPE.EQ.3)THEN
          DVOLU=DVOLU*TWOPI*GPCOD(NAXIS)
        ENDIF
C                                                         T
C Large strains:  assemble the element stiffness as  K:= G [a] G
C --------------------------------------------------------------
        IF(NTYPE.EQ.3)THEN
          NGDIM=5
        ELSE
          NGDIM=4
        ENDIF
        CALL RTSR
     1(   AUXM       ,0          ,MEVAB      ,MGDIM      ,NEVAB      ,
     2    NGDIM      ,ESTIF      ,GMATX      ,AMATX      ,DVOLU      ,
     3    UNSYM      )
C Add extra matrix required by F-bar type element
        CALL ATMDFB
     1(   AMATX      ,NTYPE      ,QMATX      ,STRSG(1,IGAUSP)        )
CC NGDIM*NEVAB ??? Fix this!!!
        CALL RVSUB(G0MGMX,G0MATX,GMATX,MGDIM*MEVAB)
        CALL RTSX
     1(   AUXM       ,0          ,MEVAB      ,MGDIM      ,NEVAB      ,
     2    NGDIM      ,ESTIF      ,GMATX      ,QMATX      ,G0MGMX     ,
     3    DVOLU      )
C
   70 CONTINUE
C=======================================================================
C                 End of loop over Gauss points                        |
C=======================================================================
      RETURN
      END
