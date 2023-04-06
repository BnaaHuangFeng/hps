C***********************************************************************
C----------------------------------------------------------------------*
C                                                                      *
C                                                                      *
C                   H Y P L A S   GLOBAL DATABASE                      *
C                                                                      *
C                                                                      *
C----------------------------------------------------------------------*
C***********************************************************************
C
C
C***********************************************************************
C
C 1. Dimensioning parameters associated with available analyses types
C
C***********************************************************************
C
C
      PARAMETER( MDIME=2 )
      PARAMETER( MSTRE=4 )
      PARAMETER( MTOTV=MDOFN*MPOIN )
C
C   - MDIME = Maximum permissible number of spatial dimensions.
C
C   - MSTRE = Maximum permissible number of stress components.
C
C   - MTOTV = Maximum permissible number of variables (degrees of
C             freedom) in a mesh.
C
C
C
C***********************************************************************
C
C 2. Global data base   ( COMMON blocks )
C
C***********************************************************************
C
C   Internal problem-defining control parameters
C   --------------------------------------------
C
      COMMON/CONTRL/
     1    NDOFN      ,NELEM      ,NGRUP      ,NPOIN      ,NTOTV      ,
     2    NVFIX      ,NTYPE      ,NALGO      ,NARCL      ,NDIME      ,
     3    NLARGE     ,NAXIS
C
C
C       - NDOFN = Number of degrees of freedom per node.
C
C       - NELEM = Total number of elements in the mesh.
C
C       - NGRUP = Total number of element groups defined.
C
C       - NPOIN = Total number of nodal points in the mesh.
C
C       - NTOTV = Total number of variables (degrees of freedom) in the
C                 mesh.
C
C       - NVFIX = Total number of nodes with prescribed displacements.
C                 Does not include (slave) nodes with kinematical
C                 constraints assigned by means of Master/Slave nodal
C                 constraint specification.
C
C       - NTYPE = Analysis type:
C                     1 - Plane stress analysis;
C                     2 - Plane strain analysis;
C                     3 - Axisymmetric analysis.
C
C       - NALGO = Solution algorithm adopted:
C                     1 - Initial stiffness method;
C                     2 - Newton-Raphson tangent stiffness method;
C                     3 - Modified Newton KT1;
C                     4 - Modified Newton KT2;
C                     5 - Secant Newton - Initial stiffness;
C                     6 - Secant Newton - KT1;
C                     7 - Secant Newton - KT2,
C                 with negative values for combined Arc-length method.
C
C       - NDIME = Number of spatial dimensions.
C                 
C       - NLARGE= Large strain formulation flag:
C                     0 - small strain analysis,
C                     1 - large strain analysis.
C
C       - NAXIS = Axis of symmetry flag for axisymmetric analysis:
C                     1 - Symmetric about Y;
C                     2 - Symmetric about X.
C
C
C-----------------------------------------------------------------------
C
      COMMON/CORE/
     1    FIXED(MTOTV,2)               ,STFOR(MTOTV)                 ,
     2    TOFOR(MTOTV)                 ,ELOAD(MEVAB,MELEM)           ,
     3    ELOADO(MEVAB,MELEM)          ,RLOAD(MEVAB,MELEM)
C		- RLOAD(:,i) external load vector of element i
C       - STFOR： global internal force vector
C       - IFPRE : Vector of parameter difining the fixity of a DOF 0-free;1-fixed.
C       - FIXED : Vector of prescribed displacements(zero if not prescribed).
C
C-----------------------------------------------------------------------
C
C   Arrays of material properties
C   -----------------------------
C
      COMMON/MATERL/
     1    RPROPS(MRPROP,MGRUP),IPROPS(MIPROP,MGRUP)
C
C
C       - RPROPS = Array of real material properties. Stores one set of
C                  real material properties for each element group.
C                  Typical real material properties: Young's modulus,
C                  Poisson's ratio, hardening curves, etc.
C
C       - IPROPS = Array of integer material properties. Stores one set
C                  of integer material properties for each element
C                  group.
C                  Typical integer material properties: number of
C                  sampling points in hardening curves, etc.
C
C
C-----------------------------------------------------------------------
C
C   Arrays defining the mesh and kinematic constraints
C   --------------------------------------------------
C
      COMMON/MESH/
     1    ANGLE(MVFIX)    ,COORD(MDIME,MPOIN,0:2),PRESC(MVFIX,MDOFN) ,
     2    IELTID(MGRUP)      ,IFFIX(MTOTV)       ,IGRPID(MELEM)      ,
     3    LNODS(MELEM,MEVAB) ,MASTER(MTOTV)      ,MATTID(MGRUP)      ,
     4    NOFIX(MVFIX)       ,NVALEN(MPOIN,MGRUP)
