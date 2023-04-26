

                     H Y P L A S   ANALYSIS  RESULTS
                    =================================

        _________________________________________________________ 
       |                                                         |
       | Program compiled with the dimensioning parameters       |
       |_________________________________________________________|
       |                                                 |       |
       | Maximum number of elements              (MELEM) |  2000 |
       | Maximum frontwidth allowed in solution  (MFRON) |   300 |
       | Maximum number of element groups        (MGRUP) |    10 |
       | Maximum number of load increments       (MINCS) |   200 |
       | Maximum number of nodal points          (MPOIN) |  4000 |
       | Size of increment cutting stack array   (MSUBIN)|    10 |
       | Max. number of nodes with prescr.displ. (MVFIV) |   500 |
       |_________________________________________________|_______|


 Data file name:
 ===============

 07_5_2_collapse.dat


 Title:
 ======

 Example 7.5.2 - Internally pressurised thick-walled sphere (collapse)   


 Analysis description:
 =====================

 Analysis type ....................................... =    3
        1 = Plane stress
        2 = Plane strain
        3 = Axisymmetric
 Axis of symmetry .................................... =    Y

 Large deformation flag .............................. =  OFF

 Nonlinear solution algorithm ........................ =    2
        Negative for the arc length method
        1 = Initial stiffness method
        2 = Newton-Raphson tangential stiffness method
        3 = Modified Newton KT1
        4 = Modified Newton KT2
        5 = Secant Newton - Initial stiffness
        6 = Secant Newton - KT1
        7 = Secant Newton - KT2


 Element Groups:        Number of element groups =     1
 ===============

 Group     Element type    Material type

     1          1                 1


 Element types:          Number of element types =     1
 ==============

 Element type number   1
 -------------------
 QUAD_8 (standard 8-noded quadrilateral)
 Integration rule:  4 gauss points


 Material properties:        Number of materials =     1
 ====================

 Material type number  1
 --------------------
 Elasto-plastic with VON MISES yield criterion

 Mass density ...................................... =    0.00000    
 Young's modulus ................................... =    210.000    
 Poisson's ratio ................................... =   0.300000    

 Number of points on hardening curve ............... =  2

           Epstn        uniaxial yield stress 

         0.00000            0.240000    
         1.00000            0.240000    


 Element connectivities:      Number of elements =     4
 =======================

 Elem.  Group             Node numbers

   1       1              1    4    6    7    8    5    3    2
   2       1              6    9   11   12   13   10    8    7
   3       1             11   14   16   17   18   15   13   12
   4       1             16   19   21   22   23   20   18   17


 Nodal point co-ordinates:       Number of nodes =    23
 =========================

 Node    R-Coord        Z-Coord

    1    100.000        0.00000    
    2    96.5926        25.8819    
    3    86.6025        50.0000    
    4    108.000        0.00000    
    5    93.5307        54.0000    
    6    116.000        0.00000    
    7    112.047        30.0230    
    8    100.459        58.0000    
    9    126.000        0.00000    
   10    109.119        63.0000    
   11    136.000        0.00000    
   12    131.366        35.1994    
   13    117.779        68.0000    
   14    150.000        0.00000    
   15    129.904        75.0000    
   16    164.000        0.00000    
   17    158.412        42.4463    
   18    142.028        82.0000    
   19    182.000        0.00000    
   20    157.617        91.0000    
   21    200.000        0.00000    
   22    193.185        51.7638    
   23    173.205       100.0000    


 Prescribed displacements:    Number of nodes with prescribed displacement =    18
 =========================

 Node   Code             Prescribed values                 Angle

    1      1       0.00000        0.00000        0.00000    
    4      1       0.00000        0.00000        0.00000    
    6      1       0.00000        0.00000        0.00000    
    9      1       0.00000        0.00000        0.00000    
   11      1       0.00000        0.00000        0.00000    
   14      1       0.00000        0.00000        0.00000    
   16      1       0.00000        0.00000        0.00000    
   19      1       0.00000        0.00000        0.00000    
   21      1       0.00000        0.00000        0.00000    
    3      1       0.00000        0.00000        30.0000    
    5      1       0.00000        0.00000        30.0000    
    8      1       0.00000        0.00000        30.0000    
   10      1       0.00000        0.00000        30.0000    
   13      1       0.00000        0.00000        30.0000    
   15      1       0.00000        0.00000        30.0000    
   18      1       0.00000        0.00000        30.0000    
   20      1       0.00000        0.00000        30.0000    
   23      1       0.00000        0.00000        30.0000    



 No Master/Slave nodal constraints specified
 ===========================================



 Maximum frontwidth encountered =   16



 Loading specification (other than prescribed displacements)
 ===========================================================

    If any of the flags below is set to 1,  then
    the corresponding type of loading is applied
    to the structure.

 Point loading flag ...........................=  0
 Gravity loading flag .........................=  0
 Distributed edge loading flag ................=  1


 Edge load applied in      1 edges
 ---------------------------------

 Element Number =    1
 Node      R-Coord.       Z-Coord.       Norm. Load         Tang. Load
    1      100.000        0.00000           1.00000        0.00000    
    2      96.5926        25.8819           1.00000        0.00000    
    3      86.6025        50.0000           1.00000        0.00000    



 Increment control with fixed load increments selected
 =====================================================

       Number of proportional load increments =    4





 INCREMENT NUMBER    1
 =====================


 Total load factor ............... =    0.150000    
 Incremental load factor ......... =    0.150000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   1
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    1                   TOTAL LOAD FACTOR =   0.150000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                     0.886893E-12                 0.196696E-10
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.150000    
 --------------------------------------------------------------------------


 Results for load increment   1 Load factor =   0.150000    
 ===========================================================

 Converged solution at iteration number =    1


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1     0.573272E-01    0.00000    
    2     0.550958E-01   0.147569E-01
    3     0.496680E-01   0.286758E-01
    4     0.500030E-01    0.00000    
    5     0.433218E-01   0.250119E-01
    6     0.442245E-01    0.00000    
    7     0.426294E-01   0.114160E-01
    8     0.383144E-01   0.221208E-01
    9     0.386124E-01    0.00000    
   10     0.334510E-01   0.193130E-01
   11     0.343051E-01    0.00000    
   12     0.330363E-01   0.884570E-02
   13     0.297185E-01   0.171580E-01
   14     0.297548E-01    0.00000    
   15     0.257752E-01   0.148813E-01
   16     0.264831E-01    0.00000    
   17     0.254907E-01   0.682402E-02
   18     0.229395E-01   0.132441E-01
   19     0.234860E-01    0.00000    
   20     0.203412E-01   0.117440E-01
   21     0.214659E-01    0.00000    
   22     0.206812E-01   0.553594E-02
   23     0.185891E-01   0.107324E-01


 Reactions
 =========

 Node      R-Force          Z-Force          X-Local          Y-Local
    1      0.00000         -170.279    
    3     -73.1548          126.708          0.00000          146.310    
    4      0.00000         -654.187    
    5     -283.342          490.763          0.00000          566.684    
    6      0.00000         -331.462    
    8     -143.527          248.597          0.00000          287.055    
    9      0.00000         -679.901    
   10     -294.433          509.972          0.00000          588.866    
   11      0.00000         -376.693    
   13     -163.159          282.600          0.00000          326.319    
   14      0.00000         -826.899    
   15     -358.133          620.304          0.00000          716.266    
   16      0.00000         -446.092    
   18     -193.210          334.649          0.00000          386.420    
   19      0.00000         -982.637    
   20     -425.643          737.236          0.00000          851.287    
   21      0.00000         -244.148    
   23     -105.870          183.372          0.00000          211.739    
       ---------------  ---------------
 Totals   -2040.47         -1178.10    


 Gauss point stresses and and other state variables
 ==================================================


 Element number    1

 Gauss point  1       R-Coord=   102.7     Z-Coord=   11.53    
 S-rr  =  -0.1307     S-zz  =   0.9598E-01 S-rz  =  -0.2635E-01 S-h   =   0.9905E-01
 S-max =   0.9901E-01 S-min =  -0.1337     Angle =   -83.46    
 S-eff =   0.2328     Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   94.73     Z-Coord=   41.37    
 S-rr  =  -0.9689E-01 S-zz  =   0.6230E-01 S-rz  =  -0.8500E-01 S-h   =   0.9909E-01
 S-max =   0.9915E-01 S-min =  -0.1337     Angle =   -66.56    
 S-eff =   0.2329     Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       R-Coord=   111.9     Z-Coord=   12.56    
 S-rr  =  -0.9628E-01 S-zz  =   0.7902E-01 S-rz  =  -0.2016E-01 S-h   =   0.8135E-01
 S-max =   0.8130E-01 S-min =  -0.9857E-01 Angle =   -83.52    
 S-eff =   0.1799     Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   103.2     Z-Coord=   45.07    
 S-rr  =  -0.6993E-01 S-zz  =   0.5280E-01 S-rz  =  -0.6584E-01 S-h   =   0.8139E-01
 S-max =   0.8144E-01 S-min =  -0.9857E-01 Angle =   -66.49    
 S-eff =   0.1800     Eps.  =    0.000     dgama =    0.000    


 Element number    2

 Gauss point  1       R-Coord=   119.5     Z-Coord=   13.41    
 S-rr  =  -0.7536E-01 S-zz  =   0.6887E-01 S-rz  =  -0.1656E-01 S-h   =   0.7079E-01
 S-max =   0.7075E-01 S-min =  -0.7724E-01 Angle =   -83.53    
 S-eff =   0.1480     Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   110.2     Z-Coord=   48.12    
 S-rr  =  -0.5365E-01 S-zz  =   0.4729E-01 S-rz  =  -0.5419E-01 S-h   =   0.7083E-01
 S-max =   0.7087E-01 S-min =  -0.7723E-01 Angle =   -66.48    
 S-eff =   0.1481     Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       R-Coord=   130.9     Z-Coord=   14.70    
 S-rr  =  -0.5204E-01 S-zz  =   0.5734E-01 S-rz  =  -0.1265E-01 S-h   =   0.5882E-01
 S-max =   0.5878E-01 S-min =  -0.5348E-01 Angle =   -83.49    
 S-eff =   0.1123     Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   120.7     Z-Coord=   52.74    
 S-rr  =  -0.3564E-01 S-zz  =   0.4107E-01 S-rz  =  -0.4105E-01 S-h   =   0.5886E-01
 S-max =   0.5889E-01 S-min =  -0.5347E-01 Angle =   -66.53    
 S-eff =   0.1123     Eps.  =    0.000     dgama =    0.000    


 Element number    3

 Gauss point  1       R-Coord=   141.0     Z-Coord=   15.83    
 S-rr  =  -0.3741E-01 S-zz  =   0.5027E-01 S-rz  =  -0.1013E-01 S-h   =   0.5146E-01
 S-max =   0.5142E-01 S-min =  -0.3857E-01 Angle =   -83.49    
 S-eff =   0.9001E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   130.0     Z-Coord=   56.80    
 S-rr  =  -0.2426E-01 S-zz  =   0.3723E-01 S-rz  =  -0.3292E-01 S-h   =   0.5149E-01
 S-max =   0.5153E-01 S-min =  -0.3855E-01 Angle =   -66.52    
 S-eff =   0.9007E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       R-Coord=   157.1     Z-Coord=   17.63    
 S-rr  =  -0.2111E-01 S-zz  =   0.4219E-01 S-rz  =  -0.7366E-02 S-h   =   0.4306E-01
 S-max =   0.4304E-01 S-min =  -0.2196E-01 Angle =   -83.45    
 S-eff =   0.6500E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   144.8     Z-Coord=   63.27    
 S-rr  =  -0.1165E-01 S-zz  =   0.3283E-01 S-rz  =  -0.2374E-01 S-h   =   0.4309E-01
 S-max =   0.4312E-01 S-min =  -0.2194E-01 Angle =   -66.57    
 S-eff =   0.6505E-01 Eps.  =    0.000     dgama =    0.000    


 Element number    4

 Gauss point  1       R-Coord=   170.5     Z-Coord=   19.14    
 S-rr  =  -0.1185E-01 S-zz  =   0.3773E-01 S-rz  =  -0.5753E-02 S-h   =   0.3842E-01
 S-max =   0.3839E-01 S-min =  -0.1251E-01 Angle =   -83.47    
 S-eff =   0.5091E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   157.2     Z-Coord=   68.68    
 S-rr  =  -0.4425E-02 S-zz  =   0.3039E-01 S-rz  =  -0.1861E-01 S-h   =   0.3844E-01
 S-max =   0.3847E-01 S-min =  -0.1250E-01 Angle =   -66.55    
 S-eff =   0.5095E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       R-Coord=   191.2     Z-Coord=   21.46    
 S-rr  =  -0.2168E-02 S-zz  =   0.3294E-01 S-rz  =  -0.4073E-02 S-h   =   0.3343E-01
 S-max =   0.3341E-01 S-min =  -0.2634E-02 Angle =   -83.47    
 S-eff =   0.3605E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   176.3     Z-Coord=   77.00    
 S-rr  =   0.3090E-02 S-zz  =   0.2774E-01 S-rz  =  -0.1318E-01 S-h   =   0.3344E-01
 S-max =   0.3346E-01 S-min =  -0.2631E-02 Angle =   -66.54    
 S-eff =   0.3608E-01 Eps.  =    0.000     dgama =    0.000    




 INCREMENT NUMBER    2
 =====================


 Total load factor ............... =    0.300000    
 Incremental load factor ......... =    0.150000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   1
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    2                   TOTAL LOAD FACTOR =   0.300000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      55.2938                      2851.61    
        2                      40.8090                      2027.57    
        3                     0.235397E-01                  1.29214    
        4                     0.843948E-05                 0.356134E-03
        5                     0.285363E-12                 0.118234E-10
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.150000    
 --------------------------------------------------------------------------


 Results for load increment   2 Load factor =   0.300000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1     0.253974        0.00000    
    2     0.245233       0.657612E-01
    3     0.220018       0.127028    
    4     0.212539        0.00000    
    5     0.184169       0.106330    
    6     0.180757        0.00000    
    7     0.174391       0.467326E-01
    8     0.156655       0.904446E-01
    9     0.150652        0.00000    
   10     0.130569       0.753839E-01
   11     0.128971        0.00000    
   12     0.124175       0.332421E-01
   13     0.111768       0.645293E-01
   14     0.108286        0.00000    
   15     0.938098E-01   0.541611E-01
   16     0.961322E-01    0.00000    
   17     0.925072E-01   0.247625E-01
   18     0.832688E-01   0.480752E-01
   19     0.852451E-01    0.00000    
   20     0.738287E-01   0.426250E-01
   21     0.779034E-01    0.00000    
   22     0.750616E-01   0.200926E-01
   23     0.674604E-01   0.389483E-01


 Reactions
 =========

 Node      R-Force          Z-Force          X-Local          Y-Local
    1      0.00000          103.217    
    3      44.6836         -77.3942          0.00000         -89.3671    
    4      0.00000          166.416    
    5      72.1410         -124.952          0.00000         -144.282    
    6      0.00000         -45.3334    
    8     -19.1115          33.1020          0.00000          38.2229    
    9      0.00000         -535.516    
   10     -232.058          401.937          0.00000          464.116    
   11      0.00000         -599.300    
   13     -258.425          447.606          0.00000          516.851    
   14      0.00000         -2329.13    
   15     -1008.03          1745.96          0.00000          2016.06    
   16      0.00000         -1731.71    
   18     -750.644          1300.15          0.00000          1501.29    
   19      0.00000         -3567.65    
   20     -1545.41          2676.73          0.00000          3090.82    
   21      0.00000         -885.584    
   23     -384.086          665.257          0.00000          768.173    
       ---------------  ---------------
 Totals   -4080.94         -2356.19    


 Gauss point stresses and and other state variables
 ==================================================


 Element number    1

 Gauss point  1       R-Coord=   102.7     Z-Coord=   11.53    
 S-rr  =  -0.2811     S-zz  =  -0.4701E-01 S-rz  =  -0.2652E-01 S-h   =  -0.4410E-01
 S-max =  -0.4404E-01 S-min =  -0.2841     Angle =   -83.62    
 S-eff =   0.2400     Eps.  =   0.4036E-02 dgama =   0.4036E-02

 Gauss point  2       R-Coord=   94.73     Z-Coord=   41.37    
 S-rr  =  -0.2455     S-zz  =  -0.8261E-01 S-rz  =  -0.8809E-01 S-h   =  -0.4404E-01
 S-max =  -0.4409E-01 S-min =  -0.2841     Angle =   -66.38    
 S-eff =   0.2400     Eps.  =   0.4033E-02 dgama =   0.4033E-02

 Gauss point  3       R-Coord=   111.9     Z-Coord=   12.56    
 S-rr  =  -0.2399     S-zz  =  -0.5938E-02 S-rz  =  -0.2669E-01 S-h   =  -0.2959E-02
 S-max =  -0.2933E-02 S-min =  -0.2429     Angle =   -83.58    
 S-eff =   0.2400     Eps.  =   0.2753E-02 dgama =   0.2753E-02

 Gauss point  4       R-Coord=   103.2     Z-Coord=   45.07    
 S-rr  =  -0.2045     S-zz  =  -0.4133E-01 S-rz  =  -0.8797E-01 S-h   =  -0.2918E-02
 S-max =  -0.2940E-02 S-min =  -0.2429     Angle =   -66.43    
 S-eff =   0.2400     Eps.  =   0.2753E-02 dgama =   0.2753E-02


 Element number    2

 Gauss point  1       R-Coord=   119.5     Z-Coord=   13.41    
 S-rr  =  -0.2086     S-zz  =   0.2537E-01 S-rz  =  -0.2668E-01 S-h   =   0.2838E-01
 S-max =   0.2837E-01 S-min =  -0.2116     Angle =   -83.58    
 S-eff =   0.2400     Eps.  =   0.1982E-02 dgama =   0.1982E-02

 Gauss point  2       R-Coord=   110.2     Z-Coord=   48.12    
 S-rr  =  -0.1732     S-zz  =  -0.9971E-02 S-rz  =  -0.8795E-01 S-h   =   0.2838E-01
 S-max =   0.2839E-01 S-min =  -0.2116     Angle =   -66.43    
 S-eff =   0.2400     Eps.  =   0.1984E-02 dgama =   0.1984E-02

 Gauss point  3       R-Coord=   130.9     Z-Coord=   14.70    
 S-rr  =  -0.1645     S-zz  =   0.6934E-01 S-rz  =  -0.2699E-01 S-h   =   0.7248E-01
 S-max =   0.7242E-01 S-min =  -0.1676     Angle =   -83.50    
 S-eff =   0.2400     Eps.  =   0.1116E-02 dgama =   0.1116E-02

 Gauss point  4       R-Coord=   120.7     Z-Coord=   52.74    
 S-rr  =  -0.1294     S-zz  =   0.3436E-01 S-rz  =  -0.8775E-01 S-h   =   0.7244E-01
 S-max =   0.7251E-01 S-min =  -0.1675     Angle =   -66.51    
 S-eff =   0.2400     Eps.  =   0.1118E-02 dgama =   0.1118E-02


 Element number    3

 Gauss point  1       R-Coord=   141.0     Z-Coord=   15.83    
 S-rr  =  -0.1289     S-zz  =   0.1049     S-rz  =  -0.2691E-01 S-h   =   0.1081    
 S-max =   0.1080     S-min =  -0.1320     Angle =   -83.52    
 S-eff =   0.2400     Eps.  =   0.5784E-03 dgama =   0.5784E-03

 Gauss point  2       R-Coord=   130.0     Z-Coord=   56.80    
 S-rr  =  -0.9379E-01 S-zz  =   0.6995E-01 S-rz  =  -0.8777E-01 S-h   =   0.1080    
 S-max =   0.1081     S-min =  -0.1319     Angle =   -66.51    
 S-eff =   0.2400     Eps.  =   0.5806E-03 dgama =   0.5806E-03

 Gauss point  3       R-Coord=   157.1     Z-Coord=   17.63    
 S-rr  =  -0.7749E-01 S-zz  =   0.1521     S-rz  =  -0.2670E-01 S-h   =   0.1553    
 S-max =   0.1552     S-min =  -0.8055E-01 Angle =   -83.45    
 S-eff =   0.2358     Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   144.8     Z-Coord=   63.27    
 S-rr  =  -0.4321E-01 S-zz  =   0.1182     S-rz  =  -0.8612E-01 S-h   =   0.1554    
 S-max =   0.1555     S-min =  -0.8053E-01 Angle =   -66.57    
 S-eff =   0.2360     Eps.  =    0.000     dgama =    0.000    


 Element number    4

 Gauss point  1       R-Coord=   170.5     Z-Coord=   19.14    
 S-rr  =  -0.4299E-01 S-zz  =   0.1369     S-rz  =  -0.2090E-01 S-h   =   0.1394    
 S-max =   0.1393     S-min =  -0.4539E-01 Angle =   -83.46    
 S-eff =   0.1848     Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   157.2     Z-Coord=   68.68    
 S-rr  =  -0.1608E-01 S-zz  =   0.1103     S-rz  =  -0.6752E-01 S-h   =   0.1395    
 S-max =   0.1396     S-min =  -0.4536E-01 Angle =   -66.56    
 S-eff =   0.1849     Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       R-Coord=   191.2     Z-Coord=   21.46    
 S-rr  =  -0.7868E-02 S-zz  =   0.1195     S-rz  =  -0.1477E-01 S-h   =   0.1213    
 S-max =   0.1212     S-min =  -0.9558E-02 Angle =   -83.47    
 S-eff =   0.1308     Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   176.3     Z-Coord=   77.00    
 S-rr  =   0.1122E-01 S-zz  =   0.1007     S-rz  =  -0.4785E-01 S-h   =   0.1214    
 S-max =   0.1215     S-min =  -0.9549E-02 Angle =   -66.54    
 S-eff =   0.1310     Eps.  =    0.000     dgama =    0.000    




 INCREMENT NUMBER    3
 =====================


 Total load factor ............... =    0.330000    
 Incremental load factor ......... =    0.300000E-01
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    3                   TOTAL LOAD FACTOR =   0.330000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      35.1658                      2007.73    
        2                      18.8763                      1013.44    
        3                     0.109200E-01                 0.704510    
        4                     0.884348E-06                 0.408142E-04
        5                     0.261265E-12                 0.108457E-10
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.300000E-01
 --------------------------------------------------------------------------


 Results for load increment   3 Load factor =   0.330000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1     0.473394        0.00000    
    2     0.457379       0.122696    
    3     0.410032       0.236732    
    4     0.399350        0.00000    
    5     0.346024       0.199777    
    6     0.341549        0.00000    
    7     0.329659       0.883985E-01
    8     0.296033       0.170915    
    9     0.285308        0.00000    
   10     0.247350       0.142808    
   11     0.243069        0.00000    
   12     0.234245       0.627267E-01
   13     0.210745       0.121674    
   14     0.199942        0.00000    
   15     0.173308       0.100060    
   16     0.171021        0.00000    
   17     0.164454       0.439700E-01
   18     0.148170       0.855458E-01
   19     0.147395        0.00000    
   20     0.127595       0.736672E-01
   21     0.134385        0.00000    
   22     0.129413       0.346373E-01
   23     0.116291       0.671408E-01


 Reactions
 =========

 Node      R-Force          Z-Force          X-Local          Y-Local
    1      0.00000          152.051    
    3      65.5994         -113.621          0.00000         -131.199    
    4      0.00000          383.639    
    5      166.581         -288.527          0.00000         -333.162    
    6      0.00000          86.1439    
    8      37.5037         -64.9583          0.00000         -75.0074    
    9      0.00000         -220.652    
   10     -95.4920          165.397          0.00000          190.984    
   11      0.00000         -385.252    
   13     -165.450          286.568          0.00000          330.900    
   14      0.00000         -1838.22    
   15     -797.141          1380.69          0.00000          1594.28    
   16      0.00000         -1650.04    
   18     -712.542          1234.16          0.00000          1425.08    
   19      0.00000         -5208.80    
   20     -2255.97          3907.45          0.00000          4511.93    
   21      0.00000         -1685.92    
   23     -732.130          1268.09          0.00000          1464.26    
       ---------------  ---------------
 Totals   -4489.04         -2591.81    




 INCREMENT NUMBER    4
 =====================


 Total load factor ............... =    0.332690    
 Incremental load factor ......... =    0.269000E-02
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    4                   TOTAL LOAD FACTOR =   0.332690    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                     0.465741E-01                  3.15469    
        2                     0.548632E-04                 0.353706E-02
        3                     0.226133E-09                 0.163470E-07
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.269000E-02
 --------------------------------------------------------------------------


 Results for load increment   4 Load factor =   0.332690    
 ===========================================================

 Converged solution at iteration number =    3


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1     0.507608        0.00000    
    2     0.490447       0.131570    
    3     0.439641       0.253827    
    4     0.428563        0.00000    
    5     0.371318       0.214380    
    6     0.366777        0.00000    
    7     0.354011       0.949423E-01
    8     0.317890       0.183534    
    9     0.306536        0.00000    
   10     0.265761       0.153437    
   11     0.261156        0.00000    
   12     0.251697       0.674190E-01
   13     0.226450       0.130741    
   14     0.214609        0.00000    
   15     0.186065       0.107424    
   16     0.183114        0.00000    
   17     0.176095       0.470851E-01
   18     0.158699       0.916250E-01
   19     0.156997        0.00000    
   20     0.135956       0.784940E-01
   21     0.143090        0.00000    
   22     0.137801       0.368447E-01
   23     0.123831       0.714936E-01


 Reactions
 =========

 Node      R-Force          Z-Force          X-Local          Y-Local
    1      0.00000          156.478    
    3      67.4505         -116.828          0.00000         -134.901    
    4      0.00000          402.935    
    5      175.148         -303.365          0.00000         -350.296    
    6      0.00000          97.9800    
    8      42.5481         -73.6955          0.00000         -85.0962    
    9      0.00000         -193.103    
   10     -82.9838          143.732          0.00000          165.968    
   11      0.00000         -366.278    
   13     -157.577          272.931          0.00000          315.153    
   14      0.00000         -1791.11    
   15     -776.195          1344.41          0.00000          1552.39    
   16      0.00000         -1576.51    
   18     -680.821          1179.22          0.00000          1361.64    
   19      0.00000         -5354.81    
   20     -2321.63          4021.17          0.00000          4643.25    
   21      0.00000         -1827.14    
   23     -791.572          1371.04          0.00000          1583.14    
       ---------------  ---------------
 Totals   -4525.63         -2612.94    
