

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

 07_5_1.dat


 Title:
 ======

 Example 7.5.1 - Internally pressurised thick-walled cylinder            


 Analysis description:
 =====================

 Analysis type ....................................... =    2
        1 = Plane stress
        2 = Plane strain
        3 = Axisymmetric

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

 Node    X-Coord        Y-Coord

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
 Node      X-Coord.       Y-Coord.       Norm. Load         Tang. Load
    1      100.000        0.00000           1.00000        0.00000    
    2      96.5926        25.8819           1.00000        0.00000    
    3      86.6025        50.0000           1.00000        0.00000    



 Increment control with fixed load increments selected
 =====================================================

       Number of proportional load increments =    5





 INCREMENT NUMBER    1
 =====================


 Total load factor ............... =    0.100000    
 Incremental load factor ......... =    0.100000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    15

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   1
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    1                   TOTAL LOAD FACTOR =   0.100000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                     0.110546E-11                 0.377476E-13
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.100000    
 --------------------------------------------------------------------------


 Results for load increment   1 Load factor =   0.100000    
 ===========================================================

 Converged solution at iteration number =    1


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1     0.908607E-01    0.00000    
    2     0.876665E-01   0.234902E-01
    3     0.786877E-01   0.454304E-01
    4     0.853719E-01    0.00000    
    5     0.739342E-01   0.426859E-01
    6     0.807457E-01    0.00000    
    7     0.779706E-01   0.208922E-01
    8     0.699278E-01   0.403729E-01
    9     0.759180E-01    0.00000    
   10     0.657469E-01   0.379590E-01
   11     0.719398E-01    0.00000    
   12     0.694542E-01   0.186102E-01
   13     0.623017E-01   0.359699E-01
   14     0.674187E-01    0.00000    
   15     0.583863E-01   0.337093E-01
   16     0.638869E-01    0.00000    
   17     0.616788E-01   0.165268E-01
   18     0.553277E-01   0.319435E-01
   19     0.603788E-01    0.00000    
   20     0.522896E-01   0.301894E-01
   21     0.577872E-01    0.00000    
   22     0.558044E-01   0.149527E-01
   23     0.500452E-01   0.288936E-01


 Reactions
 =========

 Node      X-Force          Y-Force          X-Local          Y-Local
    1      0.00000        -0.435778    
    3    -0.217889         0.377395          0.00000         0.435778    
    4      0.00000         -1.58404    
    5    -0.792021          1.37182          0.00000          1.58404    
    6      0.00000        -0.788036    
    8    -0.394018         0.682459          0.00000         0.788036    
    9      0.00000         -1.57045    
   10    -0.785224          1.36005          0.00000          1.57045    
   11      0.00000        -0.835524    
   13    -0.417762         0.723585          0.00000         0.835524    
   14      0.00000         -1.73778    
   15    -0.868892          1.50497          0.00000          1.73778    
   16      0.00000        -0.875468    
   18    -0.437734         0.758178          0.00000         0.875468    
   19      0.00000         -1.77584    
   20    -0.887921          1.53792          0.00000          1.77584    
   21      0.00000        -0.397078    
   23    -0.198539         0.343880          0.00000         0.397078    
       ---------------  ---------------
 Totals   -5.00000         -1.33975    


 Gauss point stresses and and other state variables
 ==================================================


 Element number    1

 Gauss point  1       X-Coord=   102.7     Y-Coord=   11.53    
 S-xx  =  -0.8831E-01 S-yy  =   0.1550     S-xy  =  -0.2776E-01 S-zz  =   0.2000E-01
 S-max =   0.1581     S-min =  -0.9144E-01 Angle =   -83.57    
 S-eff =   0.2165     Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       X-Coord=   94.73     Y-Coord=   41.37    
 S-xx  =  -0.5153E-01 S-yy  =   0.1182     S-xy  =  -0.9147E-01 S-zz  =   0.2000E-01
 S-max =   0.1581     S-min =  -0.9144E-01 Angle =   -66.43    
 S-eff =   0.2165     Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       X-Coord=   111.9     Y-Coord=   12.56    
 S-xx  =  -0.6916E-01 S-yy  =   0.1358     S-xy  =  -0.2329E-01 S-zz  =   0.2000E-01
 S-max =   0.1384     S-min =  -0.7178E-01 Angle =   -83.60    
 S-eff =   0.1825     Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       X-Coord=   103.2     Y-Coord=   45.07    
 S-xx  =  -0.3809E-01 S-yy  =   0.1048     S-xy  =  -0.7712E-01 S-zz  =   0.2000E-01
 S-max =   0.1384     S-min =  -0.7178E-01 Angle =   -66.40    
 S-eff =   0.1825     Eps.  =    0.000     dgama =    0.000    


 Element number    2

 Gauss point  1       X-Coord=   119.5     Y-Coord=   13.41    
 S-xx  =  -0.5664E-01 S-yy  =   0.1233     S-xy  =  -0.2042E-01 S-zz  =   0.2000E-01
 S-max =   0.1256     S-min =  -0.5893E-01 Angle =   -83.61    
 S-eff =   0.1604     Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       X-Coord=   110.2     Y-Coord=   48.12    
 S-xx  =  -0.2934E-01 S-yy  =   0.9600E-01 S-xy  =  -0.6771E-01 S-zz  =   0.2000E-01
 S-max =   0.1256     S-min =  -0.5893E-01 Angle =   -66.39    
 S-eff =   0.1604     Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       X-Coord=   130.9     Y-Coord=   14.70    
 S-xx  =  -0.4152E-01 S-yy  =   0.1082     S-xy  =  -0.1704E-01 S-zz  =   0.2000E-01
 S-max =   0.1101     S-min =  -0.4344E-01 Angle =   -83.59    
 S-eff =   0.1336     Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       X-Coord=   120.7     Y-Coord=   52.74    
 S-xx  =  -0.1885E-01 S-yy  =   0.8552E-01 S-xy  =  -0.5631E-01 S-zz  =   0.2000E-01
 S-max =   0.1101     S-min =  -0.4344E-01 Angle =   -66.41    
 S-eff =   0.1336     Eps.  =    0.000     dgama =    0.000    


 Element number    3

 Gauss point  1       X-Coord=   141.0     Y-Coord=   15.83    
 S-xx  =  -0.3124E-01 S-yy  =   0.9791E-01 S-xy  =  -0.1467E-01 S-zz  =   0.2000E-01
 S-max =   0.9956E-01 S-min =  -0.3289E-01 Angle =   -83.60    
 S-eff =   0.1155     Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       X-Coord=   130.0     Y-Coord=   56.80    
 S-xx  =  -0.1166E-01 S-yy  =   0.7833E-01 S-xy  =  -0.4859E-01 S-zz  =   0.2000E-01
 S-max =   0.9956E-01 S-min =  -0.3289E-01 Angle =   -66.40    
 S-eff =   0.1155     Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       X-Coord=   157.1     Y-Coord=   17.63    
 S-xx  =  -0.1867E-01 S-yy  =   0.8534E-01 S-xy  =  -0.1184E-01 S-zz  =   0.2000E-01
 S-max =   0.8667E-01 S-min =  -0.2000E-01 Angle =   -83.59    
 S-eff =   0.9334E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       X-Coord=   144.8     Y-Coord=   63.27    
 S-xx  =  -0.2923E-02 S-yy  =   0.6959E-01 S-xy  =  -0.3912E-01 S-zz  =   0.2000E-01
 S-max =   0.8667E-01 S-min =  -0.2000E-01 Angle =   -66.41    
 S-eff =   0.9334E-01 Eps.  =    0.000     dgama =    0.000    


 Element number    4

 Gauss point  1       X-Coord=   170.5     Y-Coord=   19.14    
 S-xx  =  -0.1083E-01 S-yy  =   0.7750E-01 S-xy  =  -0.1003E-01 S-zz  =   0.2000E-01
 S-max =   0.7863E-01 S-min =  -0.1196E-01 Angle =   -83.60    
 S-eff =   0.7957E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       X-Coord=   157.2     Y-Coord=   68.68    
 S-xx  =   0.2564E-02 S-yy  =   0.6410E-01 S-xy  =  -0.3324E-01 S-zz  =   0.2000E-01
 S-max =   0.7863E-01 S-min =  -0.1196E-01 Angle =   -66.40    
 S-eff =   0.7957E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       X-Coord=   191.2     Y-Coord=   21.46    
 S-xx  =  -0.1781E-02 S-yy  =   0.6845E-01 S-xy  =  -0.7971E-02 S-zz  =   0.2000E-01
 S-max =   0.6934E-01 S-min =  -0.2675E-02 Angle =   -83.61    
 S-eff =   0.6378E-01 Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       X-Coord=   176.3     Y-Coord=   77.00    
 S-xx  =   0.8873E-02 S-yy  =   0.5779E-01 S-xy  =  -0.2642E-01 S-zz  =   0.2000E-01
 S-max =   0.6934E-01 S-min =  -0.2675E-02 Angle =   -66.39    
 S-eff =   0.6378E-01 Eps.  =    0.000     dgama =    0.000    




 INCREMENT NUMBER    2
 =====================


 Total load factor ............... =    0.140000    
 Incremental load factor ......... =    0.400000E-01
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    15

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    2                   TOTAL LOAD FACTOR =   0.140000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      20.1898                     0.850041    
        2                     0.646076                     0.226614E-01
        3                     0.550371E-03                 0.233964E-04
        4                     0.339473E-09                 0.159766E-10
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.400000E-01
 --------------------------------------------------------------------------


 Results for load increment   2 Load factor =   0.140000    
 ===========================================================

 Converged solution at iteration number =    4


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1     0.139443        0.00000    
    2     0.134506       0.360407E-01
    3     0.120762       0.697217E-01
    4     0.129427        0.00000    
    5     0.112087       0.647137E-01
    6     0.121652        0.00000    
    7     0.117461       0.314736E-01
    8     0.105353       0.608258E-01
    9     0.114341        0.00000    
   10     0.990226E-01   0.571707E-01
   11     0.108344        0.00000    
   12     0.104602       0.280281E-01
   13     0.938285E-01   0.541719E-01
   14     0.101536        0.00000    
   15     0.879324E-01   0.507678E-01
   16     0.962173E-01    0.00000    
   17     0.928913E-01   0.248901E-01
   18     0.833266E-01   0.481086E-01
   19     0.909336E-01    0.00000    
   20     0.787508E-01   0.454668E-01
   21     0.870303E-01    0.00000    
   22     0.840443E-01   0.225196E-01
   23     0.753705E-01   0.435152E-01


 Reactions
 =========

 Node      X-Force          Y-Force          X-Local          Y-Local
    1      0.00000        -0.361708    
    3    -0.180854         0.313248          0.00000         0.361708    
    4      0.00000         -1.68784    
    5    -0.843920          1.46171          0.00000          1.68784    
    6      0.00000         -1.12741    
    8    -0.563704         0.976364          0.00000          1.12741    
    9      0.00000         -2.35463    
   10     -1.17731          2.03917          0.00000          2.35463    
   11      0.00000         -1.26026    
   13    -0.630129          1.09142          0.00000          1.26026    
   14      0.00000         -2.61711    
   15     -1.30856          2.26648          0.00000          2.61711    
   16      0.00000         -1.31851    
   18    -0.659253          1.14186          0.00000          1.31851    
   19      0.00000         -2.67453    
   20     -1.33726          2.31621          0.00000          2.67453    
   21      0.00000        -0.598014    
   23    -0.299007         0.517895          0.00000         0.598014    
       ---------------  ---------------
 Totals   -7.00000         -1.87564    




 INCREMENT NUMBER    3
 =====================


 Total load factor ............... =    0.180000    
 Incremental load factor ......... =    0.400000E-01
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    15

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   1
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    3                   TOTAL LOAD FACTOR =   0.180000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      20.4048                      1.29839    
        2                      1.82043                     0.831778E-01
        3                     0.143508E-01                 0.778683E-03
        4                     0.418008E-06                 0.249990E-07
        5                     0.453195E-12                 0.206501E-13
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.400000E-01
 --------------------------------------------------------------------------


 Results for load increment   3 Load factor =   0.180000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1     0.262860        0.00000    
    2     0.253559       0.679410E-01
    3     0.227643       0.131430    
    4     0.242022        0.00000    
    5     0.209597       0.121011    
    6     0.224896        0.00000    
    7     0.217134       0.581810E-01
    8     0.194766       0.112448    
    9     0.207604        0.00000    
   10     0.179790       0.103802    
   11     0.194074        0.00000    
   12     0.187335       0.501962E-01
   13     0.168073       0.970369E-01
   14     0.179829        0.00000    
   15     0.155737       0.899146E-01
   16     0.170017        0.00000    
   17     0.164131       0.439787E-01
   18     0.147239       0.850085E-01
   19     0.160677        0.00000    
   20     0.139150       0.803384E-01
   21     0.153776        0.00000    
   22     0.148503       0.397912E-01
   23     0.133174       0.768879E-01


 Reactions
 =========

 Node      X-Force          Y-Force          X-Local          Y-Local
    1      0.00000        -0.254515    
    3    -0.127257         0.220416          0.00000         0.254515    
    4      0.00000         -1.26186    
    5    -0.630932          1.09281          0.00000          1.26186    
    6      0.00000        -0.833899    
    8    -0.416950         0.722178          0.00000         0.833899    
    9      0.00000         -2.14080    
   10     -1.07040          1.85399          0.00000          2.14080    
   11      0.00000         -1.46574    
   13    -0.732872          1.26937          0.00000          1.46574    
   14      0.00000         -3.86866    
   15     -1.93433          3.35036          0.00000          3.86866    
   16      0.00000         -2.39178    
   18     -1.19589          2.07135          0.00000          2.39178    
   19      0.00000         -4.72624    
   20     -2.36312          4.09304          0.00000          4.72624    
   21      0.00000         -1.05650    
   23    -0.528250         0.914956          0.00000          1.05650    
       ---------------  ---------------
 Totals   -9.00000         -2.41154    


 Gauss point stresses and and other state variables
 ==================================================


 Element number    1

 Gauss point  1       X-Coord=   102.7     Y-Coord=   11.53    
 S-xx  =  -0.1673     S-yy  =   0.1028     S-xy  =  -0.3082E-01 S-zz  =  -0.2616E-01
 S-max =   0.1063     S-min =  -0.1708     Angle =   -83.57    
 S-eff =   0.2400     Eps.  =   0.1941E-02 dgama =   0.1448E-02

 Gauss point  2       X-Coord=   94.73     Y-Coord=   41.37    
 S-xx  =  -0.1265     S-yy  =   0.6196E-01 S-xy  =  -0.1015     S-zz  =  -0.2616E-01
 S-max =   0.1063     S-min =  -0.1708     Angle =   -66.43    
 S-eff =   0.2400     Eps.  =   0.1941E-02 dgama =   0.1448E-02

 Gauss point  3       X-Coord=   111.9     Y-Coord=   12.56    
 S-xx  =  -0.1436     S-yy  =   0.1266     S-xy  =  -0.3073E-01 S-zz  =  -0.5976E-02
 S-max =   0.1300     S-min =  -0.1471     Angle =   -83.59    
 S-eff =   0.2400     Eps.  =   0.1410E-02 dgama =   0.1213E-02

 Gauss point  4       X-Coord=   103.2     Y-Coord=   45.07    
 S-xx  =  -0.1027     S-yy  =   0.8564E-01 S-xy  =  -0.1016     S-zz  =  -0.5976E-02
 S-max =   0.1300     S-min =  -0.1471     Angle =   -66.41    
 S-eff =   0.2400     Eps.  =   0.1410E-02 dgama =   0.1213E-02


 Element number    2

 Gauss point  1       X-Coord=   119.5     Y-Coord=   13.41    
 S-xx  =  -0.1255     S-yy  =   0.1447     S-xy  =  -0.3067E-01 S-zz  =   0.7689E-02
 S-max =   0.1482     S-min =  -0.1289     Angle =   -83.61    
 S-eff =   0.2400     Eps.  =   0.1065E-02 dgama =   0.1057E-02

 Gauss point  2       X-Coord=   110.2     Y-Coord=   48.12    
 S-xx  =  -0.8451E-01 S-yy  =   0.1037     S-xy  =  -0.1017     S-zz  =   0.7689E-02
 S-max =   0.1482     S-min =  -0.1289     Angle =   -66.39    
 S-eff =   0.2400     Eps.  =   0.1065E-02 dgama =   0.1057E-02

 Gauss point  3       X-Coord=   130.9     Y-Coord=   14.70    
 S-xx  =  -0.1001     S-yy  =   0.1699     S-xy  =  -0.3076E-01 S-zz  =   0.2602E-01
 S-max =   0.1734     S-min =  -0.1036     Angle =   -83.58    
 S-eff =   0.2400     Eps.  =   0.6515E-03 dgama =   0.6515E-03

 Gauss point  4       X-Coord=   120.7     Y-Coord=   52.74    
 S-xx  =  -0.5923E-01 S-yy  =   0.1290     S-xy  =  -0.1015     S-zz  =   0.2602E-01
 S-max =   0.1734     S-min =  -0.1036     Angle =   -66.42    
 S-eff =   0.2400     Eps.  =   0.6515E-03 dgama =   0.6515E-03


 Element number    3

 Gauss point  1       X-Coord=   141.0     Y-Coord=   15.83    
 S-xx  =  -0.7957E-01 S-yy  =   0.1900     S-xy  =  -0.3062E-01 S-zz  =   0.3859E-01
 S-max =   0.1935     S-min =  -0.8300E-01 Angle =   -83.60    
 S-eff =   0.2400     Eps.  =   0.3742E-03 dgama =   0.3742E-03

 Gauss point  2       X-Coord=   130.0     Y-Coord=   56.80    
 S-xx  =  -0.3869E-01 S-yy  =   0.1491     S-xy  =  -0.1014     S-zz  =   0.3859E-01
 S-max =   0.1935     S-min =  -0.8300E-01 Angle =   -66.40    
 S-eff =   0.2400     Eps.  =   0.3742E-03 dgama =   0.3742E-03

 Gauss point  3       X-Coord=   157.1     Y-Coord=   17.63    
 S-xx  =  -0.4988E-01 S-yy  =   0.2179     S-xy  =  -0.3048E-01 S-zz  =   0.5168E-01
 S-max =   0.2213     S-min =  -0.5331E-01 Angle =   -83.59    
 S-eff =   0.2400     Eps.  =   0.4534E-04 dgama =   0.4534E-04

 Gauss point  4       X-Coord=   144.8     Y-Coord=   63.27    
 S-xx  =  -0.9339E-02 S-yy  =   0.1773     S-xy  =  -0.1007     S-zz  =   0.5168E-01
 S-max =   0.2213     S-min =  -0.5331E-01 Angle =   -66.41    
 S-eff =   0.2400     Eps.  =   0.4534E-04 dgama =   0.4534E-04


 Element number    4

 Gauss point  1       X-Coord=   170.5     Y-Coord=   19.14    
 S-xx  =  -0.2883E-01 S-yy  =   0.2062     S-xy  =  -0.2670E-01 S-zz  =   0.5322E-01
 S-max =   0.2092     S-min =  -0.3183E-01 Angle =   -83.60    
 S-eff =   0.2118     Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       X-Coord=   157.2     Y-Coord=   68.68    
 S-xx  =   0.6814E-02 S-yy  =   0.1706     S-xy  =  -0.8844E-01 S-zz  =   0.5322E-01
 S-max =   0.2092     S-min =  -0.3183E-01 Angle =   -66.40    
 S-eff =   0.2118     Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       X-Coord=   191.2     Y-Coord=   21.46    
 S-xx  =  -0.4741E-02 S-yy  =   0.1821     S-xy  =  -0.2121E-01 S-zz  =   0.5322E-01
 S-max =   0.1845     S-min =  -0.7118E-02 Angle =   -83.61    
 S-eff =   0.1697     Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       X-Coord=   176.3     Y-Coord=   77.00    
 S-xx  =   0.2361E-01 S-yy  =   0.1538     S-xy  =  -0.7032E-01 S-zz  =   0.5322E-01
 S-max =   0.1845     S-min =  -0.7118E-02 Angle =   -66.39    
 S-eff =   0.1697     Eps.  =    0.000     dgama =    0.000    




 INCREMENT NUMBER    4
 =====================


 Total load factor ............... =    0.190000    
 Incremental load factor ......... =    0.100000E-01
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    15

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    4                   TOTAL LOAD FACTOR =   0.190000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      7.00328                     0.468620    
        2                     0.425642                     0.308837E-01
        3                     0.394806E-03                 0.284343E-04
        4                     0.344950E-09                 0.247585E-10
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.100000E-01
 --------------------------------------------------------------------------


 Results for load increment   4 Load factor =   0.190000    
 ===========================================================

 Converged solution at iteration number =    4


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1     0.367226        0.00000    
    2     0.354241       0.949186E-01
    3     0.318027       0.183613    
    4     0.338167        0.00000    
    5     0.292861       0.169084    
    6     0.313967        0.00000    
    7     0.303132       0.812239E-01
    8     0.271903       0.156983    
    9     0.289109        0.00000    
   10     0.250376       0.144554    
   11     0.269160        0.00000    
   12     0.259819       0.696182E-01
   13     0.233099       0.134580    
   14     0.247379        0.00000    
   15     0.214237       0.123690    
   16     0.231427        0.00000    
   17     0.223390       0.598572E-01
   18     0.200422       0.115713    
   19     0.217025        0.00000    
   20     0.187950       0.108513    
   21     0.207583        0.00000    
   22     0.200452       0.537108E-01
   23     0.179772       0.103791    


 Reactions
 =========

 Node      X-Force          Y-Force          X-Local          Y-Local
    1      0.00000        -0.227967    
    3    -0.113983         0.197425          0.00000         0.227967    
    4      0.00000         -1.15532    
    5    -0.577662          1.00054          0.00000          1.15532    
    6      0.00000        -0.773531    
    8    -0.386766         0.669898          0.00000         0.773531    
    9      0.00000         -2.00903    
   10     -1.00452          1.73987          0.00000          2.00903    
   11      0.00000         -1.38657    
   13    -0.693283          1.20080          0.00000          1.38657    
   14      0.00000         -3.70210    
   15     -1.85105          3.20611          0.00000          3.70210    
   16      0.00000         -2.41945    
   18     -1.20972          2.09530          0.00000          2.41945    
   19      0.00000         -5.79635    
   20     -2.89817          5.01979          0.00000          5.79635    
   21      0.00000         -1.52968    
   23    -0.764840          1.32474          0.00000          1.52968    
       ---------------  ---------------
 Totals   -9.50000         -2.54552    




 INCREMENT NUMBER    5
 =====================


 Total load factor ............... =    0.192000    
 Incremental load factor ......... =    0.200000E-02
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    15

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    5                   TOTAL LOAD FACTOR =   0.192000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      2.84703                     0.200586    
        2                      1.99656                     0.164228    
        3                      1.04441                     0.864027E-01
        4                     0.445567                     0.360573E-01
        5                     0.106066                     0.850021E-02
        6                     0.670889E-02                 0.536069E-03
        7                     0.254631E-04                 0.203294E-05
        8                     0.352511E-09                 0.281452E-10
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.200000E-02
 --------------------------------------------------------------------------


 Results for load increment   5 Load factor =   0.192000    
 ===========================================================

 Converged solution at iteration number =    8


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1      1.12283        0.00000    
    2      1.08319       0.290241    
    3     0.972399       0.561415    
    4      1.03739        0.00000    
    5     0.898406       0.518695    
    6     0.964727        0.00000    
    7     0.931455       0.249583    
    8     0.835478       0.482364    
    9     0.888048        0.00000    
   10     0.769072       0.444024    
   11     0.824112        0.00000    
   12     0.795537       0.213164    
   13     0.713702       0.412056    
   14     0.750496        0.00000    
   15     0.649949       0.375248    
   16     0.691972        0.00000    
   17     0.667921       0.178969    
   18     0.599265       0.345986    
   19     0.632629        0.00000    
   20     0.547872       0.316314    
   21     0.587550        0.00000    
   22     0.567344       0.152019    
   23     0.508833       0.293775    


 Reactions
 =========

 Node      X-Force          Y-Force          X-Local          Y-Local
    1      0.00000        -0.222812    
    3    -0.111406         0.192961          0.00000         0.222812    
    4      0.00000         -1.13459    
    5    -0.567293         0.982580          0.00000          1.13459    
    6      0.00000        -0.761424    
    8    -0.380712         0.659413          0.00000         0.761424    
    9      0.00000         -1.98293    
   10    -0.991465          1.71727          0.00000          1.98293    
   11      0.00000         -1.36971    
   13    -0.684856          1.18621          0.00000          1.36971    
   14      0.00000         -3.67589    
   15     -1.83795          3.18341          0.00000          3.67589    
   16      0.00000         -2.38159    
   18     -1.19079          2.06252          0.00000          2.38159    
   19      0.00000         -6.00314    
   20     -3.00157          5.19887          0.00000          6.00314    
   21      0.00000         -1.66792    
   23    -0.833959          1.44446          0.00000          1.66792    
       ---------------  ---------------
 Totals   -9.60000         -2.57231    