C
C
C       - ANGLE  = Array of fixity angles. For each node with prescribed
C                  displacement, stores the angle (with respect to the
C                  global X-axis) at which the kinematic constraint is
C                  applied.
C
C       - COORD  = Array of nodal coordinates. For each nodal point of
C                  the mesh, stores its initial, current and last
C                  converged (equilibrium) coordinates, respectively,
C                  in positions
C                                   COORD( x , x , 0),
C                                   COORD( x , x , 1) and
C                                   COORD( x , x , 2).
C                  Only initial coordinates are used in infinitesimal
C                  analysis.
C
C       - PRESC  = Array of prescribed displacements. For each node with
C                  with kinematic constraints, stores the prescribed
C                  value for each degree of freedom. 
C
C       - IELTID = Array of element type identification numbers. For
C                  each element group, stores the corresponding element
C                  type identification number.
C
C       - IFFIX  = Array of fixed degree of freedom flags. For each
C                  degree of freedom of the structure, stores a flag
C                  (0 or 1) that tells whether that degree of freedom
C                  is kinematically constrained (1) or not (0).
C
C       - IGRPID = Array of element group identification numbers. For
C                  each element of the mesh, stores the identification
C                  number of the group to which it belongs.
C
C       - LNODS  = Array of nodal connectivities.
C
C       - MASTER = Array of master degrees of freedom, if no Master/slave
C                  nodal constraints in data input file, MASTER(ITOTV)=ITOTV.
C
C       - MATTID = Array of material type identification numbers. For
C                  each element group, stores the corresponding material
C                  type identification number.
C
C       - NOFIX  = Array of kinematically constrained nodes. Stores the
C                  global node numbers of all nodes with kinematic
C                  constraints.
C
C       - NVALEN = Array of nodal valencies. Stores the number of
C                  elements of each element group that share each node
C                  of the structure (used for nodal averaging for output
C                  purposes only).
C
C-----------------------------------------------------------------------
C
C   Arrays of element properties
C   ----------------------------
C
      COMMON/ELEMEN/
     1    RELPRP(MREPRP,MGRUP),IELPRP(MIEPRP,MGRUP)
C
C
C       - RELPRP = Array of real element properties. Stores one set of
C                  real element properties per element group.
C                  Typical real element properties are, position and
C                  weight of Gauss points, etc.
C
C       - IELPRP = Array of integer element properties. Stores one set
C                  of integer properties per element group.
C                  Typical integer element properties are: number of
C                  nodes, number of Gauss points, number of boundaries,
C                  etc.
C     QUAD_8 for example:
C     IELPRP(3) = 8(NNODE):node num of a element
C     IELPRP(4) = 9(NGAUSP):total number of gauss points for domain integration
C     IELPRP(5) = 16(NDOFEL):number of degrees of freedom of the element
C     IELPRP(6) = 4(NEDGEL):number of edges of the element
C     IELPRP(7) = 3(MNODEG):maximum number of nodes per edge
C     IELPRP(8) = 2(NGAUSB):number of gauss points for boundary integration
C     IELPRP(9): 
C     node id in edge1 of node(local node id=1);local node id in edge1 of node(local node id=2)...
C     if node(local node id=1) is not a edge id,then its node id in edge1 is 0
C
C     RELPRP(1:NGAUSP*NDIME):coord1 of gausp 1;coord2 of gausp 1;...
C     RELPRP(NGAUSP*NDIME+1:NGAUSP*NDIME+NGAUSP):
C           weight of gausp 1;weight of gausp 2;...
C     RELPRP(NGAUSP*NDIME+NGAUSP+1:NGAUSP*NDIME+NGAUSP+NNODE*NGAUSP):
C           Gauss point-node extrapolation matrix(size=NNODE*NGAUSP)
C     RELPRP(NGAUSP*NDIME+NGAUSP+NGAUSP*NNODE+1,NGAUSP*NDIME+NGAUSP+NGAUSP*NNODE+NGAUSB):
C           coord1 of gausbp 1;coord1 of gausbp 2;...
C     RELPRP(NGAUSP*NDIME+NGAUSP+NGAUSP*NNODE+NGAUSB+1,NGAUSP*NDIME+NGAUSP+NGAUSP*NNODE+2*NGAUSB)
C           weight of gausbp 1;weight of gausbp 2;...        
C number of edges of the element
C      IELPRP(6)=NEDGEL
C maximum number of nodes per edge
C      IELPRP(7)=MNODEG
C number of gauss points for boundary integration
C      IELPRP(8)=NGAUSB
C    
C
C-----------------------------------------------------------------------
C
C   Nodal displacements and reactions
C   ---------------------------------
C
      COMMON/RESULT/
     1    DITER(MTOTV)       ,DINCR(MTOTV)       ,DINCRO(MTOTV)      ,
     2    DTANG(MTOTV)       ,TDISP(MTOTV)       ,TDISPO(MTOTV)      ,
     3    TREAC(MVFIX,MDOFN)
