

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

 07_5_2_residstress.dat


 Title:
 ======

 Example 7.5.2 - Internally press. thick-walled sphere (resid. stresses) 


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

       Number of proportional load increments =    3





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
 State variables at gauss points.... =   0
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




 INCREMENT NUMBER    2
 =====================


 Total load factor ............... =    0.280000    
 Incremental load factor ......... =    0.130000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    2                   TOTAL LOAD FACTOR =   0.280000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      50.3983                      2393.84    
        2                      28.7786                      1255.27    
        3                      8.37548                      347.342    
        4                     0.182661E-02                 0.104818    
        5                     0.317683E-07                 0.115818E-05
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.130000    
 --------------------------------------------------------------------------


 Results for load increment   2 Load factor =   0.280000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1     0.198570        0.00000    
    2     0.191606       0.513773E-01
    3     0.172061       0.993394E-01
    4     0.165890        0.00000    
    5     0.143777       0.830095E-01
    6     0.141128        0.00000    
    7     0.136099       0.364619E-01
    8     0.122331       0.706277E-01
    9     0.118104        0.00000    
   10     0.102369       0.591028E-01
   11     0.102040        0.00000    
   12     0.982522E-01   0.262939E-01
   13     0.884292E-01   0.510546E-01
   14     0.875013E-01    0.00000    
   15     0.757956E-01   0.437606E-01
   16     0.778064E-01    0.00000    
   17     0.748825E-01   0.200424E-01
   18     0.673852E-01   0.389048E-01
   19     0.690007E-01    0.00000    
   20     0.597503E-01   0.344968E-01
   21     0.630645E-01    0.00000    
   22     0.607541E-01   0.162641E-01
   23     0.546019E-01   0.315244E-01


 Reactions
 =========

 Node      R-Force          Z-Force          X-Local          Y-Local
    1      0.00000          70.6059    
    3      30.7416         -53.2461          0.00000         -61.4832    
    4      0.00000          21.5810    
    5      9.40237         -16.2854          0.00000         -18.8047    
    6      0.00000         -133.119    
    8     -57.0060          98.7373          0.00000          114.012    
    9      0.00000         -746.995    
   10     -323.686          560.641          0.00000          647.373    
   11      0.00000         -822.785    
   13     -355.084          615.024          0.00000          710.169    
   14      0.00000         -2239.81    
   15     -969.997          1680.08          0.00000          1939.99    
   16      0.00000         -1341.65    
   18     -581.835          1007.77          0.00000          1163.67    
   19      0.00000         -2886.84    
   20     -1250.50          2165.92          0.00000          2500.99    
   21      0.00000         -717.274    
   23     -310.920          538.529          0.00000          621.840    
       ---------------  ---------------
 Totals   -3808.88         -2199.11    




 INCREMENT NUMBER    3
 =====================


 Total load factor ............... =     0.00000    
 Incremental load factor ......... =   -0.280000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   1
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    3                   TOTAL LOAD FACTOR =    0.00000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                     0.273612E-11                 0.300133E-10
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =  -0.280000    
 --------------------------------------------------------------------------


 Results for load increment   3 Load factor =    0.00000    
 ===========================================================

 Converged solution at iteration number =    1


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1     0.915598E-01    0.00000    
    2     0.887610E-01   0.238312E-01
    3     0.793474E-01   0.458112E-01
    4     0.725506E-01    0.00000    
    5     0.629093E-01   0.363207E-01
    6     0.585754E-01    0.00000    
    7     0.565240E-01   0.151520E-01
    8     0.508105E-01   0.293355E-01
    9     0.460277E-01    0.00000    
   10     0.399272E-01   0.230520E-01
   11     0.380038E-01    0.00000    
   12     0.365844E-01   0.978194E-02
   13     0.329547E-01   0.190264E-01
   14     0.319591E-01    0.00000    
   15     0.276819E-01   0.159822E-01
   16     0.283713E-01    0.00000    
   17     0.272998E-01   0.730422E-02
   18     0.245647E-01   0.141824E-01
   19     0.251602E-01    0.00000    
   20     0.217801E-01   0.125747E-01
   21     0.229949E-01    0.00000    
   22     0.221492E-01   0.593031E-02
   23     0.199023E-01   0.114906E-01


 Reactions
 =========

 Node      R-Force          Z-Force          X-Local          Y-Local
    1      0.00000          388.460    
    3      167.297         -289.767          0.00000         -334.594    
    4      0.00000          1242.73    
    5      538.308         -932.376          0.00000         -1076.62    
    6      0.00000          485.610    
    8      210.912         -365.310          0.00000         -421.823    
    9      0.00000          522.154    
   10      225.921         -391.307          0.00000         -451.843    
   11      0.00000         -119.625    
   13     -50.5201          87.5034          0.00000          101.040    
   14      0.00000         -696.268    
   15     -301.482          522.182          0.00000          602.964    
   16      0.00000         -508.948    
   18     -221.176          383.088          0.00000          442.352    
   19      0.00000         -1052.58    
   20     -455.962          789.750          0.00000          911.925    
   21      0.00000         -261.530    
   23     -113.296          196.235          0.00000          226.593    
       ---------------  ---------------
 Totals   0.118027E-02    -0.112550E-10


 Gauss point stresses and and other state variables
 ==================================================


 Element number    1

 Gauss point  1       R-Coord=   102.7     Z-Coord=   11.53    
 S-rr  =  -0.1707E-01 S-zz  =  -0.2062     S-rz  =   0.2257E-01 S-h   =  -0.2090    
 S-max =  -0.1441E-01 S-min =  -0.2089     Angle =    6.712    
 S-eff =   0.1945     Eps.  =   0.2961E-02 dgama =    0.000    

 Gauss point  2       R-Coord=   94.73     Z-Coord=   41.37    
 S-rr  =  -0.4476E-01 S-zz  =  -0.1788     S-rz  =   0.7065E-01 S-h   =  -0.2090    
 S-max =  -0.1440E-01 S-min =  -0.2092     Angle =    23.26    
 S-eff =   0.1947     Eps.  =   0.2960E-02 dgama =    0.000    

 Gauss point  3       R-Coord=   111.9     Z-Coord=   12.56    
 S-rr  =  -0.4020E-01 S-zz  =  -0.1335     S-rz  =   0.1087E-01 S-h   =  -0.1348    
 S-max =  -0.3895E-01 S-min =  -0.1347     Angle =    6.560    
 S-eff =   0.9580E-01 Eps.  =   0.1923E-02 dgama =    0.000    

 Gauss point  4       R-Coord=   103.2     Z-Coord=   45.07    
 S-rr  =  -0.5407E-01 S-zz  =  -0.1198     S-rz  =   0.3499E-01 S-h   =  -0.1349    
 S-max =  -0.3894E-01 S-min =  -0.1349     Angle =    23.39    
 S-eff =   0.9597E-01 Eps.  =   0.1924E-02 dgama =    0.000    


 Element number    2

 Gauss point  1       R-Coord=   119.5     Z-Coord=   13.41    
 S-rr  =  -0.4794E-01 S-zz  =  -0.8321E-01 S-rz  =   0.4192E-02 S-h   =  -0.8375E-01
 S-max =  -0.4745E-01 S-min =  -0.8370E-01 Angle =    6.686    
 S-eff =   0.3628E-01 Eps.  =   0.1299E-02 dgama =    0.000    

 Gauss point  2       R-Coord=   110.2     Z-Coord=   48.12    
 S-rr  =  -0.5315E-01 S-zz  =  -0.7819E-01 S-rz  =   0.1324E-01 S-h   =  -0.8385E-01
 S-max =  -0.4745E-01 S-min =  -0.8390E-01 Angle =    23.30    
 S-eff =   0.3642E-01 Eps.  =   0.1301E-02 dgama =    0.000    

 Gauss point  3       R-Coord=   130.9     Z-Coord=   14.70    
 S-rr  =  -0.4734E-01 S-zz  =  -0.1771E-01 S-rz  =  -0.3390E-02 S-h   =  -0.1730E-01
 S-max =  -0.1733E-01 S-min =  -0.4772E-01 Angle =   -83.55    
 S-eff =   0.3041E-01 Eps.  =   0.5978E-03 dgama =    0.000    

 Gauss point  4       R-Coord=   120.7     Z-Coord=   52.74    
 S-rr  =  -0.4286E-01 S-zz  =  -0.2227E-01 S-rz  =  -0.1111E-01 S-h   =  -0.1744E-01
 S-max =  -0.1741E-01 S-min =  -0.4772E-01 Angle =   -66.41    
 S-eff =   0.3029E-01 Eps.  =   0.6000E-03 dgama =    0.000    


 Element number    3

 Gauss point  1       R-Coord=   141.0     Z-Coord=   15.83    
 S-rr  =  -0.3812E-01 S-zz  =   0.3199E-01 S-rz  =  -0.8069E-02 S-h   =   0.3299E-01
 S-max =   0.3291E-01 S-min =  -0.3903E-01 Angle =   -83.52    
 S-eff =   0.7198E-01 Eps.  =   0.1626E-03 dgama =    0.000    

 Gauss point  2       R-Coord=   130.0     Z-Coord=   56.80    
 S-rr  =  -0.2765E-01 S-zz  =   0.2147E-01 S-rz  =  -0.2627E-01 S-h   =   0.3279E-01
 S-max =   0.3287E-01 S-min =  -0.3905E-01 Angle =   -66.54    
 S-eff =   0.7188E-01 Eps.  =   0.1647E-03 dgama =    0.000    

 Gauss point  3       R-Coord=   157.1     Z-Coord=   17.63    
 S-rr  =  -0.2286E-01 S-zz  =   0.4487E-01 S-rz  =  -0.7862E-02 S-h   =   0.4583E-01
 S-max =   0.4577E-01 S-min =  -0.2376E-01 Angle =   -83.46    
 S-eff =   0.6956E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   144.8     Z-Coord=   63.27    
 S-rr  =  -0.1274E-01 S-zz  =   0.3493E-01 S-rz  =  -0.2542E-01 S-h   =   0.4587E-01
 S-max =   0.4594E-01 S-min =  -0.2375E-01 Angle =   -66.58    
 S-eff =   0.6966E-01 Eps.  =    0.000     dgama =    0.000    


 Element number    4

 Gauss point  1       R-Coord=   170.5     Z-Coord=   19.14    
 S-rr  =  -0.1269E-01 S-zz  =   0.4040E-01 S-rz  =  -0.6168E-02 S-h   =   0.4115E-01
 S-max =   0.4111E-01 S-min =  -0.1340E-01 Angle =   -83.46    
 S-eff =   0.5452E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   157.2     Z-Coord=   68.68    
 S-rr  =  -0.4735E-02 S-zz  =   0.3256E-01 S-rz  =  -0.1993E-01 S-h   =   0.4117E-01
 S-max =   0.4121E-01 S-min =  -0.1338E-01 Angle =   -66.55    
 S-eff =   0.5457E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       R-Coord=   191.2     Z-Coord=   21.46    
 S-rr  =  -0.2322E-02 S-zz  =   0.3528E-01 S-rz  =  -0.4363E-02 S-h   =   0.3580E-01
 S-max =   0.3578E-01 S-min =  -0.2822E-02 Angle =   -83.47    
 S-eff =   0.3862E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   176.3     Z-Coord=   77.00    
 S-rr  =   0.3312E-02 S-zz  =   0.2970E-01 S-rz  =  -0.1412E-01 S-h   =   0.3581E-01
 S-max =   0.3583E-01 S-min =  -0.2816E-02 Angle =   -66.53    
 S-eff =   0.3864E-01 Eps.  =    0.000     dgama =    0.000    
