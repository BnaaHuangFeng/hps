C***********************************************************************
C----------------------------------------------------------------------*
C                                                                      *
C                                                                      *
C      H Y P L A S  MAXIMUM PROBLEM SIZE DIMENSIONING PARAMETERS       *
C                                                                      *
C                                                                      *
C----------------------------------------------------------------------*
C***********************************************************************
C
C
C
C  Dimensioning parameters:
C  -----------------------
C
C   * MELEM = Maximum permissible number of elements in the mesh.
C
C   * MFRON = Maximum front width allowed in frontal solver.
C
C   * MGRUP = Maximum permissible number of element groups.
C
C   * MINCS = Maximum permissible number of load increments.
C
C   * MPOIN = Maximum permissible number of nodal points in the mesh.
C
C   * MSUBIN= Dimension of increment cut stack array. Maximum
C             permissible number of consecutive increment cuts is
C             MSUBIN-1.
C
C   * MVFIX = Maximum permissible number of nodes with prescribed
C             displacements. Does not include (slave) nodes with
C             kinematical contraints prescribed by means of Master/Slave
C             constraint specification.
C
C
      PARAMETER( MELEM  = 1)
      PARAMETER( MFRON  = 8)
      PARAMETER( MGRUP  = 10 )
      PARAMETER( MINCS  = 200)
      PARAMETER( MPOIN  = 4)
      PARAMETER( MSUBIN = 10  )
      PARAMETER( MVFIX  = 4 )