C
C
C       - DITER  = Global vector of iterative nodal displacements.
C
C       - DINCR  = Global vector of (current) incremental nodal
C                  displacements.
C
C       - DINCRO = Global vector of incremental nodal displacements at
C                  the previous converged (equilibrium) state.
C
C       - DTANG  = Global tangential solution vector (used by Arc-Length
C                  method only).
C
C       - TDISP  = Global vector of (current) total nodal displacements.
C
C       - TDISPO = Global vector of total nodal displacements at the
C                  previous converged (equilibrium) state.
C
C       - TREAC  = Array of nodal reaction forces. Stores the reaction
C                  force for each kinematically constrained degree of
C                  freedom of each kinematically constrained node.
C       - TOFOR = external force load plus reaction force
C
C-----------------------------------------------------------------------
C
C   State variables at Gauss points
C   -------------------------------
C
C   Note: These variables usually require appropriate updating in
C         routine SWITCH. The positions
C                          XXXXXX( ... ,1)
C         of the above arrays store current values and
C                          XXXXXX( ... ,2)
C         stores the last converged (equilibrium solution).
C         For THKGP, the positions ( ...,0) store the initial
C         Gauss point thicknesses.
C
      LOGICAL LALGVA
      COMMON/STATE/
     1    RALGVA(MRALGV,MTOTG,MELEM,2) ,RSTAVA(MRSTAV,MTOTG,MELEM,2) ,
     2    STRSG(MSTRE,MTOTG,MELEM,2)   ,THKGP(MTOTG,MELEM,0:2)       ,
     3    LALGVA(MLALGV,MTOTG,MELEM,2)

C		!!!!!!!!! the third index: 1 represent current value
C                                  2 represent last converged value
C
C
C       - RALGVA = Real algorithmic variables at Gauss points
C                  (eg. incremental plastic multipliers for
C                  elasto-plastic materials).
C
C       - RSTAVA = Real state variables at Gauss points (depends on
C                  material type).
C                  for von mises: it's elastic strain and equivalent plastic strain
C
C       - STRSG  = Stresses (or resultant forces/couples) at Gauss
C                  points.
C
C       - THKGP  = Gauss point thicknesses necessary in plane stress
C                  analysis. The contents of THKGP need updating
C                  in routine SWITCH only in large strain analysis.
C                  It is not updated in small strain analysis.
C
C       - LALGVA = Logical algorithmic variables at Gauss points
C                  (eg. flags for multi-vector return mappings for
C                  material models such as Tresca and Mohr-Coulomb).


C     My own(HuangFeng) comments, not neccessarily variables in GLBDBASE.f CCCCCCCCCCCCCCC
C
C     NOPRS(INODEG): 
C     from input file
C     INODEG:id of  node in edge -> global id of node 
C
C     ELCOD(IDIME,INODEG): 
C     IDIME:id of DOF of a node, INODEG:id of node in edge  -> current coords of node
C
C     NGAUSB:Num of Gause point in specific elemnt boundary
C     
C     NODCHK(i):
C           Before CHKNDB:if node(element's node id i) is pressed,then NODCHK(i)=1,else 0
C           After CHKNDB: id i in edge  -> local id NODCHK
C     NODAUX(IPOIN):
C           global id IPOIN -> edge node i
C     PRESS(INODEG,IDOFN) ->  DOF IDOFN's pressure condition in node(input id INODEG)
C     RLOAD(NGASH,IELEM):
C           NGASH:DOF local id;IELEM:element id -> the equivalent nodal loads to the element force vector


C     IFNEG: Signum (+1/-1) of the stiffness matrix determinant
C     DLAMD: Iterative load factor
C     KUNLD: Unloading flag IF(IITER.GT.1)KUNLD=0
C            Unloading flag. KUNLD is set to 1 if the the loading programme is currently unloading.
C     TFACT: Total load factor

C     NINCS: num of load increments
C  double precision   DFACT  <  Initial incremental load factor (for    
C                               Arc-Length control).                    

C  double precision   DLENP  <  Maximum arc-length parameter (for       
C                               Arc-Length control).                    

C  double precision   FSTOP  <  Maximum total load factor, above which  
C                               the analysis will stop (for             
C                               Arc-Length control).                    

C  integer            ITDES  <  Desired number of equilibrium           
C                               iterations (for Arc-Length control).    

C  integer            MINCS  >  Dimensioning parameter: maximum         
C                               permissible number of prescribed load   
C                               increments under fixed load increments  
C                               option. Defines size of                 
C                               DFACTV, MITERV and NOUTPV.              

C  integer            MITER  <  Maximum allowed number of equilibrium   
C                               iterations in any increment (for        
C                               Arc-Length control).                    

C  integer            NALGO  >  Solution algorithm flag (positive for   
C                               fixed increments option, negative for   
C                               Arc-Length control).                    

C  integer            NINCS  <  For fixed increments option: total      
C                               number of specified load increments.    
C                               For Arc-Length control: maximum         
C                               specified number of load increments.    

C  double precision   TOLER  <  Equilibrium convergence for all load    
C                               increments (for Arc-Length control).    

C  double precision   DFACTV <  Array with the incremental load factor  
C                               of each specified load increment (for   
C                               fixed load increments option).          

C  integer            MITERV <  Array with the maximum allowed number of
C                               global (equilibrium) iterations for each
C                               specified load increment (for           
C                               fixed load increments option).          

C  integer            NOUTP  <  Output code array with output frequency 
C                               flags (for Arc-Length control).         

C  integer            NOUTPV <  Array with the output code for each     
C                               specified load increment (for fixed load
C                               increments option).                     

C  double precision   TOLERV <  Array with the equilibrium convergence  
C                               tolerance for each specified load       
C                               increment (for fixed load increments    
C                               option).  
C
C If KRESL=1, then a new stiffness is required. When the standard Newton–Raphson algorithm is used,
C KRESL is always set to 1. If KRESL=2, then the stiffness of the previous iteration is to be reused 
C in the current iteration and only the load term will be reduced

C ELOAD: out-of-balance force vector of the current element
C 
C       - KRESL  = EQUATION RESOLUTION INDEX refer to SUBROUTINE ALGOR
C       - LNODS  = ELement NODe numberS listed for each element
C       - MEVAB  = Maximum of Element VAriaBles
C       - MSVAB  = Maximum of Gloabal Structural VAriaBles
C		- MNODS  = Maximun of NODS per element
C		- RLOAD  = Element LOAD vector
C		- ASLOD  = ASsembled LOaDs vector
C		- INODE  = Index of NODes per Element
C		- NODEI  = NODE's global Index
C		- IEQNS,NEQNS,MEQNS:	Index,Number,Maximum of EQuatioNS
C		- FACTR  = Jordan reduction FACToR
C		- PIVOT  = Diagonal term of variable which is currently being eliminated

C		- NPOSI  = (INODES-1)*NDOFN + IDOFN
C		- IFRON  = The position of the equation in the front
C       - NIKNO  = The number of the variable which has just been eliminated

C-----------------------------------------------------------------------
C
C   Variable in FRONT subroutine
C   -------------------------------
C	NFUNC(I,J)  : I,J(row,col) -> position N.
C	NTOTV		: Number of TOTal Variables in the structure.
C	NPOIN		: Number of nodal POINts in the structure.
C	NDOFN		: Number of DOF per Node.
C	NVFIX		: Number of FOXed nodal points.
C	NOFIX		: Array of NOdal points which are FIXed.
C	IFPRE(IVFIX,IDOFN) : Aarray of fixity code values(IF displacements are
C                        PREscribed an unit value is entered).
C	PRESC(IVFIX,IDOFN) : Array of PREscribed displacenment values.
C	IFFIX(ITOTV): Global vector of fixity codes.
C	FIXED(ITOTV): Global vector of prescribed displacement values.
C	EQUAT(IFRON): the array in which the reduced EQUATion are stored prior
C                 to writing to disc.
C	VECRV(IFRON): the VECtor of Running Variables in which the solved
C                 displacements are stored.
C	NACVA(IFRON): The vector containing a list of the global number of
C                 the ACtive VAriable in the front.
C   LOCEL(IEVAB): The vectr which LOCates the global position of each ELement variable.
C	NIKNO		: NIcKname NO. for a particular variable.
C	NDEST(IEVAB): KDOFE - DOF's number in a element
C                 NDEST - DOF's position in the front
C                 NDEST is a local array and is computed separately on the
C                 introduction of each element.
C	EQRHS		: The Right Hand Side load term after reduction,ready for disc
C                 file storage.
C	ASDIS(NIKNO): The vector of ASsembled nodal DISplacement.
C	NVARB		: DOF number in elimination sequence.
C	NAMEV(NVARB): NVARB(DOF number in elimination sequence) -> NAMEV(DOF's global number).
C	NPIVO(NVARB): NVARB(DOF number in elimination sequence) -> NPIVO(DOF's front number).
C	NBUFA		: Current reduced equation total number.