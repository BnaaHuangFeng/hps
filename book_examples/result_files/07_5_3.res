

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

 07_5_3.dat


 Title:
 ======

 Example 7.5.3 - Simply supported uniformly loaded circular plate        


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
 Young's modulus ................................... =   0.100000E+08
 Poisson's ratio ................................... =   0.240000    

 Number of points on hardening curve ............... =  2

           Epstn        uniaxial yield stress 

         0.00000             16000.0    
         1.00000             16000.0    


 Element connectivities:      Number of elements =    10
 =======================

 Elem.  Group             Node numbers

   1       1              1   19   11   20   16   21   13   22
   2       1             13   21   16   23   10   24    2   25
   3       1              3   26   18   27   17   28    4   29
   4       1             18   30    7   31   12   32   17   27
   5       1              3   33    5   34   14   35   18   26
   6       1             18   35   14   36    6   37    7   30
   7       1              5   38    8   39   15   40   14   34
   8       1             14   40   15   41    9   42    6   36
   9       1             10   23   16   43   17   32   12   44
  10       1             16   20   11   45    4   28   17   43


 Nodal point co-ordinates:       Number of nodes =    45
 =========================

 Node    R-Coord        Z-Coord

    1    0.00000        0.00000    
    2    0.00000        1.00000    
    3    6.00000        0.00000    
    4    4.00000        0.00000    
    5    8.00000        0.00000    
    6    8.00000        1.00000    
    7    6.00000        1.00000    
    8    10.0000        0.00000    
    9    10.0000        1.00000    
   10    2.00000        1.00000    
   11    2.00000        0.00000    
   12    4.00000        1.00000    
   13    0.00000       0.500000    
   14    8.00000       0.500000    
   15    10.0000       0.500000    
   16    2.00000       0.500000    
   17    4.00000       0.500000    
   18    6.00000       0.500000    
   19    1.00000        0.00000    
   20    2.00000       0.250000    
   21    1.00000       0.500000    
   22    0.00000       0.250000    
   23    2.00000       0.750000    
   24    1.00000        1.00000    
   25    0.00000       0.750000    
   26    6.00000       0.250000    
   27    5.00000       0.500000    
   28    4.00000       0.250000    
   29    5.00000        0.00000    
   30    6.00000       0.750000    
   31    5.00000        1.00000    
   32    4.00000       0.750000    
   33    7.00000        0.00000    
   34    8.00000       0.250000    
   35    7.00000       0.500000    
   36    8.00000       0.750000    
   37    7.00000        1.00000    
   38    9.00000        0.00000    
   39    10.0000       0.250000    
   40    9.00000       0.500000    
   41    10.0000       0.750000    
   42    9.00000        1.00000    
   43    3.00000       0.500000    
   44    3.00000        1.00000    
   45    3.00000        0.00000    


 Prescribed displacements:    Number of nodes with prescribed displacement =     6
 =========================

 Node   Code             Prescribed values                 Angle

    1     10       0.00000        0.00000        0.00000    
    2     10       0.00000        0.00000        0.00000    
    8      1       0.00000        0.00000        0.00000    
   13     10       0.00000        0.00000        0.00000    
   22     10       0.00000        0.00000        0.00000    
   25     10       0.00000        0.00000        0.00000    



 No Master/Slave nodal constraints specified
 ===========================================



 Maximum frontwidth encountered =   40



 Loading specification (other than prescribed displacements)
 ===========================================================

    If any of the flags below is set to 1,  then
    the corresponding type of loading is applied
    to the structure.

 Point loading flag ...........................=  0
 Gravity loading flag .........................=  0
 Distributed edge loading flag ................=  1


 Edge load applied in      5 edges
 ---------------------------------

 Element Number =    2
 Node      R-Coord.       Z-Coord.       Norm. Load         Tang. Load
   10      2.00000        1.00000           1.00000        0.00000    
   24      1.00000        1.00000           1.00000        0.00000    
    2      0.00000        1.00000           1.00000        0.00000    

 Element Number =    4
 Node      R-Coord.       Z-Coord.       Norm. Load         Tang. Load
    7      6.00000        1.00000           1.00000        0.00000    
   31      5.00000        1.00000           1.00000        0.00000    
   12      4.00000        1.00000           1.00000        0.00000    

 Element Number =    6
 Node      R-Coord.       Z-Coord.       Norm. Load         Tang. Load
    6      8.00000        1.00000           1.00000        0.00000    
   37      7.00000        1.00000           1.00000        0.00000    
    7      6.00000        1.00000           1.00000        0.00000    

 Element Number =    8
 Node      R-Coord.       Z-Coord.       Norm. Load         Tang. Load
    9      10.0000        1.00000           1.00000        0.00000    
   42      9.00000        1.00000           1.00000        0.00000    
    6      8.00000        1.00000           1.00000        0.00000    

 Element Number =    9
 Node      R-Coord.       Z-Coord.       Norm. Load         Tang. Load
   10      2.00000        1.00000           1.00000        0.00000    
   12      4.00000        1.00000           1.00000        0.00000    
   44      3.00000        1.00000           1.00000        0.00000    



 Increment control with fixed load increments selected
 =====================================================

       Number of proportional load increments =   12





 INCREMENT NUMBER    1
 =====================


 Total load factor ............... =     100.000    
 Incremental load factor ......... =     100.000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   1
 Output to re-start file............ =   0




 INCREMENT NUMBER    1                   TOTAL LOAD FACTOR =    100.000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                     0.672817E-09                 0.116936E-06
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =    100.000    
 --------------------------------------------------------------------------


 Results for load increment   1 Load factor =    100.000    
 ===========================================================

 Converged solution at iteration number =    1


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000      -0.754207E-01
    2      0.00000      -0.754291E-01
    3     0.478758E-02  -0.442264E-01
    4     0.347121E-02  -0.609926E-01
    5     0.559103E-02  -0.231204E-01
    6    -0.556837E-02  -0.232341E-01
    7    -0.477706E-02  -0.442738E-01
    8     0.579686E-02    0.00000    
    9    -0.565278E-02  -0.244837E-03
   10    -0.181841E-02  -0.717376E-01
   11     0.182004E-02  -0.717262E-01
   12    -0.346694E-02  -0.610135E-01
   13      0.00000      -0.756069E-01
   14     0.204714E-04  -0.233379E-01
   15    -0.621097E-05  -0.285467E-03
   16     0.659270E-05  -0.719106E-01
   17     0.122467E-04  -0.611761E-01
   18     0.206339E-04  -0.444160E-01
   19     0.924635E-03  -0.745202E-01
   20     0.910846E-03  -0.718536E-01
   21     0.446286E-06  -0.746468E-01
   22      0.00000      -0.755502E-01
   23    -0.903832E-03  -0.718594E-01
   24    -0.918779E-03  -0.745236E-01
   25      0.00000      -0.755546E-01
   26     0.239514E-02  -0.443479E-01
   27     0.480069E-05  -0.534192E-01
   28     0.173849E-02  -0.611162E-01
   29     0.418696E-02  -0.533321E-01
   30    -0.237205E-02  -0.443713E-01
   31    -0.416442E-02  -0.533260E-01
   32    -0.172328E-02  -0.611268E-01
   33     0.526429E-02  -0.341851E-01
   34     0.280599E-02  -0.232465E-01
   35     0.423059E-05  -0.342274E-01
   36    -0.276607E-02  -0.233040E-01
   37    -0.523553E-02  -0.341607E-01
   38     0.575167E-02  -0.118481E-01
   39     0.285713E-02  -0.156330E-03
   40     0.133754E-04  -0.118094E-01
   41    -0.281805E-02  -0.274616E-03
   42    -0.572196E-02  -0.117711E-01
   43     0.290642E-05  -0.673434E-01
   44    -0.266865E-02  -0.672303E-01
   45     0.268182E-02  -0.672290E-01


 Reactions
 =========

 Node      R-Force          Z-Force
    1      96.0873          0.00000    
    2      14.4186          0.00000    
    8      0.00000          31415.9    
   13     -92.6990          0.00000    
   22      49.0541          0.00000    
   25     -66.8612          0.00000    
       ---------------  ---------------
 Totals   0.471800E-11      31415.9    


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    R-Coord=   0.000     Z-Coord=   0.000    
 S-rr  =   0.1237E+05 S-zz  =    85.50     S-rz  =   -278.7     S-h   =   0.1237E+05
 S-max =   0.1238E+05 S-min =    79.18     Angle =   -1.299    
 S-eff =   0.1230E+05 Eps.  =    0.000     dgama =    0.000    

 Node number     2    R-Coord=   0.000     Z-Coord=   1.000    
 S-rr  =  -0.1223E+05 S-zz  =   -84.72     S-rz  =   -174.7     S-h   =  -0.1223E+05
 S-max =   -82.21     S-min =  -0.1224E+05 Angle =   -89.18    
 S-eff =   0.1215E+05 Eps.  =    0.000     dgama =    0.000    

 Node number     3    R-Coord=   6.000     Z-Coord=   0.000    
 S-rr  =    7875.     S-zz  =    77.43     S-rz  =   -126.0     S-h   =    9904.    
 S-max =    7877.     S-min =    75.40     Angle =  -0.9257    
 S-eff =    8988.     Eps.  =    0.000     dgama =    0.000    

 Node number     4    R-Coord=   4.000     Z-Coord=   0.000    
 S-rr  =   0.1033E+05 S-zz  =    81.45     S-rz  =    19.89     S-h   =   0.1120E+05
 S-max =   0.1033E+05 S-min =    81.41     Angle =   0.1112    
 S-eff =   0.1071E+05 Eps.  =    0.000     dgama =    0.000    

 Node number     5    R-Coord=   8.000     Z-Coord=   0.000    
 S-rr  =    4301.     S-zz  =    240.1     S-rz  =    194.4     S-h   =    8088.    
 S-max =    4310.     S-min =    230.8     Angle =    2.734    
 S-eff =    6806.     Eps.  =    0.000     dgama =    0.000    

 Node number     6    R-Coord=   8.000     Z-Coord=   1.000    
 S-rr  =   -4654.     S-zz  =   -152.5     S-rz  =    141.8     S-h   =   -8132.    
 S-max =   -148.0     S-min =   -4659.     Angle =    88.20    
 S-eff =    6934.     Eps.  =    0.000     dgama =    0.000    

 Node number     7    R-Coord=   6.000     Z-Coord=   1.000    
 S-rr  =   -7831.     S-zz  =   -57.65     S-rz  =    106.8     S-h   =   -9859.    
 S-max =   -56.18     S-min =   -7833.     Angle =    89.21    
 S-eff =    8963.     Eps.  =    0.000     dgama =    0.000    

 Node number     8    R-Coord=   10.00     Z-Coord=   0.000    
 S-rr  =    758.4     S-zz  =   -1399.     S-rz  =    632.8     S-h   =    5616.    
 S-max =    930.3     S-min =   -1571.     Angle =    15.20    
 S-eff =    6319.     Eps.  =    0.000     dgama =    0.000    

 Node number     9    R-Coord=   10.00     Z-Coord=   1.000    
 S-rr  =    446.2     S-zz  =   -117.4     S-rz  =    76.94     S-h   =   -5597.    
 S-max =    456.5     S-min =   -127.7     Angle =    7.636    
 S-eff =    5783.     Eps.  =    0.000     dgama =    0.000    

 Node number    10    R-Coord=   2.000     Z-Coord=   1.000    
 S-rr  =  -0.1171E+05 S-zz  =   -106.6     S-rz  =    24.82     S-h   =  -0.1193E+05
 S-max =   -106.5     S-min =  -0.1171E+05 Angle =    89.88    
 S-eff =   0.1172E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    11    R-Coord=   2.000     Z-Coord=   0.000    
 S-rr  =   0.1176E+05 S-zz  =    35.75     S-rz  =   -7.316     S-h   =   0.1195E+05
 S-max =   0.1176E+05 S-min =    35.75     Angle =  -0.3574E-01
 S-eff =   0.1182E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    12    R-Coord=   4.000     Z-Coord=   1.000    
 S-rr  =  -0.1025E+05 S-zz  =   -89.94     S-rz  =    62.18     S-h   =  -0.1115E+05
 S-max =   -89.56     S-min =  -0.1025E+05 Angle =    89.65    
 S-eff =   0.1064E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    13    R-Coord=   0.000     Z-Coord=  0.5000    
 S-rr  =   -55.73     S-zz  =   -73.58     S-rz  =    226.7     S-h   =   -55.73    
 S-max =    162.2     S-min =   -291.5     Angle =    43.87    
 S-eff =    393.1     Eps.  =    0.000     dgama =    0.000    

 Node number    14    R-Coord=   8.000     Z-Coord=  0.5000    
 S-rr  =    188.2     S-zz  =    110.9     S-rz  =    631.9     S-h   =    95.63    
 S-max =    782.6     S-min =   -483.5     Angle =    43.25    
 S-eff =    1098.     Eps.  =    0.000     dgama =    0.000    

 Node number    15    R-Coord=   10.00     Z-Coord=  0.5000    
 S-rr  =   -591.4     S-zz  =   -799.5     S-rz  =    645.2     S-h   =   -346.3    
 S-max =   -41.93     S-min =   -1349.     Angle =    40.42    
 S-eff =    1185.     Eps.  =    0.000     dgama =    0.000    

 Node number    16    R-Coord=   2.000     Z-Coord=  0.5000    
 S-rr  =   -14.15     S-zz  =   -44.84     S-rz  =    191.2     S-h   =    8.053    
 S-max =    162.4     S-min =   -221.4     Angle =    42.71    
 S-eff =    334.4     Eps.  =    0.000     dgama =    0.000    

 Node number    17    R-Coord=   4.000     Z-Coord=  0.5000    
 S-rr  =   -26.57     S-zz  =   -36.73     S-rz  =    359.0     S-h   =    1.695    
 S-max =    327.4     S-min =   -390.6     Angle =    44.59    
 S-eff =    622.7     Eps.  =    0.000     dgama =    0.000    

 Node number    18    R-Coord=   6.000     Z-Coord=  0.5000    
 S-rr  =   -9.448     S-zz  =    23.82     S-rz  =    609.6     S-h   =    20.99    
 S-max =    617.0     S-min =   -602.7     Angle =    45.78    
 S-eff =    1056.     Eps.  =    0.000     dgama =    0.000    

 Node number    19    R-Coord=   1.000     Z-Coord=   0.000    
 S-rr  =   0.1200E+05 S-zz  =   -2.995     S-rz  =    4.302     S-h   =   0.1212E+05
 S-max =   0.1200E+05 S-min =   -2.996     Angle =   0.2053E-01
 S-eff =   0.1206E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    20    R-Coord=   2.000     Z-Coord=  0.2500    
 S-rr  =    5876.     S-zz  =    11.18     S-rz  =    95.58     S-h   =    5978.    
 S-max =    5877.     S-min =    9.624     Angle =   0.9335    
 S-eff =    5919.     Eps.  =    0.000     dgama =    0.000    

 Node number    21    R-Coord=   1.000     Z-Coord=  0.5000    
 S-rr  =    17.50     S-zz  =   -56.23     S-rz  =    89.99     S-h   =   -5.488    
 S-max =    77.88     S-min =   -116.6     Angle =    33.86    
 S-eff =    169.0     Eps.  =    0.000     dgama =    0.000    

 Node number    22    R-Coord=   0.000     Z-Coord=  0.2500    
 S-rr  =    6157.     S-zz  =    13.96     S-rz  =   -40.49     S-h   =    6157.    
 S-max =    6157.     S-min =    13.70     Angle =  -0.3777    
 S-eff =    6143.     Eps.  =    0.000     dgama =    0.000    

 Node number    23    R-Coord=   2.000     Z-Coord=  0.7500    
 S-rr  =   -5864.     S-zz  =   -91.43     S-rz  =    104.4     S-h   =   -5961.    
 S-max =   -89.54     S-min =   -5866.     Angle =    88.96    
 S-eff =    5825.     Eps.  =    0.000     dgama =    0.000    

 Node number    24    R-Coord=   1.000     Z-Coord=   1.000    
 S-rr  =  -0.1201E+05 S-zz  =   -97.43     S-rz  =    15.71     S-h   =  -0.1209E+05
 S-max =   -97.41     S-min =  -0.1201E+05 Angle =    89.92    
 S-eff =   0.1195E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    25    R-Coord=   0.000     Z-Coord=  0.7500    
 S-rr  =   -6142.     S-zz  =   -87.16     S-rz  =    40.49     S-h   =   -6142.    
 S-max =   -86.88     S-min =   -6142.     Angle =    89.62    
 S-eff =    6055.     Eps.  =    0.000     dgama =    0.000    

 Node number    26    R-Coord=   6.000     Z-Coord=  0.2500    
 S-rr  =    3942.     S-zz  =    83.98     S-rz  =    270.5     S-h   =    4969.    
 S-max =    3961.     S-min =    65.11     Angle =    3.991    
 S-eff =    4485.     Eps.  =    0.000     dgama =    0.000    

 Node number    27    R-Coord=   5.000     Z-Coord=  0.5000    
 S-rr  =    22.28     S-zz  =   -63.28     S-rz  =    438.0     S-h   =    6.607    
 S-max =    419.6     S-min =   -460.6     Angle =    42.21    
 S-eff =    762.7     Eps.  =    0.000     dgama =    0.000    

 Node number    28    R-Coord=   4.000     Z-Coord=  0.2500    
 S-rr  =    5151.     S-zz  =    37.49     S-rz  =    182.0     S-h   =    5602.    
 S-max =    5157.     S-min =    31.02     Angle =    2.036    
 S-eff =    5362.     Eps.  =    0.000     dgama =    0.000    

 Node number    29    R-Coord=   5.000     Z-Coord=   0.000    
 S-rr  =    9078.     S-zz  =   -40.29     S-rz  =    72.10     S-h   =   0.1052E+05
 S-max =    9079.     S-min =   -40.86     Angle =   0.4530    
 S-eff =    9919.     Eps.  =    0.000     dgama =    0.000    

 Node number    30    R-Coord=   6.000     Z-Coord=  0.7500    
 S-rr  =   -3930.     S-zz  =   -50.27     S-rz  =    329.5     S-h   =   -4925.    
 S-max =   -22.48     S-min =   -3957.     Angle =    85.18    
 S-eff =    4498.     Eps.  =    0.000     dgama =    0.000    

 Node number    31    R-Coord=   5.000     Z-Coord=   1.000    
 S-rr  =   -9099.     S-zz  =   -117.8     S-rz  =    51.92     S-h   =  -0.1053E+05
 S-max =   -117.5     S-min =   -9099.     Angle =    89.67    
 S-eff =    9776.     Eps.  =    0.000     dgama =    0.000    

 Node number    32    R-Coord=   4.000     Z-Coord=  0.7500    
 S-rr  =   -5139.     S-zz  =   -78.46     S-rz  =    218.0     S-h   =   -5576.    
 S-max =   -69.09     S-min =   -5148.     Angle =    87.54    
 S-eff =    5306.     Eps.  =    0.000     dgama =    0.000    

 Node number    33    R-Coord=   7.000     Z-Coord=   0.000    
 S-rr  =    6193.     S-zz  =   -43.42     S-rz  =    249.7     S-h   =    8980.    
 S-max =    6203.     S-min =   -53.40     Angle =    2.289    
 S-eff =    8014.     Eps.  =    0.000     dgama =    0.000    

 Node number    34    R-Coord=   8.000     Z-Coord=  0.2500    
 S-rr  =    2229.     S-zz  =    175.2     S-rz  =    398.3     S-h   =    4086.    
 S-max =    2303.     S-min =    100.7     Angle =    10.60    
 S-eff =    3458.     Eps.  =    0.000     dgama =    0.000    

 Node number    35    R-Coord=   7.000     Z-Coord=  0.5000    
 S-rr  =   -15.82     S-zz  =   -120.6     S-rz  =    539.0     S-h   =   -17.67    
 S-max =    473.3     S-min =   -609.7     Angle =    42.22    
 S-eff =    939.3     Eps.  =    0.000     dgama =    0.000    

 Node number    36    R-Coord=   8.000     Z-Coord=  0.7500    
 S-rr  =   -2217.     S-zz  =   -20.49     S-rz  =    401.7     S-h   =   -4013.    
 S-max =    50.66     S-min =   -2288.     Angle =    79.96    
 S-eff =    3532.     Eps.  =    0.000     dgama =    0.000    

 Node number    37    R-Coord=   7.000     Z-Coord=   1.000    
 S-rr  =   -6138.     S-zz  =   -140.2     S-rz  =    72.41     S-h   =   -8973.    
 S-max =   -139.3     S-min =   -6139.     Angle =    89.31    
 S-eff =    7813.     Eps.  =    0.000     dgama =    0.000    

 Node number    38    R-Coord=   9.000     Z-Coord=   0.000    
 S-rr  =    2542.     S-zz  =   -121.5     S-rz  =   -131.7     S-h   =    6959.    
 S-max =    2548.     S-min =   -128.0     Angle =   -2.823    
 S-eff =    6198.     Eps.  =    0.000     dgama =    0.000    

 Node number    39    R-Coord=   10.00     Z-Coord=  0.2500    
 S-rr  =    5.807     S-zz  =   -1221.     S-rz  =    626.4     S-h   =    2578.    
 S-max =    269.1     S-min =   -1484.     Angle =    22.80    
 S-eff =    3529.     Eps.  =    0.000     dgama =    0.000    

 Node number    40    R-Coord=   9.000     Z-Coord=  0.5000    
 S-rr  =   -227.1     S-zz  =   -83.62     S-rz  =    909.5     S-h   =   -64.64    
 S-max =    757.0     S-min =   -1068.     Angle =    47.25    
 S-eff =    1583.     Eps.  =    0.000     dgama =    0.000    

 Node number    41    R-Coord=   10.00     Z-Coord=  0.7500    
 S-rr  =    5.128     S-zz  =   -336.8     S-rz  =    373.6     S-h   =   -2915.    
 S-max =    245.0     S-min =   -576.7     Angle =    32.71    
 S-eff =    2840.     Eps.  =    0.000     dgama =    0.000    

 Node number    42    R-Coord=   9.000     Z-Coord=   1.000    
 S-rr  =   -2062.     S-zz  =   -43.80     S-rz  =    112.6     S-h   =   -6839.    
 S-max =   -37.54     S-min =   -2068.     Angle =    86.82    
 S-eff =    6048.     Eps.  =    0.000     dgama =    0.000    

 Node number    43    R-Coord=   3.000     Z-Coord=  0.5000    
 S-rr  =    17.58     S-zz  =   -59.65     S-rz  =    251.2     S-h   =    6.567    
 S-max =    233.1     S-min =   -275.2     Angle =    40.63    
 S-eff =    441.1     Eps.  =    0.000     dgama =    0.000    

 Node number    44    R-Coord=   3.000     Z-Coord=   1.000    
 S-rr  =  -0.1104E+05 S-zz  =   -108.4     S-rz  =    34.10     S-h   =  -0.1156E+05
 S-max =   -108.3     S-min =  -0.1104E+05 Angle =    89.82    
 S-eff =   0.1120E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    45    R-Coord=   3.000     Z-Coord=   0.000    
 S-rr  =   0.1102E+05 S-zz  =   -13.95     S-rz  =    63.51     S-h   =   0.1156E+05
 S-max =   0.1102E+05 S-min =   -14.31     Angle =   0.3297    
 S-eff =   0.1132E+05 Eps.  =    0.000     dgama =    0.000    




 INCREMENT NUMBER    2
 =====================


 Total load factor ............... =     200.000    
 Incremental load factor ......... =     100.000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   1
 Output to re-start file............ =   0




 INCREMENT NUMBER    2                   TOTAL LOAD FACTOR =    200.000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      152.203                      45236.9    
        2                      9.35810                      3659.94    
        3                     0.104506                      35.7854    
        4                     0.440349E-05                 0.113755E-02
        5                     0.118470E-09                 0.360615E-07
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =    100.000    
 --------------------------------------------------------------------------


 Results for load increment   2 Load factor =    200.000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000      -0.172764    
    2      0.00000      -0.172806    
    3     0.108472E-01  -0.971091E-01
    4     0.845210E-02  -0.136107    
    5     0.122674E-01  -0.503226E-01
    6    -0.121803E-01  -0.505531E-01
    7    -0.107790E-01  -0.972105E-01
    8     0.126014E-01    0.00000    
    9    -0.122734E-01  -0.492194E-03
   10    -0.476110E-02  -0.163043    
   11     0.478933E-02  -0.162999    
   12    -0.839971E-02  -0.136164    
   13      0.00000      -0.173541    
   14     0.614625E-04  -0.507680E-01
   15     0.633074E-05  -0.580814E-03
   16     0.247112E-04  -0.163667    
   17     0.468352E-04  -0.136586    
   18     0.655070E-04  -0.975011E-01
   19     0.249080E-02  -0.170371    
   20     0.240684E-02  -0.163514    
   21     0.754298E-05  -0.170960    
   22      0.00000      -0.173374    
   23    -0.236901E-02  -0.163531    
   24    -0.246527E-02  -0.170388    
   25      0.00000      -0.173390    
   26     0.543810E-02  -0.973569E-01
   27     0.330683E-04  -0.118155    
   28     0.424925E-02  -0.136444    
   29     0.979121E-02  -0.117952    
   30    -0.534383E-02  -0.974064E-01
   31    -0.969715E-02  -0.117945    
   32    -0.417402E-02  -0.136469    
   33     0.116877E-01  -0.746528E-01
   34     0.616517E-02  -0.505824E-01
   35     0.306966E-04  -0.747412E-01
   36    -0.604393E-02  -0.506990E-01
   37    -0.115857E-01  -0.746028E-01
   38     0.125412E-01  -0.257025E-01
   39     0.622700E-02  -0.318762E-03
   40     0.467934E-04  -0.256295E-01
   41    -0.611036E-02  -0.556444E-03
   42    -0.124423E-01  -0.255479E-01
   43     0.241833E-04  -0.151904    
   44    -0.674692E-02  -0.151503    
   45     0.680904E-02  -0.151489    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      164.676          0.00000    
    2      3.47474          0.00000    
    8      0.00000          62831.9    
   13     -184.522          0.00000    
   22      114.282          0.00000    
   25     -98.5090          0.00000    
       ---------------  ---------------
 Totals  -0.597844          62831.9    


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    R-Coord=   0.000     Z-Coord=   0.000    
 S-rr  =   0.1940E+05 S-zz  =    194.1     S-rz  =   -442.5     S-h   =   0.1938E+05
 S-max =   0.1941E+05 S-min =    183.9     Angle =   -1.319    
 S-eff =   0.1921E+05 Eps.  =   0.2236E-02 dgama =   0.2236E-02

 Node number     2    R-Coord=   0.000     Z-Coord=   1.000    
 S-rr  =  -0.1951E+05 S-zz  =   -178.6     S-rz  =   -326.4     S-h   =  -0.1949E+05
 S-max =   -173.1     S-min =  -0.1951E+05 Angle =   -89.03    
 S-eff =   0.1933E+05 Eps.  =   0.2145E-02 dgama =   0.2145E-02

 Node number     3    R-Coord=   6.000     Z-Coord=   0.000    
 S-rr  =   0.1490E+05 S-zz  =    189.7     S-rz  =   -277.8     S-h   =   0.2194E+05
 S-max =   0.1490E+05 S-min =    184.5     Angle =   -1.081    
 S-eff =   0.1923E+05 Eps.  =  -0.4303E-04 dgama =  -0.4303E-04

 Node number     4    R-Coord=   4.000     Z-Coord=   0.000    
 S-rr  =   0.1819E+05 S-zz  =    309.0     S-rz  =   -51.63     S-h   =   0.2191E+05
 S-max =   0.1819E+05 S-min =    308.9     Angle =  -0.1654    
 S-eff =   0.2000E+05 Eps.  =   0.5576E-03 dgama =   0.5576E-03

 Node number     5    R-Coord=   8.000     Z-Coord=   0.000    
 S-rr  =    8332.     S-zz  =    417.3     S-rz  =    400.9     S-h   =   0.1742E+05
 S-max =    8352.     S-min =    397.1     Angle =    2.893    
 S-eff =   0.1475E+05 Eps.  =    0.000     dgama =    0.000    

 Node number     6    R-Coord=   8.000     Z-Coord=   1.000    
 S-rr  =   -9053.     S-zz  =   -217.1     S-rz  =    289.6     S-h   =  -0.1745E+05
 S-max =   -207.6     S-min =   -9062.     Angle =    88.12    
 S-eff =   0.1494E+05 Eps.  =    0.000     dgama =    0.000    

 Node number     7    R-Coord=   6.000     Z-Coord=   1.000    
 S-rr  =  -0.1489E+05 S-zz  =   -118.6     S-rz  =    215.1     S-h   =  -0.2192E+05
 S-max =   -115.5     S-min =  -0.1490E+05 Angle =    89.17    
 S-eff =   0.1928E+05 Eps.  =  -0.6162E-04 dgama =  -0.6162E-04

 Node number     8    R-Coord=   10.00     Z-Coord=   0.000    
 S-rr  =    1550.     S-zz  =   -2762.     S-rz  =    1275.     S-h   =   0.1224E+05
 S-max =    1899.     S-min =   -3111.     Angle =    15.30    
 S-eff =   0.1356E+05 Eps.  =    0.000     dgama =    0.000    

 Node number     9    R-Coord=   10.00     Z-Coord=   1.000    
 S-rr  =    884.9     S-zz  =   -272.7     S-rz  =    152.0     S-h   =  -0.1216E+05
 S-max =    904.6     S-min =   -292.4     Angle =    7.359    
 S-eff =   0.1250E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    10    R-Coord=   2.000     Z-Coord=   1.000    
 S-rr  =  -0.1936E+05 S-zz  =   -105.3     S-rz  =   -33.15     S-h   =  -0.2009E+05
 S-max =   -105.2     S-min =  -0.1936E+05 Angle =   -89.90    
 S-eff =   0.1963E+05 Eps.  =   0.1574E-02 dgama =   0.1574E-02

 Node number    11    R-Coord=   2.000     Z-Coord=   0.000    
 S-rr  =   0.1910E+05 S-zz  =   -71.00     S-rz  =   -91.04     S-h   =   0.1977E+05
 S-max =   0.1910E+05 S-min =   -71.43     Angle =  -0.2721    
 S-eff =   0.1951E+05 Eps.  =   0.1651E-02 dgama =   0.1651E-02

 Node number    12    R-Coord=   4.000     Z-Coord=   1.000    
 S-rr  =  -0.1829E+05 S-zz  =   -352.8     S-rz  =    66.10     S-h   =  -0.2218E+05
 S-max =   -352.6     S-min =  -0.1829E+05 Angle =    89.79    
 S-eff =   0.2016E+05 Eps.  =   0.4923E-03 dgama =   0.4923E-03

 Node number    13    R-Coord=   0.000     Z-Coord=  0.5000    
 S-rr  =    60.74     S-zz  =   -166.6     S-rz  =    384.4     S-h   =    60.95    
 S-max =    348.0     S-min =   -453.8     Angle =    36.76    
 S-eff =    703.6     Eps.  =  -0.5870E-03 dgama =  -0.5870E-03

 Node number    14    R-Coord=   8.000     Z-Coord=  0.5000    
 S-rr  =    373.1     S-zz  =    219.8     S-rz  =    1255.     S-h   =    215.3    
 S-max =    1553.     S-min =   -960.6     Angle =    43.25    
 S-eff =    2179.     Eps.  =    0.000     dgama =    0.000    

 Node number    15    R-Coord=   10.00     Z-Coord=  0.5000    
 S-rr  =   -1195.     S-zz  =   -1595.     S-rz  =    1286.     S-h   =   -675.9    
 S-max =   -93.28     S-min =   -2697.     Angle =    40.58    
 S-eff =    2367.     Eps.  =    0.000     dgama =    0.000    

 Node number    16    R-Coord=   2.000     Z-Coord=  0.5000    
 S-rr  =    122.4     S-zz  =   -80.94     S-rz  =    462.1     S-h   =    166.2    
 S-max =    493.9     S-min =   -452.4     Angle =    38.79    
 S-eff =    832.3     Eps.  =  -0.4320E-03 dgama =  -0.4320E-03

 Node number    17    R-Coord=   4.000     Z-Coord=  0.5000    
 S-rr  =    30.96     S-zz  =   -67.40     S-rz  =    792.8     S-h   =    137.2    
 S-max =    776.1     S-min =   -812.5     Angle =    43.23    
 S-eff =    1384.     Eps.  =  -0.1407E-03 dgama =  -0.1407E-03

 Node number    18    R-Coord=   6.000     Z-Coord=  0.5000    
 S-rr  =   -9.836     S-zz  =    42.07     S-rz  =    1231.     S-h   =    101.7    
 S-max =    1248.     S-min =   -1215.     Angle =    45.60    
 S-eff =    2135.     Eps.  =   0.1402E-04 dgama =   0.1402E-04

 Node number    19    R-Coord=   1.000     Z-Coord=   0.000    
 S-rr  =   0.1913E+05 S-zz  =    4.477     S-rz  =   -27.79     S-h   =   0.1949E+05
 S-max =   0.1913E+05 S-min =    4.437     Angle =  -0.8325E-01
 S-eff =   0.1931E+05 Eps.  =   0.1951E-02 dgama =   0.1951E-02

 Node number    20    R-Coord=   2.000     Z-Coord=  0.2500    
 S-rr  =   0.1100E+05 S-zz  =    15.98     S-rz  =    191.5     S-h   =   0.1148E+05
 S-max =   0.1100E+05 S-min =    12.65     Angle =   0.9987    
 S-eff =   0.1123E+05 Eps.  =   0.6041E-03 dgama =   0.6041E-03

 Node number    21    R-Coord=   1.000     Z-Coord=  0.5000    
 S-rr  =    183.3     S-zz  =   -109.4     S-rz  =    221.1     S-h   =    150.8    
 S-max =    302.1     S-min =   -228.2     Angle =    28.25    
 S-eff =    473.1     Eps.  =  -0.5117E-03 dgama =  -0.5117E-03

 Node number    22    R-Coord=   0.000     Z-Coord=  0.2500    
 S-rr  =   0.1166E+05 S-zz  =    22.78     S-rz  =   -71.36     S-h   =   0.1166E+05
 S-max =   0.1166E+05 S-min =    22.34     Angle =  -0.3512    
 S-eff =   0.1164E+05 Eps.  =   0.8185E-03 dgama =   0.8185E-03

 Node number    23    R-Coord=   2.000     Z-Coord=  0.7500    
 S-rr  =  -0.1101E+05 S-zz  =   -185.1     S-rz  =    208.5     S-h   =  -0.1147E+05
 S-max =   -181.1     S-min =  -0.1101E+05 Angle =    88.90    
 S-eff =   0.1107E+05 Eps.  =   0.5760E-03 dgama =   0.5760E-03

 Node number    24    R-Coord=   1.000     Z-Coord=   1.000    
 S-rr  =  -0.1950E+05 S-zz  =   -203.8     S-rz  =   -14.38     S-h   =  -0.1982E+05
 S-max =   -203.8     S-min =  -0.1950E+05 Angle =   -89.96    
 S-eff =   0.1946E+05 Eps.  =   0.1868E-02 dgama =   0.1868E-02

 Node number    25    R-Coord=   0.000     Z-Coord=  0.7500    
 S-rr  =  -0.1166E+05 S-zz  =   -181.7     S-rz  =    71.36     S-h   =  -0.1165E+05
 S-max =   -181.2     S-min =  -0.1166E+05 Angle =    89.64    
 S-eff =   0.1147E+05 Eps.  =   0.7853E-03 dgama =   0.7853E-03

 Node number    26    R-Coord=   6.000     Z-Coord=  0.2500    
 S-rr  =    7420.     S-zz  =    178.9     S-rz  =    535.0     S-h   =   0.1098E+05
 S-max =    7460.     S-min =    139.5     Angle =    4.202    
 S-eff =    9575.     Eps.  =  -0.1575E-04 dgama =  -0.1575E-04

 Node number    27    R-Coord=   5.000     Z-Coord=  0.5000    
 S-rr  =    93.87     S-zz  =   -130.2     S-rz  =    889.0     S-h   =    110.3    
 S-max =    877.8     S-min =   -914.2     Angle =    41.41    
 S-eff =    1557.     Eps.  =  -0.5089E-04 dgama =  -0.5089E-04

 Node number    28    R-Coord=   4.000     Z-Coord=  0.2500    
 S-rr  =    9437.     S-zz  =    69.08     S-rz  =    355.8     S-h   =   0.1155E+05
 S-max =    9451.     S-min =    55.59     Angle =    2.172    
 S-eff =   0.1060E+05 Eps.  =   0.2041E-03 dgama =   0.2041E-03

 Node number    29    R-Coord=   5.000     Z-Coord=   0.000    
 S-rr  =   0.1649E+05 S-zz  =   -261.0     S-rz  =    137.6     S-h   =   0.2206E+05
 S-max =   0.1649E+05 S-min =   -262.1     Angle =   0.4704    
 S-eff =   0.2013E+05 Eps.  =   0.2115E-03 dgama =   0.2115E-03

 Node number    30    R-Coord=   6.000     Z-Coord=  0.7500    
 S-rr  =   -7428.     S-zz  =   -101.3     S-rz  =    665.0     S-h   =  -0.1087E+05
 S-max =   -41.37     S-min =   -7488.     Angle =    84.86    
 S-eff =    9593.     Eps.  =  -0.2256E-04 dgama =  -0.2256E-04

 Node number    31    R-Coord=   5.000     Z-Coord=   1.000    
 S-rr  =  -0.1671E+05 S-zz  =   -51.36     S-rz  =    84.54     S-h   =  -0.2231E+05
 S-max =   -50.93     S-min =  -0.1671E+05 Angle =    89.71    
 S-eff =   0.2005E+05 Eps.  =   0.1684E-03 dgama =   0.1684E-03

 Node number    32    R-Coord=   4.000     Z-Coord=  0.7500    
 S-rr  =   -9453.     S-zz  =   -158.4     S-rz  =    444.2     S-h   =  -0.1155E+05
 S-max =   -137.2     S-min =   -9474.     Angle =    87.27    
 S-eff =   0.1053E+05 Eps.  =   0.1802E-03 dgama =   0.1802E-03

 Node number    33    R-Coord=   7.000     Z-Coord=   0.000    
 S-rr  =   0.1186E+05 S-zz  =    12.01     S-rz  =    495.0     S-h   =   0.1954E+05
 S-max =   0.1188E+05 S-min =   -8.639     Angle =    2.389    
 S-eff =   0.1706E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    34    R-Coord=   8.000     Z-Coord=  0.2500    
 S-rr  =    4334.     S-zz  =    359.0     S-rz  =    797.9     S-h   =    8819.    
 S-max =    4488.     S-min =    204.8     Angle =    10.94    
 S-eff =    7460.     Eps.  =    0.000     dgama =    0.000    

 Node number    35    R-Coord=   7.000     Z-Coord=  0.5000    
 S-rr  =   -41.37     S-zz  =   -234.2     S-rz  =    1082.     S-h   =   -3.765    
 S-max =    948.2     S-min =   -1224.     Angle =    42.45    
 S-eff =    1886.     Eps.  =    0.000     dgama =    0.000    

 Node number    36    R-Coord=   8.000     Z-Coord=  0.7500    
 S-rr  =   -4321.     S-zz  =   -39.08     S-rz  =    802.1     S-h   =   -8621.    
 S-max =    106.2     S-min =   -4467.     Angle =    79.73    
 S-eff =    7561.     Eps.  =    0.000     dgama =    0.000    

 Node number    37    R-Coord=   7.000     Z-Coord=   1.000    
 S-rr  =  -0.1177E+05 S-zz  =   -407.8     S-rz  =    141.6     S-h   =  -0.1947E+05
 S-max =   -406.0     S-min =  -0.1177E+05 Angle =    89.29    
 S-eff =   0.1662E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    38    R-Coord=   9.000     Z-Coord=   0.000    
 S-rr  =    4959.     S-zz  =   -263.7     S-rz  =   -268.6     S-h   =   0.1505E+05
 S-max =    4973.     S-min =   -277.4     Angle =   -2.936    
 S-eff =   0.1349E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    39    R-Coord=   10.00     Z-Coord=  0.2500    
 S-rr  =    15.12     S-zz  =   -2440.     S-rz  =    1255.     S-h   =    5662.    
 S-max =    543.3     S-min =   -2968.     Angle =    22.82    
 S-eff =    7517.     Eps.  =    0.000     dgama =    0.000    

 Node number    40    R-Coord=   9.000     Z-Coord=  0.5000    
 S-rr  =   -459.1     S-zz  =   -170.2     S-rz  =    1822.     S-h   =   -109.0    
 S-max =    1513.     S-min =   -2142.     Angle =    47.27    
 S-eff =    3172.     Eps.  =    0.000     dgama =    0.000    

 Node number    41    R-Coord=   10.00     Z-Coord=  0.7500    
 S-rr  =    7.232     S-zz  =   -672.5     S-rz  =    744.7     S-h   =   -6297.    
 S-max =    486.0     S-min =   -1151.     Angle =    32.73    
 S-eff =    6131.     Eps.  =    0.000     dgama =    0.000    

 Node number    42    R-Coord=   9.000     Z-Coord=   1.000    
 S-rr  =   -3999.     S-zz  =   -66.39     S-rz  =    225.5     S-h   =  -0.1476E+05
 S-max =   -53.51     S-min =   -4011.     Angle =    86.73    
 S-eff =   0.1318E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    43    R-Coord=   3.000     Z-Coord=  0.5000    
 S-rr  =    172.8     S-zz  =   -123.5     S-rz  =    563.1     S-h   =    164.6    
 S-max =    606.9     S-min =   -557.6     Angle =    37.63    
 S-eff =    1018.     Eps.  =  -0.2895E-03 dgama =  -0.2895E-03

 Node number    44    R-Coord=   3.000     Z-Coord=   1.000    
 S-rr  =  -0.1893E+05 S-zz  =   -290.1     S-rz  =    13.28     S-h   =  -0.2111E+05
 S-max =   -290.1     S-min =  -0.1893E+05 Angle =    89.96    
 S-eff =   0.1982E+05 Eps.  =   0.1040E-02 dgama =   0.1040E-02

 Node number    45    R-Coord=   3.000     Z-Coord=   0.000    
 S-rr  =   0.1856E+05 S-zz  =    69.38     S-rz  =    60.60     S-h   =   0.2071E+05
 S-max =   0.1856E+05 S-min =    69.18     Angle =   0.1878    
 S-eff =   0.1965E+05 Eps.  =   0.1120E-02 dgama =   0.1120E-02




 INCREMENT NUMBER    3
 =====================


 Total load factor ............... =     220.000    
 Incremental load factor ......... =     20.0000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   1
 Output to re-start file............ =   0




 INCREMENT NUMBER    3                   TOTAL LOAD FACTOR =    220.000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      141.970                      70204.6    
        2                      27.6895                      13387.9    
        3                     0.210061                      69.2776    
        4                     0.316532E-04                 0.107923E-01
        5                     0.619669E-10                 0.244436E-07
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =    20.0000    
 --------------------------------------------------------------------------


 Results for load increment   3 Load factor =    220.000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000      -0.228644    
    2      0.00000      -0.228711    
    3     0.144940E-01  -0.125225    
    4     0.116098E-01  -0.177965    
    5     0.158095E-01  -0.641288E-01
    6    -0.156625E-01  -0.644082E-01
    7    -0.143720E-01  -0.125357    
    8     0.160163E-01    0.00000    
    9    -0.155917E-01  -0.564180E-03
   10    -0.661211E-02  -0.215134    
   11     0.665616E-02  -0.215067    
   12    -0.115244E-01  -0.178047    
   13      0.00000      -0.229896    
   14     0.971703E-04  -0.646631E-01
   15     0.306524E-04  -0.681126E-03
   16     0.334991E-04  -0.216142    
   17     0.638241E-04  -0.178741    
   18     0.969676E-04  -0.125778    
   19     0.347757E-02  -0.225320    
   20     0.334758E-02  -0.215922    
   21     0.112337E-04  -0.226307    
   22      0.00000      -0.229655    
   23    -0.329307E-02  -0.215950    
   24    -0.344063E-02  -0.225335    
   25      0.00000      -0.229682    
   26     0.728228E-02  -0.125594    
   27     0.554393E-04  -0.153609    
   28     0.584155E-02  -0.178552    
   29     0.132958E-01  -0.153217    
   30    -0.713064E-02  -0.125656    
   31    -0.131557E-01  -0.153212    
   32    -0.573271E-02  -0.178587    
   33     0.153082E-01  -0.956187E-01
   34     0.795585E-02  -0.644379E-01
   35     0.587632E-04  -0.957422E-01
   36    -0.776497E-02  -0.645766E-01
   37    -0.151414E-01  -0.955652E-01
   38     0.160096E-01  -0.326072E-01
   39     0.793535E-02  -0.376160E-03
   40     0.791879E-04  -0.325256E-01
   41    -0.775468E-02  -0.649733E-03
   42    -0.158453E-01  -0.324270E-01
   43     0.370875E-04  -0.199863    
   44    -0.932703E-02  -0.199148    
   45     0.941418E-02  -0.199137    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      160.579          0.00000    
    2      9.03024          0.00000    
    8      0.00000          69115.0    
   13     -274.253          0.00000    
   22      195.219          0.00000    
   25     -91.2572          0.00000    
       ---------------  ---------------
 Totals  -0.681986          69115.0    


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    R-Coord=   0.000     Z-Coord=   0.000    
 S-rr  =   0.1829E+05 S-zz  =    152.2     S-rz  =   -418.2     S-h   =   0.1827E+05
 S-max =   0.1830E+05 S-min =    142.5     Angle =   -1.320    
 S-eff =   0.1814E+05 Eps.  =   0.4485E-02 dgama =   0.2249E-02

 Node number     2    R-Coord=   0.000     Z-Coord=   1.000    
 S-rr  =  -0.1844E+05 S-zz  =   -135.4     S-rz  =   -305.9     S-h   =  -0.1842E+05
 S-max =   -130.2     S-min =  -0.1844E+05 Angle =   -89.04    
 S-eff =   0.1830E+05 Eps.  =   0.4358E-02 dgama =   0.2213E-02

 Node number     3    R-Coord=   6.000     Z-Coord=   0.000    
 S-rr  =   0.1471E+05 S-zz  =    278.6     S-rz  =   -426.7     S-h   =   0.2319E+05
 S-max =   0.1472E+05 S-min =    265.9     Angle =   -1.692    
 S-eff =   0.2008E+05 Eps.  =   0.5530E-03 dgama =   0.5960E-03

 Node number     4    R-Coord=   4.000     Z-Coord=   0.000    
 S-rr  =   0.1760E+05 S-zz  =    46.45     S-rz  =   -95.31     S-h   =   0.2085E+05
 S-max =   0.1760E+05 S-min =    45.93     Angle =  -0.3111    
 S-eff =   0.1938E+05 Eps.  =   0.1935E-02 dgama =   0.1378E-02

 Node number     5    R-Coord=   8.000     Z-Coord=   0.000    
 S-rr  =    8553.     S-zz  =    656.7     S-rz  =    408.5     S-h   =   0.2183E+05
 S-max =    8574.     S-min =    635.7     Angle =    2.953    
 S-eff =   0.1855E+05 Eps.  =   0.5632E-05 dgama =   0.5632E-05

 Node number     6    R-Coord=   8.000     Z-Coord=   1.000    
 S-rr  =   -9474.     S-zz  =   -352.6     S-rz  =    328.2     S-h   =  -0.2242E+05
 S-max =   -340.8     S-min =   -9486.     Angle =    87.94    
 S-eff =   0.1921E+05 Eps.  =  -0.6428E-04 dgama =  -0.6428E-04

 Node number     7    R-Coord=   6.000     Z-Coord=   1.000    
 S-rr  =  -0.1478E+05 S-zz  =   -274.4     S-rz  =    181.4     S-h   =  -0.2338E+05
 S-max =   -272.2     S-min =  -0.1478E+05 Angle =    89.28    
 S-eff =   0.2023E+05 Eps.  =   0.4940E-03 dgama =   0.5556E-03

 Node number     8    R-Coord=   10.00     Z-Coord=   0.000    
 S-rr  =    1790.     S-zz  =   -3112.     S-rz  =    1481.     S-h   =   0.1558E+05
 S-max =    2202.     S-min =   -3524.     Angle =    15.57    
 S-eff =   0.1698E+05 Eps.  =    0.000     dgama =    0.000    

 Node number     9    R-Coord=   10.00     Z-Coord=   1.000    
 S-rr  =    1036.     S-zz  =   -97.99     S-rz  =    183.7     S-h   =  -0.1536E+05
 S-max =    1065.     S-min =   -127.0     Angle =    8.979    
 S-eff =   0.1586E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    10    R-Coord=   2.000     Z-Coord=   1.000    
 S-rr  =  -0.1861E+05 S-zz  =   -198.4     S-rz  =   -67.55     S-h   =  -0.1926E+05
 S-max =   -198.2     S-min =  -0.1861E+05 Angle =   -89.79    
 S-eff =   0.1875E+05 Eps.  =   0.3453E-02 dgama =   0.1879E-02

 Node number    11    R-Coord=   2.000     Z-Coord=   0.000    
 S-rr  =   0.1828E+05 S-zz  =    10.61     S-rz  =   -107.6     S-h   =   0.1888E+05
 S-max =   0.1828E+05 S-min =    9.977     Angle =  -0.3376    
 S-eff =   0.1858E+05 Eps.  =   0.3552E-02 dgama =   0.1901E-02

 Node number    12    R-Coord=   4.000     Z-Coord=   1.000    
 S-rr  =  -0.1775E+05 S-zz  =   -175.4     S-rz  =   -12.56     S-h   =  -0.2115E+05
 S-max =   -175.4     S-min =  -0.1775E+05 Angle =   -89.96    
 S-eff =   0.1950E+05 Eps.  =   0.1848E-02 dgama =   0.1356E-02

 Node number    13    R-Coord=   0.000     Z-Coord=  0.5000    
 S-rr  =    128.1     S-zz  =   -178.6     S-rz  =    362.1     S-h   =    128.3    
 S-max =    368.0     S-min =   -418.4     Angle =    33.52    
 S-eff =    698.1     Eps.  =  -0.1185E-02 dgama =  -0.5977E-03

 Node number    14    R-Coord=   8.000     Z-Coord=  0.5000    
 S-rr  =    465.0     S-zz  =    235.5     S-rz  =    1392.     S-h   =    366.8    
 S-max =    1747.     S-min =   -1046.     Angle =    42.64    
 S-eff =    2419.     Eps.  =   0.7858E-05 dgama =   0.7858E-05

 Node number    15    R-Coord=   10.00     Z-Coord=  0.5000    
 S-rr  =   -1388.     S-zz  =   -1801.     S-rz  =    1368.     S-h   =   -749.4    
 S-max =   -211.3     S-min =   -2978.     Angle =    40.70    
 S-eff =    2541.     Eps.  =    0.000     dgama =    0.000    

 Node number    16    R-Coord=   2.000     Z-Coord=  0.5000    
 S-rr  =    202.0     S-zz  =   -95.07     S-rz  =    527.6     S-h   =    240.2    
 S-max =    601.6     S-min =   -494.6     Angle =    37.14    
 S-eff =    967.5     Eps.  =  -0.9385E-03 dgama =  -0.5065E-03

 Node number    17    R-Coord=   4.000     Z-Coord=  0.5000    
 S-rr  =    107.2     S-zz  =   -58.50     S-rz  =    933.9     S-h   =    210.7    
 S-max =    961.9     S-min =   -913.3     Angle =    42.47    
 S-eff =    1635.     Eps.  =  -0.5069E-03 dgama =  -0.3662E-03

 Node number    18    R-Coord=   6.000     Z-Coord=  0.5000    
 S-rr  =    51.91     S-zz  =    65.40     S-rz  =    1443.     S-h   =    206.1    
 S-max =    1501.     S-min =   -1384.     Angle =    45.13    
 S-eff =    2503.     Eps.  =  -0.1403E-03 dgama =  -0.1543E-03

 Node number    19    R-Coord=   1.000     Z-Coord=   0.000    
 S-rr  =   0.1815E+05 S-zz  =    10.78     S-rz  =   -48.98     S-h   =   0.1848E+05
 S-max =   0.1815E+05 S-min =    10.65     Angle =  -0.1547    
 S-eff =   0.1831E+05 Eps.  =   0.4025E-02 dgama =   0.2074E-02

 Node number    20    R-Coord=   2.000     Z-Coord=  0.2500    
 S-rr  =   0.1222E+05 S-zz  =    10.43     S-rz  =    214.6     S-h   =   0.1279E+05
 S-max =   0.1223E+05 S-min =    6.662     Angle =    1.006    
 S-eff =   0.1251E+05 Eps.  =   0.1300E-02 dgama =   0.6960E-03

 Node number    21    R-Coord=   1.000     Z-Coord=  0.5000    
 S-rr  =    258.7     S-zz  =   -120.3     S-rz  =    265.5     S-h   =    224.9    
 S-max =    395.4     S-min =   -257.0     Angle =    27.24    
 S-eff =    586.1     Eps.  =  -0.1064E-02 dgama =  -0.5518E-03

 Node number    22    R-Coord=   0.000     Z-Coord=  0.2500    
 S-rr  =   0.1312E+05 S-zz  =    26.01     S-rz  =   -92.36     S-h   =   0.1312E+05
 S-max =   0.1312E+05 S-min =    25.36     Angle =  -0.4040    
 S-eff =   0.1310E+05 Eps.  =   0.1642E-02 dgama =   0.8232E-03

 Node number    23    R-Coord=   2.000     Z-Coord=  0.7500    
 S-rr  =  -0.1219E+05 S-zz  =   -199.4     S-rz  =    225.4     S-h   =  -0.1274E+05
 S-max =   -195.2     S-min =  -0.1219E+05 Angle =    88.92    
 S-eff =   0.1228E+05 Eps.  =   0.1264E-02 dgama =   0.6878E-03

 Node number    24    R-Coord=   1.000     Z-Coord=   1.000    
 S-rr  =  -0.1859E+05 S-zz  =   -230.9     S-rz  =   -42.04     S-h   =  -0.1888E+05
 S-max =   -230.8     S-min =  -0.1859E+05 Angle =   -89.87    
 S-eff =   0.1851E+05 Eps.  =   0.3913E-02 dgama =   0.2045E-02

 Node number    25    R-Coord=   0.000     Z-Coord=  0.7500    
 S-rr  =  -0.1307E+05 S-zz  =   -196.2     S-rz  =    92.36     S-h   =  -0.1306E+05
 S-max =   -195.5     S-min =  -0.1307E+05 Angle =    89.59    
 S-eff =   0.1287E+05 Eps.  =   0.1595E-02 dgama =   0.8098E-03

 Node number    26    R-Coord=   6.000     Z-Coord=  0.2500    
 S-rr  =    7586.     S-zz  =    185.1     S-rz  =    577.9     S-h   =   0.1232E+05
 S-max =    7631.     S-min =    140.2     Angle =    4.438    
 S-eff =   0.1064E+05 Eps.  =   0.2024E-03 dgama =   0.2181E-03

 Node number    27    R-Coord=   5.000     Z-Coord=  0.5000    
 S-rr  =    211.7     S-zz  =   -159.8     S-rz  =    1025.     S-h   =    224.3    
 S-max =    1068.     S-min =   -1016.     Angle =    39.86    
 S-eff =    1815.     Eps.  =  -0.3251E-03 dgama =  -0.2742E-03

 Node number    28    R-Coord=   4.000     Z-Coord=  0.2500    
 S-rr  =   0.1019E+05 S-zz  =    54.99     S-rz  =    398.3     S-h   =   0.1250E+05
 S-max =   0.1021E+05 S-min =    39.36     Angle =    2.247    
 S-eff =   0.1149E+05 Eps.  =   0.7084E-03 dgama =   0.5043E-03

 Node number    29    R-Coord=   5.000     Z-Coord=   0.000    
 S-rr  =   0.1605E+05 S-zz  =   -17.27     S-rz  =    96.88     S-h   =   0.2171E+05
 S-max =   0.1606E+05 S-min =   -17.86     Angle =   0.3454    
 S-eff =   0.1953E+05 Eps.  =   0.1263E-02 dgama =   0.1052E-02

 Node number    30    R-Coord=   6.000     Z-Coord=  0.7500    
 S-rr  =   -7568.     S-zz  =   -117.6     S-rz  =    742.1     S-h   =  -0.1221E+05
 S-max =   -44.42     S-min =   -7641.     Angle =    84.37    
 S-eff =   0.1065E+05 Eps.  =   0.1808E-03 dgama =   0.2034E-03

 Node number    31    R-Coord=   5.000     Z-Coord=   1.000    
 S-rr  =  -0.1643E+05 S-zz  =   -259.4     S-rz  =    53.40     S-h   =  -0.2226E+05
 S-max =   -259.2     S-min =  -0.1643E+05 Angle =    89.81    
 S-eff =   0.1974E+05 Eps.  =   0.1163E-02 dgama =   0.9948E-03

 Node number    32    R-Coord=   4.000     Z-Coord=  0.7500    
 S-rr  =  -0.1016E+05 S-zz  =   -178.0     S-rz  =    481.7     S-h   =  -0.1245E+05
 S-max =   -154.8     S-min =  -0.1018E+05 Angle =    87.24    
 S-eff =   0.1133E+05 Eps.  =   0.6764E-03 dgama =   0.4962E-03

 Node number    33    R-Coord=   7.000     Z-Coord=   0.000    
 S-rr  =   0.1188E+05 S-zz  =   -250.7     S-rz  =    587.8     S-h   =   0.2272E+05
 S-max =   0.1191E+05 S-min =   -279.2     Angle =    2.768    
 S-eff =   0.1993E+05 Eps.  =   0.2367E-03 dgama =   0.2367E-03

 Node number    34    R-Coord=   8.000     Z-Coord=  0.2500    
 S-rr  =    4446.     S-zz  =    431.3     S-rz  =    868.9     S-h   =   0.1105E+05
 S-max =    4626.     S-min =    251.3     Angle =    11.70    
 S-eff =    9405.     Eps.  =   0.2061E-05 dgama =   0.2061E-05

 Node number    35    R-Coord=   7.000     Z-Coord=  0.5000    
 S-rr  =    8.904     S-zz  =   -268.1     S-rz  =    1174.     S-h   =    113.2    
 S-max =    1052.     S-min =   -1312.     Angle =    41.63    
 S-eff =    2061.     Eps.  =  -0.5525E-04 dgama =  -0.5525E-04

 Node number    36    R-Coord=   8.000     Z-Coord=  0.7500    
 S-rr  =   -4441.     S-zz  =   -43.80     S-rz  =    891.1     S-h   =  -0.1097E+05
 S-max =    129.9     S-min =   -4615.     Angle =    78.97    
 S-eff =    9650.     Eps.  =  -0.2353E-04 dgama =  -0.2353E-04

 Node number    37    R-Coord=   7.000     Z-Coord=   1.000    
 S-rr  =  -0.1187E+05 S-zz  =   -177.5     S-rz  =    144.7     S-h   =  -0.2311E+05
 S-max =   -175.7     S-min =  -0.1187E+05 Angle =    89.29    
 S-eff =   0.1986E+05 Eps.  =   0.1756E-03 dgama =   0.1756E-03

 Node number    38    R-Coord=   9.000     Z-Coord=   0.000    
 S-rr  =    5228.     S-zz  =   -252.7     S-rz  =   -332.4     S-h   =   0.1899E+05
 S-max =    5248.     S-min =   -272.8     Angle =   -3.458    
 S-eff =   0.1718E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    39    R-Coord=   10.00     Z-Coord=  0.2500    
 S-rr  =    41.60     S-zz  =   -2669.     S-rz  =    1396.     S-h   =    7306.    
 S-max =    632.0     S-min =   -3259.     Angle =    22.92    
 S-eff =    9255.     Eps.  =    0.000     dgama =    0.000    

 Node number    40    R-Coord=   9.000     Z-Coord=  0.5000    
 S-rr  =   -531.5     S-zz  =   -165.5     S-rz  =    2027.     S-h   =   -90.49    
 S-max =    1687.     S-min =   -2384.     Angle =    47.58    
 S-eff =    3534.     Eps.  =    0.000     dgama =    0.000    

 Node number    41    R-Coord=   10.00     Z-Coord=  0.7500    
 S-rr  =   -16.57     S-zz  =   -737.4     S-rz  =    804.0     S-h   =   -7947.    
 S-max =    504.1     S-min =   -1258.     Angle =    32.93    
 S-eff =    7722.     Eps.  =    0.000     dgama =    0.000    

 Node number    42    R-Coord=   9.000     Z-Coord=   1.000    
 S-rr  =   -4131.     S-zz  =   -183.7     S-rz  =    238.8     S-h   =  -0.1862E+05
 S-max =   -169.3     S-min =   -4146.     Angle =    86.55    
 S-eff =   0.1682E+05 Eps.  =    0.000     dgama =    0.000    

 Node number    43    R-Coord=   3.000     Z-Coord=  0.5000    
 S-rr  =    248.5     S-zz  =   -128.9     S-rz  =    669.8     S-h   =    241.5    
 S-max =    755.6     S-min =   -636.1     Angle =    37.13    
 S-eff =    1219.     Eps.  =  -0.7262E-03 dgama =  -0.4368E-03

 Node number    44    R-Coord=   3.000     Z-Coord=   1.000    
 S-rr  =  -0.1830E+05 S-zz  =   -266.2     S-rz  =   -26.40     S-h   =  -0.2024E+05
 S-max =   -266.1     S-min =  -0.1830E+05 Angle =   -89.92    
 S-eff =   0.1908E+05 Eps.  =   0.2657E-02 dgama =   0.1617E-02

 Node number    45    R-Coord=   3.000     Z-Coord=   0.000    
 S-rr  =   0.1787E+05 S-zz  =    22.59     S-rz  =    6.807     S-h   =   0.1977E+05
 S-max =   0.1787E+05 S-min =    22.59     Angle =   0.2186E-01
 S-eff =   0.1887E+05 Eps.  =   0.2763E-02 dgama =   0.1643E-02




 INCREMENT NUMBER    4
 =====================


 Total load factor ............... =     230.000    
 Incremental load factor ......... =     10.0000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    4                   TOTAL LOAD FACTOR =    230.000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      79.1721                      43472.1    
        2                      13.3010                      6979.00    
        3                     0.525306E-01                  27.2556    
        4                     0.146244E-05                 0.782830E-03
        5                     0.423438E-10                 0.158311E-07
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =    10.0000    
 --------------------------------------------------------------------------


 Results for load increment   4 Load factor =    230.000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000      -0.274227    
    2      0.00000      -0.274314    
    3     0.174563E-01  -0.148662    
    4     0.141078E-01  -0.212461    
    5     0.187616E-01  -0.756416E-01
    6    -0.186067E-01  -0.759684E-01
    7    -0.173206E-01  -0.148823    
    8     0.188486E-01    0.00000    
    9    -0.183749E-01  -0.632678E-03
   10    -0.808028E-02  -0.257738    
   11     0.812489E-02  -0.257652    
   12    -0.140189E-01  -0.212565    
   13      0.00000      -0.275853    
   14     0.110541E-03  -0.762831E-01
   15     0.336305E-04  -0.783579E-03
   16     0.356612E-04  -0.259060    
   17     0.667807E-04  -0.213483    
   18     0.103002E-03  -0.149381    
   19     0.424627E-02  -0.270182    
   20     0.408464E-02  -0.258784    
   21     0.109881E-04  -0.271475    
   22      0.00000      -0.275550    
   23    -0.402814E-02  -0.258821    
   24    -0.420527E-02  -0.270190    
   25      0.00000      -0.275586    
   26     0.876783E-02  -0.149162    
   27     0.591807E-04  -0.183003    
   28     0.709700E-02  -0.213247    
   29     0.160904E-01  -0.182460    
   30    -0.860628E-02  -0.149237    
   31    -0.159422E-01  -0.182446    
   32    -0.698248E-02  -0.213294    
   33     0.183082E-01  -0.113147    
   34     0.944935E-02  -0.760195E-01
   35     0.647656E-04  -0.113342    
   36    -0.923381E-02  -0.761811E-01
   37    -0.181289E-01  -0.113085    
   38     0.188920E-01  -0.383776E-01
   39     0.933825E-02  -0.428452E-03
   40     0.879262E-04  -0.382768E-01
   41    -0.914086E-02  -0.736316E-03
   42    -0.187063E-01  -0.381662E-01
   43     0.383172E-04  -0.239203    
   44    -0.113824E-01  -0.238240    
   45     0.114731E-01  -0.238236    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      173.847          0.00000    
    2      34.4571          0.00000    
    8      0.00000          72256.6    
   13     -366.776          0.00000    
   22      249.868          0.00000    
   25     -92.0453          0.00000    
       ---------------  ---------------
 Totals  -0.649366          72256.6    




 INCREMENT NUMBER    5
 =====================


 Total load factor ............... =     240.000    
 Incremental load factor ......... =     10.0000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   1
 Output to re-start file............ =   0




 INCREMENT NUMBER    5                   TOTAL LOAD FACTOR =    240.000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      365.907                      75546.3    
        2                      9.39634                      3431.83    
        3                     0.538311E-01                  24.8718    
        4                     0.250273E-05                 0.118138E-02
        5                     0.730046E-10                 0.266937E-07
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =    10.0000    
 --------------------------------------------------------------------------


 Results for load increment   5 Load factor =    240.000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000      -0.376248    
    2      0.00000      -0.376497    
    3     0.241174E-01  -0.202228    
    4     0.196030E-01  -0.290553    
    5     0.255913E-01  -0.102141    
    6    -0.253467E-01  -0.102593    
    7    -0.239078E-01  -0.202485    
    8     0.253503E-01    0.00000    
    9    -0.246877E-01  -0.836813E-03
   10    -0.112184E-01  -0.353432    
   11     0.112940E-01  -0.353288    
   12    -0.194712E-01  -0.290728    
   13      0.00000      -0.378790    
   14     0.150260E-03  -0.103076    
   15     0.632789E-04  -0.104316E-02
   16     0.575472E-04  -0.355429    
   17     0.923328E-04  -0.292151    
   18     0.135498E-03  -0.203353    
   19     0.592834E-02  -0.370724    
   20     0.568354E-02  -0.355024    
   21     0.347288E-04  -0.372684    
   22      0.00000      -0.378287    
   23    -0.558923E-02  -0.355088    
   24    -0.583990E-02  -0.370735    
   25      0.00000      -0.378412    
   26     0.121220E-01  -0.203039    
   27     0.845498E-04  -0.249877    
   28     0.986578E-02  -0.291803    
   29     0.223119E-01  -0.248994    
   30    -0.118934E-01  -0.203159    
   31    -0.221097E-01  -0.248951    
   32    -0.970363E-02  -0.291884    
   33     0.251315E-01  -0.153425    
   34     0.128987E-01  -0.102720    
   35     0.100604E-03  -0.153784    
   36    -0.125932E-01  -0.102947    
   37    -0.248875E-01  -0.153319    
   38     0.255545E-01  -0.516300E-01
   39     0.125922E-01  -0.591999E-03
   40     0.129592E-03  -0.515663E-01
   41    -0.122889E-01  -0.984443E-03
   42    -0.252890E-01  -0.513587E-01
   43     0.566285E-04  -0.327869    
   44    -0.158141E-01  -0.326359    
   45     0.159461E-01  -0.326377    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      425.725          0.00000    
    2      18.8792          0.00000    
    8      0.00000          75398.2    
   13     -674.220          0.00000    
   22      16.4664          0.00000    
   25      190.416          0.00000    
       ---------------  ---------------
 Totals   -22.7334          75398.2    


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    R-Coord=   0.000     Z-Coord=   0.000    
 S-rr  =   0.1624E+05 S-zz  =    269.5     S-rz  =   -592.8     S-h   =   0.1623E+05
 S-max =   0.1626E+05 S-min =    247.5     Angle =   -2.123    
 S-eff =   0.1600E+05 Eps.  =   0.9971E-02 dgama =   0.3761E-02

 Node number     2    R-Coord=   0.000     Z-Coord=   1.000    
 S-rr  =  -0.1606E+05 S-zz  =   -179.1     S-rz  =   -325.0     S-h   =  -0.1605E+05
 S-max =   -172.4     S-min =  -0.1607E+05 Angle =   -88.83    
 S-eff =   0.1589E+05 Eps.  =   0.9714E-02 dgama =   0.3642E-02

 Node number     3    R-Coord=   6.000     Z-Coord=   0.000    
 S-rr  =   0.1445E+05 S-zz  =   0.8847     S-rz  =   -531.6     S-h   =   0.2144E+05
 S-max =   0.1447E+05 S-min =   -18.65     Angle =   -2.105    
 S-eff =   0.1896E+05 Eps.  =   0.2802E-02 dgama =   0.1565E-02

 Node number     4    R-Coord=   4.000     Z-Coord=   0.000    
 S-rr  =   0.1654E+05 S-zz  =    86.61     S-rz  =   -191.3     S-h   =   0.1875E+05
 S-max =   0.1654E+05 S-min =    84.38     Angle =  -0.6662    
 S-eff =   0.1767E+05 Eps.  =   0.5454E-02 dgama =   0.2446E-02

 Node number     5    R-Coord=   8.000     Z-Coord=   0.000    
 S-rr  =    8715.     S-zz  =    753.0     S-rz  =    318.7     S-h   =   0.2269E+05
 S-max =    8728.     S-min =    740.2     Angle =    2.288    
 S-eff =   0.1925E+05 Eps.  =   0.1231E-02 dgama =   0.9863E-03

 Node number     6    R-Coord=   8.000     Z-Coord=   1.000    
 S-rr  =   -9743.     S-zz  =   -401.3     S-rz  =    311.8     S-h   =  -0.2315E+05
 S-max =   -390.9     S-min =   -9753.     Angle =    88.09    
 S-eff =   0.1982E+05 Eps.  =   0.1141E-02 dgama =   0.9865E-03

 Node number     7    R-Coord=   6.000     Z-Coord=   1.000    
 S-rr  =  -0.1474E+05 S-zz  =   -269.7     S-rz  =    40.07     S-h   =  -0.2180E+05
 S-max =   -269.6     S-min =  -0.1474E+05 Angle =    89.84    
 S-eff =   0.1901E+05 Eps.  =   0.2711E-02 dgama =   0.1532E-02

 Node number     8    R-Coord=   10.00     Z-Coord=   0.000    
 S-rr  =    2318.     S-zz  =   -2911.     S-rz  =    1612.     S-h   =   0.1847E+05
 S-max =    2775.     S-min =   -3368.     Angle =    15.83    
 S-eff =   0.1950E+05 Eps.  =   0.6722E-03 dgama =   0.6932E-03

 Node number     9    R-Coord=   10.00     Z-Coord=   1.000    
 S-rr  =    1032.     S-zz  =   -176.7     S-rz  =    283.5     S-h   =  -0.2003E+05
 S-max =    1095.     S-min =   -239.8     Angle =    12.56    
 S-eff =   0.2049E+05 Eps.  =   0.4212E-03 dgama =   0.4637E-03

 Node number    10    R-Coord=   2.000     Z-Coord=   1.000    
 S-rr  =  -0.1648E+05 S-zz  =   -176.9     S-rz  =   -149.2     S-h   =  -0.1686E+05
 S-max =   -175.5     S-min =  -0.1648E+05 Angle =   -89.48    
 S-eff =   0.1650E+05 Eps.  =   0.8212E-02 dgama =   0.3245E-02

 Node number    11    R-Coord=   2.000     Z-Coord=   0.000    
 S-rr  =   0.1603E+05 S-zz  =   -27.95     S-rz  =   -174.7     S-h   =   0.1640E+05
 S-max =   0.1603E+05 S-min =   -29.85     Angle =  -0.6233    
 S-eff =   0.1625E+05 Eps.  =   0.8325E-02 dgama =   0.3257E-02

 Node number    12    R-Coord=   4.000     Z-Coord=   1.000    
 S-rr  =  -0.1680E+05 S-zz  =   -204.2     S-rz  =   -144.4     S-h   =  -0.1908E+05
 S-max =   -202.9     S-min =  -0.1681E+05 Angle =   -89.50    
 S-eff =   0.1785E+05 Eps.  =   0.5342E-02 dgama =   0.2425E-02

 Node number    13    R-Coord=   0.000     Z-Coord=  0.5000    
 S-rr  =   -324.1     S-zz  =   -152.6     S-rz  =    458.9     S-h   =   -347.7    
 S-max =    228.5     S-min =   -705.2     Angle =    50.29    
 S-eff =    816.0     Eps.  =  -0.2473E-02 dgama =  -0.8278E-03

 Node number    14    R-Coord=   8.000     Z-Coord=  0.5000    
 S-rr  =    556.3     S-zz  =    211.3     S-rz  =    1605.     S-h   =    449.7    
 S-max =    1998.     S-min =   -1230.     Angle =    41.93    
 S-eff =    2796.     Eps.  =  -0.3178E-03 dgama =  -0.2643E-03

 Node number    15    R-Coord=   10.00     Z-Coord=  0.5000    
 S-rr  =   -1630.     S-zz  =   -2169.     S-rz  =    1452.     S-h   =   -585.9    
 S-max =   -422.2     S-min =   -3376.     Angle =    39.74    
 S-eff =    2876.     Eps.  =  -0.1465E-03 dgama =  -0.1550E-03

 Node number    16    R-Coord=   2.000     Z-Coord=  0.5000    
 S-rr  =    247.6     S-zz  =   -89.65     S-rz  =    642.0     S-h   =    496.4    
 S-max =    742.7     S-min =   -584.8     Angle =    37.64    
 S-eff =    1223.     Eps.  =  -0.2238E-02 dgama =  -0.8931E-03

 Node number    17    R-Coord=   4.000     Z-Coord=  0.5000    
 S-rr  =    203.4     S-zz  =   -61.69     S-rz  =    1128.     S-h   =    309.5    
 S-max =    1206.     S-min =   -1065.     Angle =    41.65    
 S-eff =    1981.     Eps.  =  -0.1446E-02 dgama =  -0.6526E-03

 Node number    18    R-Coord=   6.000     Z-Coord=  0.5000    
 S-rr  =    213.3     S-zz  =    185.9     S-rz  =    1686.     S-h   =    353.6    
 S-max =    1885.     S-min =   -1486.     Angle =    44.77    
 S-eff =    2924.     Eps.  =  -0.7386E-03 dgama =  -0.4149E-03

 Node number    19    R-Coord=   1.000     Z-Coord=   0.000    
 S-rr  =   0.1592E+05 S-zz  =    19.24     S-rz  =   -122.5     S-h   =   0.1617E+05
 S-max =   0.1592E+05 S-min =    18.30     Angle =  -0.4413    
 S-eff =   0.1603E+05 Eps.  =   0.9147E-02 dgama =   0.3500E-02

 Node number    20    R-Coord=   2.000     Z-Coord=  0.2500    
 S-rr  =   0.1528E+05 S-zz  =    24.03     S-rz  =    250.7     S-h   =   0.1611E+05
 S-max =   0.1528E+05 S-min =    19.91     Angle =   0.9415    
 S-eff =   0.1569E+05 Eps.  =   0.3025E-02 dgama =   0.1170E-02

 Node number    21    R-Coord=   1.000     Z-Coord=  0.5000    
 S-rr  =    100.0     S-zz  =   -140.2     S-rz  =    344.4     S-h   =    185.2    
 S-max =    344.6     S-min =   -384.8     Angle =    35.38    
 S-eff =    664.2     Eps.  =  -0.2367E-02 dgama =  -0.8701E-03

 Node number    22    R-Coord=   0.000     Z-Coord=  0.2500    
 S-rr  =   0.1613E+05 S-zz  =    81.93     S-rz  =   -236.7     S-h   =   0.1610E+05
 S-max =   0.1613E+05 S-min =    78.44     Angle =  -0.8452    
 S-eff =   0.1604E+05 Eps.  =   0.3811E-02 dgama =   0.1538E-02

 Node number    23    R-Coord=   2.000     Z-Coord=  0.7500    
 S-rr  =  -0.1525E+05 S-zz  =   -216.1     S-rz  =    229.3     S-h   =  -0.1585E+05
 S-max =   -212.6     S-min =  -0.1526E+05 Angle =    89.13    
 S-eff =   0.1535E+05 Eps.  =   0.3006E-02 dgama =   0.1188E-02

 Node number    24    R-Coord=   1.000     Z-Coord=   1.000    
 S-rr  =  -0.1635E+05 S-zz  =   -257.3     S-rz  =   -86.24     S-h   =  -0.1653E+05
 S-max =   -256.8     S-min =  -0.1635E+05 Angle =   -89.69    
 S-eff =   0.1618E+05 Eps.  =   0.8970E-02 dgama =   0.3442E-02

 Node number    25    R-Coord=   0.000     Z-Coord=  0.7500    
 S-rr  =  -0.1636E+05 S-zz  =   -189.3     S-rz  =    236.7     S-h   =  -0.1636E+05
 S-max =   -185.9     S-min =  -0.1636E+05 Angle =    89.16    
 S-eff =   0.1617E+05 Eps.  =   0.3558E-02 dgama =   0.1335E-02

 Node number    26    R-Coord=   6.000     Z-Coord=  0.2500    
 S-rr  =    8638.     S-zz  =    184.9     S-rz  =    644.0     S-h   =   0.1416E+05
 S-max =    8687.     S-min =    136.2     Angle =    4.332    
 S-eff =   0.1224E+05 Eps.  =   0.1026E-02 dgama =   0.5729E-03

 Node number    27    R-Coord=   5.000     Z-Coord=  0.5000    
 S-rr  =    308.2     S-zz  =   -168.2     S-rz  =    1243.     S-h   =    329.8    
 S-max =    1336.     S-min =   -1196.     Angle =    39.58    
 S-eff =    2208.     Eps.  =  -0.1094E-02 dgama =  -0.5341E-03

 Node number    28    R-Coord=   4.000     Z-Coord=  0.2500    
 S-rr  =   0.1229E+05 S-zz  =    67.95     S-rz  =    436.6     S-h   =   0.1506E+05
 S-max =   0.1231E+05 S-min =    52.38     Angle =    2.043    
 S-eff =   0.1384E+05 Eps.  =   0.1996E-02 dgama =   0.8953E-03

 Node number    29    R-Coord=   5.000     Z-Coord=   0.000    
 S-rr  =   0.1543E+05 S-zz  =   -57.54     S-rz  =   -36.68     S-h   =   0.1983E+05
 S-max =   0.1543E+05 S-min =   -57.62     Angle =  -0.1356    
 S-eff =   0.1810E+05 Eps.  =   0.4154E-02 dgama =   0.2011E-02

 Node number    30    R-Coord=   6.000     Z-Coord=  0.7500    
 S-rr  =   -8572.     S-zz  =   -133.4     S-rz  =    796.0     S-h   =  -0.1399E+05
 S-max =   -58.99     S-min =   -8646.     Angle =    84.66    
 S-eff =   0.1217E+05 Eps.  =   0.9923E-03 dgama =   0.5606E-03

 Node number    31    R-Coord=   5.000     Z-Coord=   1.000    
 S-rr  =  -0.1592E+05 S-zz  =   -256.8     S-rz  =   -50.21     S-h   =  -0.2047E+05
 S-max =   -256.6     S-min =  -0.1592E+05 Angle =   -89.82    
 S-eff =   0.1837E+05 Eps.  =   0.4010E-02 dgama =   0.1976E-02

 Node number    32    R-Coord=   4.000     Z-Coord=  0.7500    
 S-rr  =  -0.1222E+05 S-zz  =   -188.4     S-rz  =    523.4     S-h   =  -0.1492E+05
 S-max =   -165.7     S-min =  -0.1225E+05 Angle =    87.51    
 S-eff =   0.1361E+05 Eps.  =   0.1955E-02 dgama =   0.8877E-03

 Node number    33    R-Coord=   7.000     Z-Coord=   0.000    
 S-rr  =   0.1180E+05 S-zz  =    13.40     S-rz  =    541.5     S-h   =   0.2170E+05
 S-max =   0.1183E+05 S-min =   -11.42     Angle =    2.624    
 S-eff =   0.1883E+05 Eps.  =   0.2047E-02 dgama =   0.1273E-02

 Node number    34    R-Coord=   8.000     Z-Coord=  0.2500    
 S-rr  =    4647.     S-zz  =    452.9     S-rz  =    935.1     S-h   =   0.1307E+05
 S-max =    4846.     S-min =    253.9     Angle =    12.02    
 S-eff =   0.1124E+05 Eps.  =   0.4507E-03 dgama =   0.3610E-03

 Node number    35    R-Coord=   7.000     Z-Coord=  0.5000    
 S-rr  =    152.4     S-zz  =   -389.2     S-rz  =    1359.     S-h   =    240.4    
 S-max =    1268.     S-min =   -1505.     Angle =    39.37    
 S-eff =    2427.     Eps.  =  -0.5300E-03 dgama =  -0.3376E-03

 Node number    36    R-Coord=   8.000     Z-Coord=  0.7500    
 S-rr  =   -4605.     S-zz  =   -65.75     S-rz  =    984.9     S-h   =  -0.1285E+05
 S-max =    138.7     S-min =   -4809.     Angle =    78.27    
 S-eff =   0.1135E+05 Eps.  =   0.4177E-03 dgama =   0.3611E-03

 Node number    37    R-Coord=   7.000     Z-Coord=   1.000    
 S-rr  =  -0.1200E+05 S-zz  =   -235.3     S-rz  =    99.71     S-h   =  -0.2240E+05
 S-max =   -234.4     S-min =  -0.1200E+05 Angle =    89.51    
 S-eff =   0.1921E+05 Eps.  =   0.1909E-02 dgama =   0.1246E-02

 Node number    38    R-Coord=   9.000     Z-Coord=   0.000    
 S-rr  =    5603.     S-zz  =   -542.7     S-rz  =   -358.6     S-h   =   0.2142E+05
 S-max =    5624.     S-min =   -563.6     Angle =   -3.329    
 S-eff =   0.1963E+05 Eps.  =   0.8556E-03 dgama =   0.8269E-03

 Node number    39    R-Coord=   10.00     Z-Coord=  0.2500    
 S-rr  =   -78.23     S-zz  =   -2905.     S-rz  =    1546.     S-h   =    9457.    
 S-max =    602.9     S-min =   -3586.     Angle =    23.78    
 S-eff =   0.1153E+05 Eps.  =   0.2460E-03 dgama =   0.2537E-03

 Node number    40    R-Coord=   9.000     Z-Coord=  0.5000    
 S-rr  =   -633.2     S-zz  =   -68.52     S-rz  =    2236.     S-h   =    32.23    
 S-max =    1903.     S-min =   -2604.     Angle =    48.60    
 S-eff =    3922.     Eps.  =  -0.2215E-03 dgama =  -0.2099E-03

 Node number    41    R-Coord=   10.00     Z-Coord=  0.7500    
 S-rr  =    123.9     S-zz  =   -807.9     S-rz  =    854.2     S-h   =  -0.1083E+05
 S-max =    631.0     S-min =   -1315.     Angle =    30.70    
 S-eff =   0.1062E+05 Eps.  =   0.1542E-03 dgama =   0.1697E-03

 Node number    42    R-Coord=   9.000     Z-Coord=   1.000    
 S-rr  =   -4236.     S-zz  =   -154.7     S-rz  =    207.2     S-h   =  -0.2146E+05
 S-max =   -144.2     S-min =   -4247.     Angle =    87.10    
 S-eff =   0.1959E+05 Eps.  =   0.7976E-03 dgama =   0.7394E-03

 Node number    43    R-Coord=   3.000     Z-Coord=  0.5000    
 S-rr  =    316.4     S-zz  =   -148.6     S-rz  =    833.0     S-h   =    354.7    
 S-max =    948.8     S-min =   -780.9     Angle =    37.20    
 S-eff =    1522.     Eps.  =  -0.1838E-02 dgama =  -0.7647E-03

 Node number    44    R-Coord=   3.000     Z-Coord=   1.000    
 S-rr  =  -0.1678E+05 S-zz  =   -326.0     S-rz  =   -133.1     S-h   =  -0.1806E+05
 S-max =   -324.9     S-min =  -0.1678E+05 Angle =   -89.54    
 S-eff =   0.1713E+05 Eps.  =   0.6788E-02 dgama =   0.2838E-02

 Node number    45    R-Coord=   3.000     Z-Coord=   0.000    
 S-rr  =   0.1625E+05 S-zz  =    59.16     S-rz  =   -92.99     S-h   =   0.1752E+05
 S-max =   0.1625E+05 S-min =    58.63     Angle =  -0.3290    
 S-eff =   0.1686E+05 Eps.  =   0.6930E-02 dgama =   0.2869E-02




 INCREMENT NUMBER    6
 =====================


 Total load factor ............... =     250.000    
 Incremental load factor ......... =     10.0000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0




 INCREMENT NUMBER    6                   TOTAL LOAD FACTOR =    250.000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      140.608                      75809.7    


 *** WARNING ***
 Diagonal decay of   108789.     for variable no.   86
 roundoff errors likely


        2                      12.2787                      7159.31    


 *** WARNING ***
 Diagonal decay of   107899.     for variable no.   86
 roundoff errors likely


        3                     0.796002E-01                  31.1987    


 *** WARNING ***
 Diagonal decay of   108167.     for variable no.   86
 roundoff errors likely


        4                     0.302308E-04                 0.131600E-01


 *** WARNING ***
 Diagonal decay of   108168.     for variable no.   86
 roundoff errors likely


        5                     0.105089E-09                 0.384280E-07
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =    10.0000    
 --------------------------------------------------------------------------


 Results for load increment   6 Load factor =    250.000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000      -0.540810    
    2      0.00000      -0.541171    
    3     0.347082E-01  -0.286262    
    4     0.287258E-01  -0.413689    
    5     0.363842E-01  -0.143689    
    6    -0.358344E-01  -0.144347    
    7    -0.341776E-01  -0.286694    
    8     0.356212E-01    0.00000    
    9    -0.344926E-01  -0.114104E-02
   10    -0.167098E-01  -0.506470    
   11     0.170183E-01  -0.506151    
   12    -0.282470E-01  -0.414023    
   13      0.00000      -0.545117    
   14     0.290378E-03  -0.145094    
   15     0.183553E-03  -0.145426E-02
   16     0.190065E-03  -0.509715    
   17     0.290668E-03  -0.416185    
   18     0.291009E-03  -0.288043    
   19     0.902242E-02  -0.532352    
   20     0.863393E-02  -0.508921    
   21     0.854939E-04  -0.535801    
   22      0.00000      -0.544141    
   23    -0.829300E-02  -0.509086    
   24    -0.881466E-02  -0.532482    
   25      0.00000      -0.544317    
   26     0.175034E-01  -0.287571    
   27     0.248541E-03  -0.354936    
   28     0.145454E-01  -0.415645    
   29     0.323294E-01  -0.353558    
   30    -0.169630E-01  -0.287771    
   31    -0.317961E-01  -0.353456    
   32    -0.140070E-01  -0.415807    
   33     0.359405E-01  -0.216600    
   34     0.183878E-01  -0.144589    
   35     0.248209E-03  -0.217210    
   36    -0.177814E-01  -0.144921    
   37    -0.354109E-01  -0.216419    
   38     0.360795E-01  -0.724081E-01
   39     0.177717E-01  -0.853090E-03
   40     0.272909E-03  -0.724077E-01
   41    -0.171437E-01  -0.137492E-02
   42    -0.355442E-01  -0.720425E-01
   43     0.218636E-03  -0.468652    
   44    -0.232343E-01  -0.466244    
   45     0.236733E-01  -0.466189    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      181.824          0.00000    
    2     -3.94062          0.00000    
    8      0.00000          78539.8    
   13     -456.722          0.00000    
   22      274.817          0.00000    
   25      7.98888          0.00000    
       ---------------  ---------------
 Totals    3.96708          78539.8    




 INCREMENT NUMBER    7
 =====================


 Total load factor ............... =     255.000    
 Incremental load factor ......... =     5.00000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   1
 State variables at nodes........... =   1
 Output to re-start file............ =   0


 *** WARNING ***
 Diagonal decay of   116179.     for variable no.   86
 roundoff errors likely






 INCREMENT NUMBER    7                   TOTAL LOAD FACTOR =    255.000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      113.648                      60188.0    


 *** WARNING ***
 Diagonal decay of   172578.     for variable no.   86
 roundoff errors likely


        2                      3.55596                      1440.78    


 *** WARNING ***
 Diagonal decay of   172471.     for variable no.   86
 roundoff errors likely


        3                     0.144611E-01                  6.80958    


 *** WARNING ***
 Diagonal decay of   172718.     for variable no.   86
 roundoff errors likely


        4                     0.899221E-06                 0.456013E-03


 *** WARNING ***
 Diagonal decay of   172718.     for variable no.   86
 roundoff errors likely


        5                     0.896057E-10                 0.408145E-07
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =    5.00000    
 --------------------------------------------------------------------------


 Results for load increment   7 Load factor =    255.000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000      -0.690309    
    2      0.00000      -0.690863    
    3     0.443998E-01  -0.361686    
    4     0.372097E-01  -0.524984    
    5     0.461405E-01  -0.180876    
    6    -0.451529E-01  -0.181727    
    7    -0.433966E-01  -0.362292    
    8     0.448915E-01    0.00000    
    9    -0.431917E-01  -0.141050E-02
   10    -0.217262E-01  -0.645458    
   11     0.222935E-01  -0.644961    
   12    -0.363220E-01  -0.525499    
   13      0.00000      -0.696289    
   14     0.500020E-03  -0.182702    
   15     0.370779E-03  -0.181570E-02
   16     0.328555E-03  -0.649883    
   17     0.507792E-03  -0.528427    
   18     0.534689E-03  -0.364051    
   19     0.118673E-01  -0.679226    
   20     0.113516E-01  -0.648708    
   21     0.157242E-03  -0.684031    
   22      0.00000      -0.694847    
   23    -0.107423E-01  -0.648958    
   24    -0.115255E-01  -0.679470    
   25      0.00000      -0.695126    
   26     0.224806E-01  -0.363431    
   27     0.480134E-03  -0.449582    
   28     0.189101E-01  -0.527601    
   29     0.415973E-01  -0.447684    
   30    -0.214626E-01  -0.363718    
   31    -0.406180E-01  -0.447608    
   32    -0.179522E-01  -0.527862    
   33     0.457557E-01  -0.273203    
   34     0.233892E-01  -0.182064    
   35     0.470852E-03  -0.274030    
   36    -0.223476E-01  -0.182492    
   37    -0.447894E-01  -0.272952    
   38     0.455841E-01  -0.909947E-01
   39     0.224888E-01  -0.108380E-02
   40     0.482595E-03  -0.910575E-01
   41    -0.214123E-01  -0.172008E-02
   42    -0.446440E-01  -0.905509E-01
   43     0.388556E-03  -0.596390    
   44    -0.300602E-01  -0.593077    
   45     0.308386E-01  -0.592967    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      259.897          0.00000    
    2     -49.1318          0.00000    
    8      0.00000          80110.6    
   13     -388.696          0.00000    
   22      106.229          0.00000    
   25      76.4181          0.00000    
       ---------------  ---------------
 Totals    4.71612          80110.6    


 Gauss point stresses and and other state variables
 ==================================================


 Element number    1

 Gauss point  1       R-Coord=  0.4226     Z-Coord=  0.1057    
 S-rr  =   0.1604E+05 S-zz  =    119.9     S-rz  =   -148.9     S-h   =   0.1620E+05
 S-max =   0.1604E+05 S-min =    118.5     Angle =  -0.5359    
 S-eff =   0.1600E+05 Eps.  =   0.1679E-01 dgama =   0.4642E-02

 Gauss point  2       R-Coord=  0.4226     Z-Coord=  0.3943    
 S-rr  =   0.1577E+05 S-zz  =   -154.2     S-rz  =    127.2     S-h   =   0.1592E+05
 S-max =   0.1577E+05 S-min =   -155.3     Angle =   0.4579    
 S-eff =   0.1600E+05 Eps.  =   0.2983E-02 dgama =   0.1360E-02

 Gauss point  3       R-Coord=   1.577     Z-Coord=  0.1057    
 S-rr  =   0.1549E+05 S-zz  =   -157.2     S-rz  =    218.2     S-h   =   0.1616E+05
 S-max =   0.1550E+05 S-min =   -160.2     Angle =   0.7987    
 S-eff =   0.1600E+05 Eps.  =   0.1486E-01 dgama =   0.4084E-02

 Gauss point  4       R-Coord=   1.577     Z-Coord=  0.3943    
 S-rr  =   0.1560E+05 S-zz  =   -59.10     S-rz  =    303.0     S-h   =   0.1625E+05
 S-max =   0.1560E+05 S-min =   -64.96     Angle =    1.108    
 S-eff =   0.1600E+05 Eps.  =   0.2470E-02 dgama =   0.1196E-02


 Element number    2

 Gauss point  1       R-Coord=  0.4226     Z-Coord=  0.6057    
 S-rr  =  -0.1624E+05 S-zz  =   -343.2     S-rz  =    316.3     S-h   =  -0.1642E+05
 S-max =   -337.0     S-min =  -0.1625E+05 Angle =    88.86    
 S-eff =   0.1600E+05 Eps.  =   0.2294E-02 dgama =   0.1063E-02

 Gauss point  2       R-Coord=  0.4226     Z-Coord=  0.8943    
 S-rr  =  -0.1602E+05 S-zz  =   -107.1     S-rz  =   -79.11     S-h   =  -0.1619E+05
 S-max =   -106.7     S-min =  -0.1603E+05 Angle =   -89.72    
 S-eff =   0.1600E+05 Eps.  =   0.1608E-01 dgama =   0.4374E-02

 Gauss point  3       R-Coord=   1.577     Z-Coord=  0.6057    
 S-rr  =  -0.1563E+05 S-zz  =   -29.85     S-rz  =    161.5     S-h   =  -0.1640E+05
 S-max =   -28.18     S-min =  -0.1563E+05 Angle =    89.41    
 S-eff =   0.1600E+05 Eps.  =   0.1824E-02 dgama =   0.9329E-03

 Gauss point  4       R-Coord=   1.577     Z-Coord=  0.8943    
 S-rr  =  -0.1603E+05 S-zz  =   -384.5     S-rz  =    121.8     S-h   =  -0.1672E+05
 S-max =   -383.5     S-min =  -0.1603E+05 Angle =    89.55    
 S-eff =   0.1600E+05 Eps.  =   0.1425E-01 dgama =   0.3814E-02


 Element number    3

 Gauss point  1       R-Coord=   5.577     Z-Coord=  0.1057    
 S-rr  =   0.1176E+05 S-zz  =   -422.5     S-rz  =    663.2     S-h   =   0.1764E+05
 S-max =   0.1179E+05 S-min =   -458.5     Angle =    3.108    
 S-eff =   0.1600E+05 Eps.  =   0.6332E-02 dgama =   0.1803E-02

 Gauss point  2       R-Coord=   4.423     Z-Coord=  0.1057    
 S-rr  =   0.1375E+05 S-zz  =    286.6     S-rz  =   -136.5     S-h   =   0.1797E+05
 S-max =   0.1375E+05 S-min =    285.2     Angle =  -0.5807    
 S-eff =   0.1600E+05 Eps.  =   0.8351E-02 dgama =   0.2306E-02

 Gauss point  3       R-Coord=   5.577     Z-Coord=  0.3943    
 S-rr  =    9900.     S-zz  =   -611.8     S-rz  =    1306.     S-h   =   0.1761E+05
 S-max =   0.1006E+05 S-min =   -771.5     Angle =    6.975    
 S-eff =   0.1600E+05 Eps.  =   0.2229E-03 dgama =   0.2229E-03

 Gauss point  4       R-Coord=   4.423     Z-Coord=  0.3943    
 S-rr  =   0.1238E+05 S-zz  =    222.9     S-rz  =    933.6     S-h   =   0.1824E+05
 S-max =   0.1246E+05 S-min =    151.6     Angle =    4.365    
 S-eff =   0.1600E+05 Eps.  =   0.6001E-03 dgama =   0.6001E-03


 Element number    4

 Gauss point  1       R-Coord=   5.577     Z-Coord=  0.6057    
 S-rr  =   -9321.     S-zz  =    34.92     S-rz  =    626.6     S-h   =  -0.1763E+05
 S-max =    76.70     S-min =   -9363.     Angle =    86.19    
 S-eff =   0.1534E+05 Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   4.423     Z-Coord=  0.6057    
 S-rr  =  -0.1310E+05 S-zz  =   -381.5     S-rz  =    1319.     S-h   =  -0.1812E+05
 S-max =   -246.2     S-min =  -0.1324E+05 Angle =    84.14    
 S-eff =   0.1600E+05 Eps.  =   0.3693E-03 dgama =   0.3693E-03

 Gauss point  3       R-Coord=   5.577     Z-Coord=  0.8943    
 S-rr  =  -0.1281E+05 S-zz  =   -631.2     S-rz  =    249.1     S-h   =  -0.1874E+05
 S-max =   -626.1     S-min =  -0.1281E+05 Angle =    88.83    
 S-eff =   0.1600E+05 Eps.  =   0.5985E-02 dgama =   0.1663E-02

 Gauss point  4       R-Coord=   4.423     Z-Coord=  0.8943    
 S-rr  =  -0.1354E+05 S-zz  =    2.910     S-rz  =    139.5     S-h   =  -0.1765E+05
 S-max =    4.346     S-min =  -0.1354E+05 Angle =    89.41    
 S-eff =   0.1600E+05 Eps.  =   0.8098E-02 dgama =   0.2170E-02


 Element number    5

 Gauss point  1       R-Coord=   6.423     Z-Coord=  0.1057    
 S-rr  =   0.1099E+05 S-zz  =    329.5     S-rz  =   -424.2     S-h   =   0.1871E+05
 S-max =   0.1101E+05 S-min =    312.7     Angle =   -2.275    
 S-eff =   0.1600E+05 Eps.  =   0.4881E-02 dgama =   0.1465E-02

 Gauss point  2       R-Coord=   6.423     Z-Coord=  0.3943    
 S-rr  =    7044.     S-zz  =    928.3     S-rz  =    1382.     S-h   =   0.1739E+05
 S-max =    7342.     S-min =    630.3     Angle =    12.16    
 S-eff =   0.1461E+05 Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       R-Coord=   7.577     Z-Coord=  0.1057    
 S-rr  =    8210.     S-zz  =   -246.4     S-rz  =    1555.     S-h   =   0.1795E+05
 S-max =    8487.     S-min =   -523.1     Angle =    10.09    
 S-eff =   0.1600E+05 Eps.  =   0.3695E-02 dgama =   0.1163E-02

 Gauss point  4       R-Coord=   7.577     Z-Coord=  0.3943    
 S-rr  =    3941.     S-zz  =   -2114.     S-rz  =    1102.     S-h   =   0.1384E+05
 S-max =    4135.     S-min =   -2308.     Angle =    9.998    
 S-eff =   0.1408E+05 Eps.  =    0.000     dgama =    0.000    


 Element number    6

 Gauss point  1       R-Coord=   6.423     Z-Coord=  0.6057    
 S-rr  =   -7474.     S-zz  =   -211.1     S-rz  =    2036.     S-h   =  -0.1578E+05
 S-max =    320.8     S-min =   -8006.     Angle =    75.36    
 S-eff =   0.1395E+05 Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   6.423     Z-Coord=  0.8943    
 S-rr  =  -0.1090E+05 S-zz  =    87.64     S-rz  =    281.1     S-h   =  -0.1826E+05
 S-max =    94.82     S-min =  -0.1091E+05 Angle =    88.54    
 S-eff =   0.1600E+05 Eps.  =   0.4762E-02 dgama =   0.1416E-02

 Gauss point  3       R-Coord=   7.577     Z-Coord=  0.6057    
 S-rr  =   -3533.     S-zz  =   -487.2     S-rz  =    790.8     S-h   =  -0.1307E+05
 S-max =   -294.1     S-min =   -3726.     Angle =    76.28    
 S-eff =   0.1146E+05 Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   7.577     Z-Coord=  0.8943    
 S-rr  =   -8761.     S-zz  =   -399.2     S-rz  =    417.5     S-h   =  -0.1883E+05
 S-max =   -378.4     S-min =   -8782.     Angle =    87.15    
 S-eff =   0.1600E+05 Eps.  =   0.3383E-02 dgama =   0.1091E-02


 Element number    7

 Gauss point  1       R-Coord=   8.423     Z-Coord=  0.1057    
 S-rr  =    6137.     S-zz  =    789.9     S-rz  =   -624.7     S-h   =   0.1874E+05
 S-max =    6209.     S-min =    717.9     Angle =   -6.576    
 S-eff =   0.1600E+05 Eps.  =   0.2721E-02 dgama =   0.9612E-03

 Gauss point  2       R-Coord=   8.423     Z-Coord=  0.3943    
 S-rr  =    1704.     S-zz  =    2217.     S-rz  =    1960.     S-h   =   0.1295E+05
 S-max =    3936.     S-min =   -16.05     Angle =    48.73    
 S-eff =   0.1151E+05 Eps.  =    0.000     dgama =    0.000    

 Gauss point  3       R-Coord=   9.577     Z-Coord=  0.1057    
 S-rr  =    2834.     S-zz  =   -1877.     S-rz  =    1043.     S-h   =   0.1584E+05
 S-max =    3055.     S-min =   -2098.     Angle =    11.94    
 S-eff =   0.1600E+05 Eps.  =   0.2248E-02 dgama =   0.8073E-03

 Gauss point  4       R-Coord=   9.577     Z-Coord=  0.3943    
 S-rr  =   -1294.     S-zz  =   -1854.     S-rz  =    1716.     S-h   =    9504.    
 S-max =    165.2     S-min =   -3312.     Angle =    40.37    
 S-eff =   0.1148E+05 Eps.  =    0.000     dgama =    0.000    


 Element number    8

 Gauss point  1       R-Coord=   8.423     Z-Coord=  0.6057    
 S-rr  =   -1673.     S-zz  =    403.5     S-rz  =    2378.     S-h   =  -0.1115E+05
 S-max =    1960.     S-min =   -3229.     Angle =    56.80    
 S-eff =   0.1144E+05 Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   8.423     Z-Coord=  0.8943    
 S-rr  =   -6175.     S-zz  =   -138.3     S-rz  =    583.1     S-h   =  -0.1824E+05
 S-max =   -82.51     S-min =   -6231.     Angle =    84.53    
 S-eff =   0.1600E+05 Eps.  =   0.2682E-02 dgama =   0.9105E-03

 Gauss point  3       R-Coord=   9.577     Z-Coord=  0.6057    
 S-rr  =   -168.3     S-zz  =   -889.8     S-rz  =    1492.     S-h   =   -9595.    
 S-max =    1006.     S-min =   -2064.     Angle =    38.20    
 S-eff =    9448.     Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   9.577     Z-Coord=  0.8943    
 S-rr  =   -1301.     S-zz  =   -329.4     S-rz  =    633.1     S-h   =  -0.1676E+05
 S-max =   -17.25     S-min =   -1613.     Angle =    63.76    
 S-eff =   0.1600E+05 Eps.  =   0.1978E-02 dgama =   0.7299E-03


 Element number    9

 Gauss point  1       R-Coord=   2.423     Z-Coord=  0.8943    
 S-rr  =  -0.1536E+05 S-zz  =   -93.97     S-rz  =    77.16     S-h   =  -0.1674E+05
 S-max =   -93.58     S-min =  -0.1536E+05 Angle =    89.71    
 S-eff =   0.1600E+05 Eps.  =   0.1256E-01 dgama =   0.3364E-02

 Gauss point  2       R-Coord=   3.577     Z-Coord=  0.8943    
 S-rr  =  -0.1483E+05 S-zz  =   -442.1     S-rz  =    201.4     S-h   =  -0.1767E+05
 S-max =   -439.3     S-min =  -0.1483E+05 Angle =    89.20    
 S-eff =   0.1600E+05 Eps.  =   0.9895E-02 dgama =   0.2651E-02

 Gauss point  3       R-Coord=   2.423     Z-Coord=  0.6057    
 S-rr  =  -0.1554E+05 S-zz  =   -342.1     S-rz  =    696.8     S-h   =  -0.1696E+05
 S-max =   -310.2     S-min =  -0.1558E+05 Angle =    87.38    
 S-eff =   0.1600E+05 Eps.  =   0.1431E-02 dgama =   0.8383E-03

 Gauss point  4       R-Coord=   3.577     Z-Coord=  0.6057    
 S-rr  =  -0.1381E+05 S-zz  =   -18.52     S-rz  =    458.6     S-h   =  -0.1753E+05
 S-max =   -3.296     S-min =  -0.1383E+05 Angle =    88.10    
 S-eff =   0.1600E+05 Eps.  =   0.7408E-03 dgama =   0.6304E-03


 Element number   10

 Gauss point  1       R-Coord=   2.423     Z-Coord=  0.3943    
 S-rr  =   0.1502E+05 S-zz  =   -40.80     S-rz  =    522.6     S-h   =   0.1672E+05
 S-max =   0.1503E+05 S-min =   -58.92     Angle =    1.985    
 S-eff =   0.1600E+05 Eps.  =   0.1894E-02 dgama =   0.1025E-02

 Gauss point  2       R-Coord=   3.577     Z-Coord=  0.3943    
 S-rr  =   0.1392E+05 S-zz  =   -259.7     S-rz  =    726.4     S-h   =   0.1701E+05
 S-max =   0.1396E+05 S-min =   -296.8     Angle =    2.925    
 S-eff =   0.1600E+05 Eps.  =   0.1234E-02 dgama =   0.8434E-03

 Gauss point  3       R-Coord=   2.423     Z-Coord=  0.1057    
 S-rr  =   0.1540E+05 S-zz  =    162.9     S-rz  =   -61.00     S-h   =   0.1683E+05
 S-max =   0.1540E+05 S-min =    162.6     Angle =  -0.2294    
 S-eff =   0.1600E+05 Eps.  =   0.1304E-01 dgama =   0.3561E-02

 Gauss point  4       R-Coord=   3.577     Z-Coord=  0.1057    
 S-rr  =   0.1418E+05 S-zz  =   -218.6     S-rz  =    438.1     S-h   =   0.1698E+05
 S-max =   0.1419E+05 S-min =   -231.9     Angle =    1.742    
 S-eff =   0.1600E+05 Eps.  =   0.1035E-01 dgama =   0.2827E-02


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    R-Coord=   0.000     Z-Coord=   0.000    
 S-rr  =   0.1639E+05 S-zz  =    371.5     S-rz  =   -410.0     S-h   =   0.1636E+05
 S-max =   0.1640E+05 S-min =    361.0     Angle =   -1.465    
 S-eff =   0.1602E+05 Eps.  =   0.2273E-01 dgama =   0.6101E-02

 Node number     2    R-Coord=   0.000     Z-Coord=   1.000    
 S-rr  =  -0.1586E+05 S-zz  =    160.1     S-rz  =   -345.0     S-h   =  -0.1583E+05
 S-max =    167.5     S-min =  -0.1587E+05 Angle =   -88.77    
 S-eff =   0.1602E+05 Eps.  =   0.2199E-01 dgama =   0.5848E-02

 Node number     3    R-Coord=   6.000     Z-Coord=   0.000    
 S-rr  =   0.1259E+05 S-zz  =   -302.6     S-rz  =   -667.1     S-h   =   0.1834E+05
 S-max =   0.1262E+05 S-min =   -337.1     Angle =   -2.955    
 S-eff =   0.1657E+05 Eps.  =   0.7435E-02 dgama =   0.2166E-02

 Node number     4    R-Coord=   4.000     Z-Coord=   0.000    
 S-rr  =   0.1436E+05 S-zz  =    93.84     S-rz  =   -161.7     S-h   =   0.1748E+05
 S-max =   0.1436E+05 S-min =    92.01     Angle =  -0.6492    
 S-eff =   0.1606E+05 Eps.  =   0.1229E-01 dgama =   0.3171E-02

 Node number     5    R-Coord=   8.000     Z-Coord=   0.000    
 S-rr  =    8905.     S-zz  =    806.3     S-rz  =    155.1     S-h   =   0.2070E+05
 S-max =    8908.     S-min =    803.3     Angle =    1.097    
 S-eff =   0.1733E+05 Eps.  =   0.4203E-02 dgama =   0.1414E-02

 Node number     6    R-Coord=   8.000     Z-Coord=   1.000    
 S-rr  =  -0.1010E+05 S-zz  =   -493.9     S-rz  =    149.2     S-h   =  -0.2148E+05
 S-max =   -491.6     S-min =  -0.1010E+05 Angle =    89.11    
 S-eff =   0.1820E+05 Eps.  =   0.3974E-02 dgama =   0.1331E-02

 Node number     7    R-Coord=   6.000     Z-Coord=   1.000    
 S-rr  =  -0.1346E+05 S-zz  =   -422.2     S-rz  =   -168.9     S-h   =  -0.1914E+05
 S-max =   -420.0     S-min =  -0.1346E+05 Angle =   -89.26    
 S-eff =   0.1663E+05 Eps.  =   0.7181E-02 dgama =   0.2082E-02

 Node number     8    R-Coord=   10.00     Z-Coord=   0.000    
 S-rr  =    3095.     S-zz  =   -2674.     S-rz  =    1663.     S-h   =   0.1718E+05
 S-max =    3540.     S-min =   -3119.     Angle =    14.98    
 S-eff =   0.1792E+05 Eps.  =   0.2835E-02 dgama =   0.1026E-02

 Node number     9    R-Coord=   10.00     Z-Coord=   1.000    
 S-rr  =    519.3     S-zz  =   -46.52     S-rz  =    462.3     S-h   =  -0.1884E+05
 S-max =    778.4     S-min =   -305.6     Angle =    29.27    
 S-eff =   0.1910E+05 Eps.  =   0.2350E-02 dgama =   0.9067E-03

 Node number    10    R-Coord=   2.000     Z-Coord=   1.000    
 S-rr  =  -0.1579E+05 S-zz  =   -240.3     S-rz  =   -7.638     S-h   =  -0.1669E+05
 S-max =   -240.3     S-min =  -0.1579E+05 Angle =   -89.97    
 S-eff =   0.1602E+05 Eps.  =   0.1791E-01 dgama =   0.4612E-02

 Node number    11    R-Coord=   2.000     Z-Coord=   0.000    
 S-rr  =   0.1560E+05 S-zz  =    27.20     S-rz  =   -74.83     S-h   =   0.1645E+05
 S-max =   0.1560E+05 S-min =    26.84     Angle =  -0.2752    
 S-eff =   0.1602E+05 Eps.  =   0.1844E-01 dgama =   0.4858E-02

 Node number    12    R-Coord=   4.000     Z-Coord=   1.000    
 S-rr  =  -0.1437E+05 S-zz  =   -149.1     S-rz  =   -119.3     S-h   =  -0.1748E+05
 S-max =   -148.1     S-min =  -0.1437E+05 Angle =   -89.52    
 S-eff =   0.1601E+05 Eps.  =   0.1197E-01 dgama =   0.3047E-02

 Node number    13    R-Coord=   0.000     Z-Coord=  0.5000    
 S-rr  =   -475.2     S-zz  =   -481.4     S-rz  =    377.5     S-h   =   -471.1    
 S-max =   -100.8     S-min =   -855.8     Angle =    44.76    
 S-eff =    653.9     Eps.  =  -0.2417E-02 dgama =   0.3795E-05

 Node number    14    R-Coord=   8.000     Z-Coord=  0.5000    
 S-rr  =    568.9     S-zz  =    201.5     S-rz  =    1888.     S-h   =    1042.    
 S-max =    2282.     S-min =   -1512.     Angle =    42.22    
 S-eff =    3350.     Eps.  =  -0.1096E-02 dgama =  -0.3677E-03

 Node number    15    R-Coord=   10.00     Z-Coord=  0.5000    
 S-rr  =   -1757.     S-zz  =   -2619.     S-rz  =    1487.     S-h   =   -275.2    
 S-max =   -639.9     S-min =   -3737.     Angle =    36.92    
 S-eff =    3294.     Eps.  =  -0.6946E-03 dgama =  -0.2589E-03

 Node number    16    R-Coord=   2.000     Z-Coord=  0.5000    
 S-rr  =   -173.8     S-zz  =   -85.75     S-rz  =    551.2     S-h   =   -19.88    
 S-max =    423.2     S-min =   -682.8     Angle =    47.28    
 S-eff =    964.1     Eps.  =  -0.2413E-02 dgama =   0.7909E-05

 Node number    17    R-Coord=   4.000     Z-Coord=  0.5000    
 S-rr  =   -269.5     S-zz  =   -70.43     S-rz  =    1160.     S-h   =   -141.8    
 S-max =    994.8     S-min =   -1335.     Angle =    47.45    
 S-eff =    2018.     Eps.  =  -0.2387E-02 dgama =  -0.1714E-04

 Node number    18    R-Coord=   6.000     Z-Coord=  0.5000    
 S-rr  =    217.2     S-zz  =    478.1     S-rz  =    1948.     S-h   =    691.0    
 S-max =    2300.     S-min =   -1605.     Angle =    46.92    
 S-eff =    3399.     Eps.  =  -0.1974E-02 dgama =  -0.5851E-03

 Node number    19    R-Coord=   1.000     Z-Coord=   0.000    
 S-rr  =   0.1580E+05 S-zz  =    13.55     S-rz  =   -31.39     S-h   =   0.1621E+05
 S-max =   0.1580E+05 S-min =    13.49     Angle =  -0.1139    
 S-eff =   0.1600E+05 Eps.  =   0.2062E-01 dgama =   0.5492E-02

 Node number    20    R-Coord=   2.000     Z-Coord=  0.2500    
 S-rr  =   0.1552E+05 S-zz  =    14.73     S-rz  =    231.1     S-h   =   0.1648E+05
 S-max =   0.1553E+05 S-min =    11.28     Angle =   0.8534    
 S-eff =   0.1601E+05 Eps.  =   0.8148E-02 dgama =   0.2484E-02

 Node number    21    R-Coord=   1.000     Z-Coord=  0.5000    
 S-rr  =   -125.1     S-zz  =   -151.9     S-rz  =    299.8     S-h   =   -173.9    
 S-max =    161.7     S-min =   -438.6     Angle =    43.72    
 S-eff =    521.1     Eps.  =  -0.2403E-02 dgama =   0.7052E-05

 Node number    22    R-Coord=   0.000     Z-Coord=  0.2500    
 S-rr  =   0.1603E+05 S-zz  =    16.13     S-rz  =   -110.2     S-h   =   0.1600E+05
 S-max =   0.1603E+05 S-min =    15.37     Angle =  -0.3941    
 S-eff =   0.1600E+05 Eps.  =   0.1033E-01 dgama =   0.3134E-02

 Node number    23    R-Coord=   2.000     Z-Coord=  0.7500    
 S-rr  =  -0.1579E+05 S-zz  =   -207.0     S-rz  =    278.9     S-h   =  -0.1661E+05
 S-max =   -202.1     S-min =  -0.1579E+05 Angle =    88.97    
 S-eff =   0.1602E+05 Eps.  =   0.7613E-02 dgama =   0.2259E-02

 Node number    24    R-Coord=   1.000     Z-Coord=   1.000    
 S-rr  =  -0.1606E+05 S-zz  =   -267.4     S-rz  =   -58.31     S-h   =  -0.1647E+05
 S-max =   -267.2     S-min =  -0.1606E+05 Angle =   -89.79    
 S-eff =   0.1600E+05 Eps.  =   0.1996E-01 dgama =   0.5227E-02

 Node number    25    R-Coord=   0.000     Z-Coord=  0.7500    
 S-rr  =  -0.1625E+05 S-zz  =   -231.7     S-rz  =    110.2     S-h   =  -0.1621E+05
 S-max =   -231.0     S-min =  -0.1625E+05 Angle =    89.61    
 S-eff =   0.1600E+05 Eps.  =   0.9611E-02 dgama =   0.2845E-02

 Node number    26    R-Coord=   6.000     Z-Coord=  0.2500    
 S-rr  =   0.1005E+05 S-zz  =    245.7     S-rz  =    683.6     S-h   =   0.1814E+05
 S-max =   0.1010E+05 S-min =    198.3     Angle =    3.969    
 S-eff =   0.1557E+05 Eps.  =   0.2748E-02 dgama =   0.8198E-03

 Node number    27    R-Coord=   5.000     Z-Coord=  0.5000    
 S-rr  =    30.19     S-zz  =   -181.3     S-rz  =    1345.     S-h   =    104.6    
 S-max =    1274.     S-min =   -1425.     Angle =    42.75    
 S-eff =    2344.     Eps.  =  -0.2225E-02 dgama =  -0.3195E-03

 Node number    28    R-Coord=   4.000     Z-Coord=  0.2500    
 S-rr  =   0.1376E+05 S-zz  =    94.11     S-rz  =    447.5     S-h   =   0.1768E+05
 S-max =   0.1377E+05 S-min =    79.46     Angle =    1.874    
 S-eff =   0.1601E+05 Eps.  =   0.5048E-02 dgama =   0.1641E-02

 Node number    29    R-Coord=   5.000     Z-Coord=   0.000    
 S-rr  =   0.1334E+05 S-zz  =   -21.69     S-rz  =   -50.04     S-h   =   0.1777E+05
 S-max =   0.1334E+05 S-min =   -21.88     Angle =  -0.2145    
 S-eff =   0.1604E+05 Eps.  =   0.9878E-02 dgama =   0.2655E-02

 Node number    30    R-Coord=   6.000     Z-Coord=  0.7500    
 S-rr  =  -0.1027E+05 S-zz  =   -130.0     S-rz  =    846.4     S-h   =  -0.1785E+05
 S-max =   -59.86     S-min =  -0.1034E+05 Angle =    85.26    
 S-eff =   0.1547E+05 Eps.  =   0.2586E-02 dgama =   0.7192E-03

 Node number    31    R-Coord=   5.000     Z-Coord=   1.000    
 S-rr  =  -0.1389E+05 S-zz  =   -365.7     S-rz  =   -90.65     S-h   =  -0.1831E+05
 S-max =   -365.1     S-min =  -0.1390E+05 Angle =   -89.62    
 S-eff =   0.1620E+05 Eps.  =   0.9551E-02 dgama =   0.2550E-02

 Node number    32    R-Coord=   4.000     Z-Coord=  0.7500    
 S-rr  =  -0.1403E+05 S-zz  =   -192.2     S-rz  =    572.5     S-h   =  -0.1782E+05
 S-max =   -168.5     S-min =  -0.1405E+05 Angle =    87.63    
 S-eff =   0.1610E+05 Eps.  =   0.4695E-02 dgama =   0.1451E-02

 Node number    33    R-Coord=   7.000     Z-Coord=   0.000    
 S-rr  =   0.1110E+05 S-zz  =    273.8     S-rz  =    317.5     S-h   =   0.1932E+05
 S-max =   0.1111E+05 S-min =    264.5     Angle =    1.678    
 S-eff =   0.1656E+05 Eps.  =   0.5857E-02 dgama =   0.1795E-02

 Node number    34    R-Coord=   8.000     Z-Coord=  0.2500    
 S-rr  =    5036.     S-zz  =    447.0     S-rz  =    1023.     S-h   =   0.1606E+05
 S-max =    5254.     S-min =    229.3     Angle =    12.01    
 S-eff =   0.1401E+05 Eps.  =   0.1538E-02 dgama =   0.5174E-03

 Node number    35    R-Coord=   7.000     Z-Coord=  0.5000    
 S-rr  =    34.83     S-zz  =   -622.5     S-rz  =    1646.     S-h   =    849.5    
 S-max =    1385.     S-min =   -1973.     Angle =    39.36    
 S-eff =    3125.     Eps.  =  -0.1530E-02 dgama =  -0.4698E-03

 Node number    36    R-Coord=   8.000     Z-Coord=  0.7500    
 S-rr  =   -5063.     S-zz  =   -89.28     S-rz  =    1017.     S-h   =  -0.1541E+05
 S-max =    110.7     S-min =   -5263.     Angle =    78.88    
 S-eff =   0.1365E+05 Eps.  =   0.1455E-02 dgama =   0.4872E-03

 Node number    37    R-Coord=   7.000     Z-Coord=   1.000    
 S-rr  =  -0.1141E+05 S-zz  =   -85.02     S-rz  =   -40.29     S-h   =  -0.2005E+05
 S-max =   -84.87     S-min =  -0.1142E+05 Angle =   -89.80    
 S-eff =   0.1734E+05 Eps.  =   0.5563E-02 dgama =   0.1712E-02

 Node number    38    R-Coord=   9.000     Z-Coord=   0.000    
 S-rr  =    6052.     S-zz  =   -809.1     S-rz  =   -386.9     S-h   =   0.1951E+05
 S-max =    6074.     S-min =   -830.9     Angle =   -3.217    
 S-eff =   0.1792E+05 Eps.  =   0.3394E-02 dgama =   0.1208E-02

 Node number    39    R-Coord=   10.00     Z-Coord=  0.2500    
 S-rr  =   -382.7     S-zz  =   -3098.     S-rz  =    1640.     S-h   =   0.1151E+05
 S-max =    388.9     S-min =   -3870.     Angle =    25.19    
 S-eff =   0.1376E+05 Eps.  =   0.1038E-02 dgama =   0.3755E-03

 Node number    40    R-Coord=   9.000     Z-Coord=  0.5000    
 S-rr  =   -625.7     S-zz  =    100.3     S-rz  =    2427.     S-h   =    623.0    
 S-max =    2192.     S-min =   -2717.     Angle =    49.25    
 S-eff =    4342.     Eps.  =  -0.8811E-03 dgama =  -0.3119E-03

 Node number    41    R-Coord=   10.00     Z-Coord=  0.7500    
 S-rr  =    432.6     S-zz  =   -881.2     S-rz  =    909.7     S-h   =  -0.1262E+05
 S-max =    897.8     S-min =   -1346.     Angle =    27.08    
 S-eff =   0.1255E+05 Eps.  =   0.8601E-03 dgama =   0.3319E-03

 Node number    42    R-Coord=   9.000     Z-Coord=   1.000    
 S-rr  =   -4770.     S-zz  =   -230.4     S-rz  =    122.4     S-h   =  -0.2011E+05
 S-max =   -227.1     S-min =   -4773.     Angle =    88.46    
 S-eff =   0.1804E+05 Eps.  =   0.3183E-02 dgama =   0.1120E-02

 Node number    43    R-Coord=   3.000     Z-Coord=  0.5000    
 S-rr  =   -87.77     S-zz  =   -171.6     S-rz  =    761.1     S-h   =   -205.0    
 S-max =    632.6     S-min =   -891.9     Angle =    43.42    
 S-eff =    1322.     Eps.  =  -0.2386E-02 dgama =   0.4585E-05

 Node number    44    R-Coord=   3.000     Z-Coord=   1.000    
 S-rr  =  -0.1525E+05 S-zz  =   -300.2     S-rz  =   -21.19     S-h   =  -0.1719E+05
 S-max =   -300.1     S-min =  -0.1525E+05 Angle =   -89.92    
 S-eff =   0.1601E+05 Eps.  =   0.1494E-01 dgama =   0.3839E-02

 Node number    45    R-Coord=   3.000     Z-Coord=   0.000    
 S-rr  =   0.1490E+05 S-zz  =    16.94     S-rz  =    29.00     S-h   =   0.1692E+05
 S-max =   0.1490E+05 S-min =    16.89     Angle =   0.1116    
 S-eff =   0.1599E+05 Eps.  =   0.1540E-01 dgama =   0.4022E-02




 INCREMENT NUMBER    8
 =====================


 Total load factor ............... =     257.000    
 Incremental load factor ......... =     2.00000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0


 *** WARNING ***
 Diagonal decay of   192093.     for variable no.   86
 roundoff errors likely






 INCREMENT NUMBER    8                   TOTAL LOAD FACTOR =    257.000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      30.4011                      16478.9    


 *** WARNING ***
 Diagonal decay of   255218.     for variable no.   86
 roundoff errors likely


        2                     0.323368                      145.966    


 *** WARNING ***
 Diagonal decay of   255344.     for variable no.   86
 roundoff errors likely


        3                     0.789533E-04                 0.274883E-01


 *** WARNING ***
 Diagonal decay of   255383.     for variable no.   86
 roundoff errors likely


        4                     0.752947E-10                 0.285436E-07
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =    2.00000    
 --------------------------------------------------------------------------


 Results for load increment   8 Load factor =    257.000    
 ===========================================================

 Converged solution at iteration number =    4


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000      -0.771499    
    2      0.00000      -0.772166    
    3     0.496926E-01  -0.402527    
    4     0.418300E-01  -0.585379    
    5     0.514353E-01  -0.200987    
    6    -0.501767E-01  -0.201942    
    7    -0.484020E-01  -0.403246    
    8     0.499223E-01    0.00000    
    9    -0.478809E-01  -0.155508E-02
   10    -0.244525E-01  -0.720923    
   11     0.251793E-01  -0.720324    
   12    -0.406933E-01  -0.585980    
   13      0.00000      -0.778388    
   14     0.631191E-03  -0.203046    
   15     0.489233E-03  -0.201395E-02
   16     0.411131E-03  -0.725985    
   17     0.638970E-03  -0.589321    
   18     0.688788E-03  -0.405224    
   19     0.134214E-01  -0.758979    
   20     0.128428E-01  -0.724603    
   21     0.200914E-03  -0.764532    
   22      0.00000      -0.776693    
   23    -0.120715E-01  -0.724903    
   24    -0.129970E-01  -0.759294    
   25      0.00000      -0.777029    
   26     0.252086E-01  -0.404508    
   27     0.614742E-03  -0.500922    
   28     0.212914E-01  -0.588346    
   29     0.466508E-01  -0.498713    
   30    -0.238966E-01  -0.404855    
   31    -0.454031E-01  -0.498652    
   32    -0.200775E-01  -0.588651    
   33     0.510942E-01  -0.303830    
   34     0.261120E-01  -0.202335    
   35     0.611849E-03  -0.304771    
   36    -0.247996E-01  -0.202815    
   37    -0.498545E-01  -0.303545    
   38     0.507429E-01  -0.101049    
   39     0.250570E-01  -0.120954E-02
   40     0.613184E-03  -0.101145    
   41    -0.237045E-01  -0.190732E-02
   42    -0.495490E-01  -0.100564    
   43     0.495895E-03  -0.665716    
   44    -0.337693E-01  -0.661916    
   45     0.347544E-01  -0.661765    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      255.213          0.00000    
    2     -37.4390          0.00000    
    8      0.00000          80738.9    
   13     -319.217          0.00000    
   22      87.2607          0.00000    
   25      18.9515          0.00000    
       ---------------  ---------------
 Totals    4.76939          80738.9    




 INCREMENT NUMBER    9
 =====================


 Total load factor ............... =     259.000    
 Incremental load factor ......... =     2.00000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0


 *** WARNING ***
 Diagonal decay of   274925.     for variable no.   86
 roundoff errors likely






 INCREMENT NUMBER    9                   TOTAL LOAD FACTOR =    259.000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      84.2719                      42787.6    


 *** WARNING ***
 Diagonal decay of   401374.     for variable no.   86
 roundoff errors likely


        2                      3.45086                      1667.56    


 *** WARNING ***
 Diagonal decay of   398182.     for variable no.   86
 roundoff errors likely


        3                     0.472981E-02                  1.94286    


 *** WARNING ***
 Diagonal decay of   398450.     for variable no.   86
 roundoff errors likely


        4                     0.557076E-07                 0.201798E-04
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =    2.00000    
 --------------------------------------------------------------------------


 Results for load increment   9 Load factor =    259.000    
 ===========================================================

 Converged solution at iteration number =    4


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000      -0.921581    
    2      0.00000      -0.922660    
    3     0.597913E-01  -0.477898    
    4     0.506778E-01  -0.696919    
    5     0.615019E-01  -0.238020    
    6    -0.591316E-01  -0.239221    
    7    -0.573419E-01  -0.478858    
    8     0.594853E-01    0.00000    
    9    -0.562220E-01  -0.186930E-02
   10    -0.293380E-01  -0.860558    
   11     0.307089E-01  -0.859607    
   12    -0.485181E-01  -0.697797    
   13      0.00000      -0.930269    
   14     0.119033E-02  -0.240538    
   15     0.994323E-03  -0.241525E-02
   16     0.747108E-03  -0.866725    
   17     0.117132E-02  -0.701848    
   18     0.128318E-02  -0.481256    
   19     0.164051E-01  -0.906409    
   20     0.157873E-01  -0.864911    
   21     0.378727E-03  -0.913439    
   22      0.00000      -0.928052    
   23    -0.143601E-01  -0.865391    
   24    -0.156380E-01  -0.907040    
   25      0.00000      -0.928595    
   26     0.305541E-01  -0.480322    
   27     0.117552E-02  -0.595749    
   28     0.259946E-01  -0.700572    
   29     0.563100E-01  -0.592942    
   30    -0.280790E-01  -0.480793    
   31    -0.539624E-01  -0.592965    
   32    -0.237347E-01  -0.701012    
   33     0.612620E-01  -0.360264    
   34     0.314434E-01  -0.239669    
   35     0.118943E-02  -0.361486    
   36    -0.290082E-01  -0.240277    
   37    -0.588960E-01  -0.359988    
   38     0.605385E-01  -0.119595    
   39     0.300775E-01  -0.146678E-02
   40     0.115603E-02  -0.119747    
   41    -0.276350E-01  -0.229256E-02
   42    -0.582797E-01  -0.119033    
   43     0.940719E-03  -0.793881    
   44    -0.404118E-01  -0.789247    
   45     0.422523E-01  -0.788888    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      271.153          0.00000    
    2     -24.0525          0.00000    
    8      0.00000          81367.2    
   13     -299.234          0.00000    
   22      62.3642          0.00000    
   25     -4.72131          0.00000    
       ---------------  ---------------
 Totals    5.50961          81367.2    




 INCREMENT NUMBER   10
 =====================


 Total load factor ............... =     259.500    
 Incremental load factor ......... =    0.500000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   1
 State variables at nodes........... =   1
 Output to re-start file............ =   0


 *** WARNING ***
 Diagonal decay of   444877.     for variable no.   86
 roundoff errors likely






 INCREMENT NUMBER   10                   TOTAL LOAD FACTOR =    259.500    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      18.2317                      10103.9    


 *** WARNING ***
 Diagonal decay of   706171.     for variable no.   86
 roundoff errors likely


        2                      18.1864                      11035.5    


 *** WARNING ***
 Diagonal decay of  0.533220E+07 for variable no.   86
 roundoff errors likely


        3                      29.7588                      18529.7    


 *** WARNING ***
 Diagonal decay of  0.993595E+07 for variable no.   86
 roundoff errors likely


        4                      7.56173                      4600.22    


 *** WARNING ***
 Diagonal decay of  0.142913E+08 for variable no.   86
 roundoff errors likely


        5                     0.590942                      339.839    


 *** WARNING ***
 Diagonal decay of  0.159664E+08 for variable no.   86
 roundoff errors likely


        6                     0.377823E-02                  2.09994    


 *** WARNING ***
 Diagonal decay of  0.161150E+08 for variable no.   86
 roundoff errors likely


        7                     0.163168E-06                 0.894054E-04


 *** WARNING ***
 Diagonal decay of  0.161160E+08 for variable no.   86
 roundoff errors likely


        8                     0.168761E-09                 0.720029E-07
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.500000    
 --------------------------------------------------------------------------


 Results for load increment  10 Load factor =    259.500    
 ===========================================================

 Converged solution at iteration number =    8


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000       -1.34930    
    2      0.00000       -1.35402    
    3     0.924035E-01  -0.692643    
    4     0.793252E-01   -1.01486    
    5     0.939137E-01  -0.343459    
    6    -0.809618E-01  -0.345755    
    7    -0.791431E-01  -0.694985    
    8     0.900752E-01    0.00000    
    9    -0.765153E-01  -0.305079E-02
   10    -0.412815E-01   -1.26058    
   11     0.486155E-01   -1.25666    
   12    -0.676177E-01   -1.01778    
   13      0.00000       -1.36436    
   14     0.659040E-02  -0.347583    
   15     0.585381E-02  -0.382103E-02
   16     0.385737E-02   -1.26892    
   17     0.610485E-02   -1.02324    
   18     0.682526E-02  -0.698256    
   19     0.260683E-01   -1.32673    
   20     0.263259E-01   -1.26539    
   21     0.204978E-02   -1.33909    
   22      0.00000       -1.36003    
   23    -0.188174E-01   -1.26737    
   24    -0.220968E-01   -1.33044    
   25      0.00000       -1.36242    
   26     0.496222E-01  -0.696517    
   27     0.649704E-02  -0.866522    
   28     0.428187E-01   -1.02078    
   29     0.875450E-01  -0.861545    
   30    -0.362382E-01  -0.697673    
   31    -0.748310E-01  -0.862751    
   32    -0.308589E-01   -1.02224    
   33     0.940443E-01  -0.521117    
   34     0.503874E-01  -0.346087    
   35     0.666120E-02  -0.523370    
   36    -0.372549E-01  -0.347251    
   37    -0.809073E-01  -0.521310    
   38     0.919320E-01  -0.172467    
   39     0.477030E-01  -0.230913E-02
   40     0.631186E-02  -0.172891    
   41    -0.353711E-01  -0.365407E-02
   42    -0.795426E-01  -0.171900    
   43     0.512373E-02   -1.16011    
   44    -0.566297E-01   -1.15386    
   45     0.665354E-01   -1.15134    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      337.164          0.00000    
    2      27.4137          0.00000    
    8      0.00000          81524.3    
   13     -583.906          0.00000    
   22      131.991          0.00000    
   25      94.7490          0.00000    
       ---------------  ---------------
 Totals    7.41134          81524.3    


 Gauss point stresses and and other state variables
 ==================================================


 Element number    1

 Gauss point  1       R-Coord=  0.4226     Z-Coord=  0.1057    
 S-rr  =   0.1605E+05 S-zz  =    134.4     S-rz  =   -173.7     S-h   =   0.1621E+05
 S-max =   0.1605E+05 S-min =    132.5     Angle =  -0.6252    
 S-eff =   0.1600E+05 Eps.  =   0.4064E-01 dgama =   0.1640E-01

 Gauss point  2       R-Coord=  0.4226     Z-Coord=  0.3943    
 S-rr  =   0.1578E+05 S-zz  =   -145.0     S-rz  =    51.02     S-h   =   0.1593E+05
 S-max =   0.1578E+05 S-min =   -145.1     Angle =   0.1836    
 S-eff =   0.1600E+05 Eps.  =   0.1224E-01 dgama =   0.6916E-02

 Gauss point  3       R-Coord=   1.577     Z-Coord=  0.1057    
 S-rr  =   0.1548E+05 S-zz  =   -166.4     S-rz  =    212.3     S-h   =   0.1616E+05
 S-max =   0.1548E+05 S-min =   -169.3     Angle =   0.7773    
 S-eff =   0.1600E+05 Eps.  =   0.3580E-01 dgama =   0.1439E-01

 Gauss point  4       R-Coord=   1.577     Z-Coord=  0.3943    
 S-rr  =   0.1558E+05 S-zz  =   -70.59     S-rz  =    358.0     S-h   =   0.1624E+05
 S-max =   0.1558E+05 S-min =   -78.78     Angle =    1.310    
 S-eff =   0.1600E+05 Eps.  =   0.1063E-01 dgama =   0.6091E-02


 Element number    2

 Gauss point  1       R-Coord=  0.4226     Z-Coord=  0.6057    
 S-rr  =  -0.1626E+05 S-zz  =   -373.8     S-rz  =    435.1     S-h   =  -0.1645E+05
 S-max =   -361.9     S-min =  -0.1627E+05 Angle =    88.43    
 S-eff =   0.1600E+05 Eps.  =   0.3866E-02 dgama =   0.1267E-03

 Gauss point  2       R-Coord=  0.4226     Z-Coord=  0.8943    
 S-rr  =  -0.1598E+05 S-zz  =   -69.25     S-rz  =   -93.08     S-h   =  -0.1615E+05
 S-max =   -68.71     S-min =  -0.1599E+05 Angle =   -89.66    
 S-eff =   0.1600E+05 Eps.  =   0.3244E-01 dgama =   0.9778E-02

 Gauss point  3       R-Coord=   1.577     Z-Coord=  0.6057    
 S-rr  =  -0.1556E+05 S-zz  =   0.5293     S-rz  =    91.16     S-h   =  -0.1640E+05
 S-max =    1.063     S-min =  -0.1556E+05 Angle =    89.66    
 S-eff =   0.1600E+05 Eps.  =   0.3170E-02 dgama =   0.9432E-04

 Gauss point  4       R-Coord=   1.577     Z-Coord=  0.8943    
 S-rr  =  -0.1605E+05 S-zz  =   -420.1     S-rz  =    157.2     S-h   =  -0.1676E+05
 S-max =   -418.6     S-min =  -0.1605E+05 Angle =    89.42    
 S-eff =   0.1600E+05 Eps.  =   0.2854E-01 dgama =   0.8529E-02


 Element number    3

 Gauss point  1       R-Coord=   5.577     Z-Coord=  0.1057    
 S-rr  =   0.1125E+05 S-zz  =   -555.0     S-rz  =    701.5     S-h   =   0.1759E+05
 S-max =   0.1129E+05 S-min =   -596.5     Angle =    3.388    
 S-eff =   0.1600E+05 Eps.  =   0.1541E-01 dgama =   0.6209E-02

 Gauss point  2       R-Coord=   4.423     Z-Coord=  0.1057    
 S-rr  =   0.1353E+05 S-zz  =    260.3     S-rz  =   -50.80     S-h   =   0.1803E+05
 S-max =   0.1353E+05 S-min =    260.1     Angle =  -0.2194    
 S-eff =   0.1600E+05 Eps.  =   0.2003E-01 dgama =   0.8010E-02

 Gauss point  3       R-Coord=   5.577     Z-Coord=  0.3943    
 S-rr  =   0.1093E+05 S-zz  =   -474.6     S-rz  =    1421.     S-h   =   0.1757E+05
 S-max =   0.1111E+05 S-min =   -649.0     Angle =    6.996    
 S-eff =   0.1600E+05 Eps.  =   0.3703E-02 dgama =   0.2605E-02

 Gauss point  4       R-Coord=   4.423     Z-Coord=  0.3943    
 S-rr  =   0.1313E+05 S-zz  =    222.5     S-rz  =    826.8     S-h   =   0.1803E+05
 S-max =   0.1318E+05 S-min =    169.7     Angle =    3.650    
 S-eff =   0.1600E+05 Eps.  =   0.5046E-02 dgama =   0.3323E-02


 Element number    4

 Gauss point  1       R-Coord=   5.577     Z-Coord=  0.6057    
 S-rr  =  -0.1010E+05 S-zz  =    164.8     S-rz  =    476.4     S-h   =  -0.1825E+05
 S-max =    186.9     S-min =  -0.1012E+05 Angle =    87.35    
 S-eff =   0.1600E+05 Eps.  =   0.5017E-03 dgama =   0.7261E-04

 Gauss point  2       R-Coord=   4.423     Z-Coord=  0.6057    
 S-rr  =  -0.1391E+05 S-zz  =   -543.8     S-rz  =    1355.     S-h   =  -0.1802E+05
 S-max =   -408.0     S-min =  -0.1405E+05 Angle =    84.27    
 S-eff =   0.1600E+05 Eps.  =   0.1191E-02 dgama =   0.9383E-04

 Gauss point  3       R-Coord=   5.577     Z-Coord=  0.8943    
 S-rr  =  -0.1264E+05 S-zz  =   -785.3     S-rz  =    295.6     S-h   =  -0.1897E+05
 S-max =   -778.0     S-min =  -0.1265E+05 Angle =    88.57    
 S-eff =   0.1600E+05 Eps.  =   0.1218E-01 dgama =   0.3688E-02

 Gauss point  4       R-Coord=   4.423     Z-Coord=  0.8943    
 S-rr  =  -0.1324E+05 S-zz  =    157.0     S-rz  =    164.8     S-h   =  -0.1756E+05
 S-max =    159.0     S-min =  -0.1324E+05 Angle =    89.30    
 S-eff =   0.1600E+05 Eps.  =   0.1619E-01 dgama =   0.4822E-02


 Element number    5

 Gauss point  1       R-Coord=   6.423     Z-Coord=  0.1057    
 S-rr  =   0.1031E+05 S-zz  =    444.1     S-rz  =   -390.5     S-h   =   0.1889E+05
 S-max =   0.1032E+05 S-min =    428.7     Angle =   -2.264    
 S-eff =   0.1600E+05 Eps.  =   0.1214E-01 dgama =   0.4964E-02

 Gauss point  2       R-Coord=   6.423     Z-Coord=  0.3943    
 S-rr  =    9204.     S-zz  =    848.1     S-rz  =    1219.     S-h   =   0.1914E+05
 S-max =    9378.     S-min =    674.0     Angle =    8.132    
 S-eff =   0.1600E+05 Eps.  =   0.2512E-02 dgama =   0.2000E-02

 Gauss point  3       R-Coord=   7.577     Z-Coord=  0.1057    
 S-rr  =    7685.     S-zz  =   -203.9     S-rz  =    1537.     S-h   =   0.1796E+05
 S-max =    7974.     S-min =   -492.7     Angle =    10.64    
 S-eff =   0.1600E+05 Eps.  =   0.9527E-02 dgama =   0.3989E-02

 Gauss point  4       R-Coord=   7.577     Z-Coord=  0.3943    
 S-rr  =    5020.     S-zz  =   -2234.     S-rz  =    1395.     S-h   =   0.1591E+05
 S-max =    5279.     S-min =   -2493.     Angle =    10.52    
 S-eff =   0.1600E+05 Eps.  =   0.1978E-02 dgama =   0.1649E-02


 Element number    6

 Gauss point  1       R-Coord=   6.423     Z-Coord=  0.6057    
 S-rr  =   -9794.     S-zz  =   -297.0     S-rz  =    2223.     S-h   =  -0.1822E+05
 S-max =    197.4     S-min =  -0.1029E+05 Angle =    77.46    
 S-eff =   0.1600E+05 Eps.  =   0.2781E-03 dgama =   0.8546E-04

 Gauss point  2       R-Coord=   6.423     Z-Coord=  0.8943    
 S-rr  =  -0.1022E+05 S-zz  =    199.0     S-rz  =    282.5     S-h   =  -0.1821E+05
 S-max =    206.7     S-min =  -0.1022E+05 Angle =    88.45    
 S-eff =   0.1600E+05 Eps.  =   0.9879E-02 dgama =   0.3049E-02

 Gauss point  3       R-Coord=   7.577     Z-Coord=  0.6057    
 S-rr  =   -4514.     S-zz  =   -520.3     S-rz  =    555.3     S-h   =  -0.1702E+05
 S-max =   -444.5     S-min =   -4590.     Angle =    82.23    
 S-eff =   0.1494E+05 Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   7.577     Z-Coord=  0.8943    
 S-rr  =   -8647.     S-zz  =   -458.3     S-rz  =    445.1     S-h   =  -0.1887E+05
 S-max =   -434.2     S-min =   -8671.     Angle =    86.90    
 S-eff =   0.1600E+05 Eps.  =   0.7381E-02 dgama =   0.2385E-02


 Element number    7

 Gauss point  1       R-Coord=   8.423     Z-Coord=  0.1057    
 S-rr  =    5433.     S-zz  =    744.5     S-rz  =   -653.3     S-h   =   0.1852E+05
 S-max =    5522.     S-min =    655.1     Angle =   -7.787    
 S-eff =   0.1600E+05 Eps.  =   0.7475E-02 dgama =   0.3241E-02

 Gauss point  2       R-Coord=   8.423     Z-Coord=  0.3943    
 S-rr  =    3132.     S-zz  =    2397.     S-rz  =    1884.     S-h   =   0.1842E+05
 S-max =    4684.     S-min =    845.0     Angle =    39.48    
 S-eff =   0.1600E+05 Eps.  =   0.1266E-02 dgama =   0.1266E-02

 Gauss point  3       R-Coord=   9.577     Z-Coord=  0.1057    
 S-rr  =    2818.     S-zz  =   -1904.     S-rz  =    971.3     S-h   =   0.1583E+05
 S-max =    3010.     S-min =   -2096.     Angle =    11.18    
 S-eff =   0.1600E+05 Eps.  =   0.6287E-02 dgama =   0.2756E-02

 Gauss point  4       R-Coord=   9.577     Z-Coord=  0.3943    
 S-rr  =   -1306.     S-zz  =   -1941.     S-rz  =    1801.     S-h   =   0.1406E+05
 S-max =    205.1     S-min =   -3452.     Angle =    40.00    
 S-eff =   0.1600E+05 Eps.  =   0.1028E-02 dgama =   0.1028E-02


 Element number    8

 Gauss point  1       R-Coord=   8.423     Z-Coord=  0.6057    
 S-rr  =   -2675.     S-zz  =    461.0     S-rz  =    2681.     S-h   =  -0.1471E+05
 S-max =    1998.     S-min =   -4213.     Angle =    60.16    
 S-eff =   0.1463E+05 Eps.  =    0.000     dgama =    0.000    

 Gauss point  2       R-Coord=   8.423     Z-Coord=  0.8943    
 S-rr  =   -6205.     S-zz  =   -136.3     S-rz  =    459.9     S-h   =  -0.1826E+05
 S-max =   -101.7     S-min =   -6240.     Angle =    85.69    
 S-eff =   0.1600E+05 Eps.  =   0.6051E-02 dgama =   0.2008E-02

 Gauss point  3       R-Coord=   9.577     Z-Coord=  0.6057    
 S-rr  =   -188.1     S-zz  =   -918.6     S-rz  =    1551.     S-h   =  -0.1251E+05
 S-max =    1040.     S-min =   -2147.     Angle =    38.38    
 S-eff =   0.1227E+05 Eps.  =    0.000     dgama =    0.000    

 Gauss point  4       R-Coord=   9.577     Z-Coord=  0.8943    
 S-rr  =   -1325.     S-zz  =   -324.0     S-rz  =    647.3     S-h   =  -0.1676E+05
 S-max =   -6.217     S-min =   -1643.     Angle =    63.86    
 S-eff =   0.1600E+05 Eps.  =   0.4672E-02 dgama =   0.1608E-02


 Element number    9

 Gauss point  1       R-Coord=   2.423     Z-Coord=  0.8943    
 S-rr  =  -0.1526E+05 S-zz  =   -25.49     S-rz  =    55.83     S-h   =  -0.1669E+05
 S-max =   -25.28     S-min =  -0.1526E+05 Angle =    89.79    
 S-eff =   0.1600E+05 Eps.  =   0.2510E-01 dgama =   0.7480E-02

 Gauss point  2       R-Coord=   3.577     Z-Coord=  0.8943    
 S-rr  =  -0.1482E+05 S-zz  =   -584.3     S-rz  =    232.7     S-h   =  -0.1789E+05
 S-max =   -580.5     S-min =  -0.1483E+05 Angle =    89.06    
 S-eff =   0.1600E+05 Eps.  =   0.1965E-01 dgama =   0.5826E-02

 Gauss point  3       R-Coord=   2.423     Z-Coord=  0.6057    
 S-rr  =  -0.1573E+05 S-zz  =   -427.3     S-rz  =    771.5     S-h   =  -0.1694E+05
 S-max =   -388.5     S-min =  -0.1577E+05 Angle =    87.12    
 S-eff =   0.1600E+05 Eps.  =   0.2651E-02 dgama =   0.1091E-03

 Gauss point  4       R-Coord=   3.577     Z-Coord=  0.6057    
 S-rr  =  -0.1375E+05 S-zz  =    131.1     S-rz  =    399.5     S-h   =  -0.1735E+05
 S-max =    142.5     S-min =  -0.1376E+05 Angle =    88.35    
 S-eff =   0.1600E+05 Eps.  =   0.1667E-02 dgama =   0.6971E-04


 Element number   10

 Gauss point  1       R-Coord=   2.423     Z-Coord=  0.3943    
 S-rr  =   0.1515E+05 S-zz  =   -1.968     S-rz  =    471.9     S-h   =   0.1669E+05
 S-max =   0.1517E+05 S-min =   -16.65     Angle =    1.782    
 S-eff =   0.1600E+05 Eps.  =   0.8941E-02 dgama =   0.5267E-02

 Gauss point  2       R-Coord=   3.577     Z-Coord=  0.3943    
 S-rr  =   0.1389E+05 S-zz  =   -352.2     S-rz  =    794.4     S-h   =   0.1687E+05
 S-max =   0.1393E+05 S-min =   -396.4     Angle =    3.184    
 S-eff =   0.1600E+05 Eps.  =   0.6827E-02 dgama =   0.4173E-02

 Gauss point  3       R-Coord=   2.423     Z-Coord=  0.1057    
 S-rr  =   0.1535E+05 S-zz  =    135.5     S-rz  =   -41.92     S-h   =   0.1682E+05
 S-max =   0.1535E+05 S-min =    135.4     Angle =  -0.1579    
 S-eff =   0.1600E+05 Eps.  =   0.3128E-01 dgama =   0.1253E-01

 Gauss point  4       R-Coord=   3.577     Z-Coord=  0.1057    
 S-rr  =   0.1414E+05 S-zz  =   -138.3     S-rz  =    430.1     S-h   =   0.1713E+05
 S-max =   0.1415E+05 S-min =   -151.3     Angle =    1.724    
 S-eff =   0.1600E+05 Eps.  =   0.2470E-01 dgama =   0.9856E-02


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    R-Coord=   0.000     Z-Coord=   0.000    
 S-rr  =   0.1641E+05 S-zz  =    396.9     S-rz  =   -407.8     S-h   =   0.1638E+05
 S-max =   0.1642E+05 S-min =    386.6     Angle =   -1.458    
 S-eff =   0.1601E+05 Eps.  =   0.5325E-01 dgama =   0.2076E-01

 Node number     2    R-Coord=   0.000     Z-Coord=   1.000    
 S-rr  =  -0.1576E+05 S-zz  =    267.8     S-rz  =   -457.6     S-h   =  -0.1573E+05
 S-max =    280.9     S-min =  -0.1577E+05 Angle =   -88.37    
 S-eff =   0.1603E+05 Eps.  =   0.4476E-01 dgama =   0.1393E-01

 Node number     3    R-Coord=   6.000     Z-Coord=   0.000    
 S-rr  =   0.1100E+05 S-zz  =   -345.6     S-rz  =   -592.5     S-h   =   0.1814E+05
 S-max =   0.1103E+05 S-min =   -376.5     Angle =   -2.982    
 S-eff =   0.1618E+05 Eps.  =   0.1723E-01 dgama =   0.6606E-02

 Node number     4    R-Coord=   4.000     Z-Coord=   0.000    
 S-rr  =   0.1415E+05 S-zz  =    219.1     S-rz  =   -89.48     S-h   =   0.1777E+05
 S-max =   0.1415E+05 S-min =    218.5     Angle =  -0.3680    
 S-eff =   0.1605E+05 Eps.  =   0.2794E-01 dgama =   0.1064E-01

 Node number     5    R-Coord=   8.000     Z-Coord=   0.000    
 S-rr  =    7449.     S-zz  =    755.3     S-rz  =    61.59     S-h   =   0.1900E+05
 S-max =    7449.     S-min =    754.7     Angle =   0.5272    
 S-eff =   0.1599E+05 Eps.  =   0.1068E-01 dgama =   0.4290E-02

 Node number     6    R-Coord=   8.000     Z-Coord=   1.000    
 S-rr  =   -9843.     S-zz  =   -590.2     S-rz  =    55.77     S-h   =  -0.2003E+05
 S-max =   -589.8     S-min =   -9843.     Angle =    89.65    
 S-eff =   0.1684E+05 Eps.  =   0.8913E-02 dgama =   0.2941E-02

 Node number     7    R-Coord=   6.000     Z-Coord=   1.000    
 S-rr  =  -0.1212E+05 S-zz  =   -510.0     S-rz  =   -159.9     S-h   =  -0.1882E+05
 S-max =   -507.8     S-min =  -0.1212E+05 Angle =   -89.21    
 S-eff =   0.1605E+05 Eps.  =   0.1457E-01 dgama =   0.4451E-02

 Node number     8    R-Coord=   10.00     Z-Coord=   0.000    
 S-rr  =    3615.     S-zz  =   -2634.     S-rz  =    1491.     S-h   =   0.1572E+05
 S-max =    3953.     S-min =   -2971.     Angle =    12.76    
 S-eff =   0.1637E+05 Eps.  =   0.7649E-02 dgama =   0.3178E-02

 Node number     9    R-Coord=   10.00     Z-Coord=   1.000    
 S-rr  =    365.6     S-zz  =   -15.26     S-rz  =    561.4     S-h   =  -0.1786E+05
 S-max =    768.0     S-min =   -417.6     Angle =    35.63    
 S-eff =   0.1807E+05 Eps.  =   0.5693E-02 dgama =   0.1996E-02

 Node number    10    R-Coord=   2.000     Z-Coord=   1.000    
 S-rr  =  -0.1570E+05 S-zz  =   -162.0     S-rz  =    4.066     S-h   =  -0.1663E+05
 S-max =   -162.0     S-min =  -0.1570E+05 Angle =    89.99    
 S-eff =   0.1602E+05 Eps.  =   0.3594E-01 dgama =   0.1100E-01

 Node number    11    R-Coord=   2.000     Z-Coord=   0.000    
 S-rr  =   0.1552E+05 S-zz  =   -42.96     S-rz  =   -56.02     S-h   =   0.1640E+05
 S-max =   0.1552E+05 S-min =   -43.16     Angle =  -0.2062    
 S-eff =   0.1602E+05 Eps.  =   0.4264E-01 dgama =   0.1646E-01

 Node number    12    R-Coord=   4.000     Z-Coord=   1.000    
 S-rr  =  -0.1402E+05 S-zz  =   -110.4     S-rz  =   -71.91     S-h   =  -0.1767E+05
 S-max =   -110.0     S-min =  -0.1402E+05 Angle =   -89.70    
 S-eff =   0.1605E+05 Eps.  =   0.2362E-01 dgama =   0.7113E-02

 Node number    13    R-Coord=   0.000     Z-Coord=  0.5000    
 S-rr  =   -507.6     S-zz  =   -522.1     S-rz  =    432.7     S-h   =   -500.0    
 S-max =   -82.06     S-min =   -947.6     Angle =    44.52    
 S-eff =    749.7     Eps.  =  -0.2386E-02 dgama =   0.1581E-04

 Node number    14    R-Coord=   8.000     Z-Coord=  0.5000    
 S-rr  =    979.7     S-zz  =    290.9     S-rz  =    2017.     S-h   =    971.6    
 S-max =    2682.     S-min =   -1411.     Angle =    40.16    
 S-eff =    3561.     Eps.  =  -0.1664E-02 dgama =  -0.6764E-04

 Node number    15    R-Coord=   10.00     Z-Coord=  0.5000    
 S-rr  =   -1933.     S-zz  =   -2785.     S-rz  =    1569.     S-h   =    771.0    
 S-max =   -733.5     S-min =   -3984.     Angle =    37.41    
 S-eff =    4210.     Eps.  =  -0.1191E-02 dgama =  -0.9640E-04

 Node number    16    R-Coord=   2.000     Z-Coord=  0.5000    
 S-rr  =   -181.2     S-zz  =   -102.9     S-rz  =    545.0     S-h   =   -33.13    
 S-max =    404.3     S-min =   -688.4     Angle =    47.05    
 S-eff =    952.6     Eps.  =  -0.2388E-02 dgama =   0.1836E-04

 Node number    17    R-Coord=   4.000     Z-Coord=  0.5000    
 S-rr  =   -326.5     S-zz  =   -163.7     S-rz  =    1119.     S-h   =   -106.0    
 S-max =    876.6     S-min =   -1367.     Angle =    47.08    
 S-eff =    1948.     Eps.  =  -0.2362E-02 dgama =   0.4090E-05

 Node number    18    R-Coord=   6.000     Z-Coord=  0.5000    
 S-rr  =    287.7     S-zz  =    575.9     S-rz  =    1933.     S-h   =    326.3    
 S-max =    2370.     S-min =   -1507.     Angle =    47.13    
 S-eff =    3359.     Eps.  =  -0.2185E-02 dgama =  -0.7025E-05

 Node number    19    R-Coord=   1.000     Z-Coord=   0.000    
 S-rr  =   0.1580E+05 S-zz  =    17.59     S-rz  =   -48.52     S-h   =   0.1622E+05
 S-max =   0.1580E+05 S-min =    17.44     Angle =  -0.1762    
 S-eff =   0.1600E+05 Eps.  =   0.4803E-01 dgama =   0.1865E-01

 Node number    20    R-Coord=   2.000     Z-Coord=  0.2500    
 S-rr  =   0.1554E+05 S-zz  =    10.54     S-rz  =    240.8     S-h   =   0.1646E+05
 S-max =   0.1555E+05 S-min =    6.804     Angle =   0.8879    
 S-eff =   0.1601E+05 Eps.  =   0.2187E-01 dgama =   0.9656E-02

 Node number    21    R-Coord=   1.000     Z-Coord=  0.5000    
 S-rr  =   -112.6     S-zz  =   -153.4     S-rz  =    310.0     S-h   =   -184.8    
 S-max =    177.7     S-min =   -443.7     Angle =    43.12    
 S-eff =    540.6     Eps.  =  -0.2364E-02 dgama =   0.2512E-04

 Node number    22    R-Coord=   0.000     Z-Coord=  0.2500    
 S-rr  =   0.1605E+05 S-zz  =    36.13     S-rz  =   -188.2     S-h   =   0.1603E+05
 S-max =   0.1606E+05 S-min =    33.92     Angle =  -0.6729    
 S-eff =   0.1601E+05 Eps.  =   0.2762E-01 dgama =   0.1218E-01

 Node number    23    R-Coord=   2.000     Z-Coord=  0.7500    
 S-rr  =  -0.1582E+05 S-zz  =   -215.9     S-rz  =    278.2     S-h   =  -0.1660E+05
 S-max =   -211.0     S-min =  -0.1582E+05 Angle =    88.98    
 S-eff =   0.1602E+05 Eps.  =   0.1503E-01 dgama =   0.4091E-02

 Node number    24    R-Coord=   1.000     Z-Coord=   1.000    
 S-rr  =  -0.1606E+05 S-zz  =   -265.9     S-rz  =   -52.55     S-h   =  -0.1647E+05
 S-max =   -265.8     S-min =  -0.1606E+05 Angle =   -89.81    
 S-eff =   0.1600E+05 Eps.  =   0.4036E-01 dgama =   0.1246E-01

 Node number    25    R-Coord=   0.000     Z-Coord=  0.7500    
 S-rr  =  -0.1624E+05 S-zz  =   -225.8     S-rz  =    188.2     S-h   =  -0.1620E+05
 S-max =   -223.6     S-min =  -0.1624E+05 Angle =    89.33    
 S-eff =   0.1600E+05 Eps.  =   0.1900E-01 dgama =   0.5187E-02

 Node number    26    R-Coord=   6.000     Z-Coord=  0.2500    
 S-rr  =   0.1064E+05 S-zz  =    268.6     S-rz  =    668.4     S-h   =   0.1860E+05
 S-max =   0.1068E+05 S-min =    225.7     Angle =    3.673    
 S-eff =   0.1596E+05 Eps.  =   0.8184E-02 dgama =   0.3835E-02

 Node number    27    R-Coord=   5.000     Z-Coord=  0.5000    
 S-rr  =    118.3     S-zz  =   -131.1     S-rz  =    1291.     S-h   =   -142.1    
 S-max =    1291.     S-min =   -1304.     Angle =    42.24    
 S-eff =    2251.     Eps.  =  -0.2274E-02 dgama =   0.1498E-05

 Node number    28    R-Coord=   4.000     Z-Coord=  0.2500    
 S-rr  =   0.1385E+05 S-zz  =    79.34     S-rz  =    449.6     S-h   =   0.1764E+05
 S-max =   0.1387E+05 S-min =    64.68     Angle =    1.868    
 S-eff =   0.1603E+05 Eps.  =   0.1390E-01 dgama =   0.6226E-02

 Node number    29    R-Coord=   5.000     Z-Coord=   0.000    
 S-rr  =   0.1252E+05 S-zz  =   -155.2     S-rz  =    33.07     S-h   =   0.1781E+05
 S-max =   0.1252E+05 S-min =   -155.2     Angle =   0.1495    
 S-eff =   0.1599E+05 Eps.  =   0.2261E-01 dgama =   0.8627E-02

 Node number    30    R-Coord=   6.000     Z-Coord=  0.7500    
 S-rr  =  -0.1091E+05 S-zz  =   -120.4     S-rz  =    888.6     S-h   =  -0.1861E+05
 S-max =   -47.76     S-min =  -0.1098E+05 Angle =    85.32    
 S-eff =   0.1616E+05 Eps.  =   0.5534E-02 dgama =   0.1687E-02

 Node number    31    R-Coord=   5.000     Z-Coord=   1.000    
 S-rr  =  -0.1328E+05 S-zz  =   -359.8     S-rz  =   -20.60     S-h   =  -0.1831E+05
 S-max =   -359.8     S-min =  -0.1328E+05 Angle =   -89.91    
 S-eff =   0.1604E+05 Eps.  =   0.1907E-01 dgama =   0.5782E-02

 Node number    32    R-Coord=   4.000     Z-Coord=  0.7500    
 S-rr  =  -0.1411E+05 S-zz  =   -188.7     S-rz  =    588.4     S-h   =  -0.1770E+05
 S-max =   -163.9     S-min =  -0.1414E+05 Angle =    87.58    
 S-eff =   0.1605E+05 Eps.  =   0.9517E-02 dgama =   0.2653E-02

 Node number    33    R-Coord=   7.000     Z-Coord=   0.000    
 S-rr  =    9687.     S-zz  =    417.6     S-rz  =    304.6     S-h   =   0.1875E+05
 S-max =    9697.     S-min =    407.7     Angle =    1.880    
 S-eff =   0.1589E+05 Eps.  =   0.1398E-01 dgama =   0.5447E-02

 Node number    34    R-Coord=   8.000     Z-Coord=  0.2500    
 S-rr  =    5340.     S-zz  =    474.1     S-rz  =    1092.     S-h   =   0.1797E+05
 S-max =    5574.     S-min =    240.2     Angle =    12.09    
 S-eff =   0.1575E+05 Eps.  =   0.4904E-02 dgama =   0.2481E-02

 Node number    35    R-Coord=   7.000     Z-Coord=  0.5000    
 S-rr  =    51.10     S-zz  =   -750.5     S-rz  =    1670.     S-h   =   -44.46    
 S-max =    1368.     S-min =   -2067.     Angle =    38.25    
 S-eff =    2990.     Eps.  =  -0.1934E-02 dgama =  -0.4126E-04

 Node number    36    R-Coord=   8.000     Z-Coord=  0.7500    
 S-rr  =   -5558.     S-zz  =   -100.6     S-rz  =    983.7     S-h   =  -0.1751E+05
 S-max =    71.29     S-min =   -5730.     Angle =    80.09    
 S-eff =   0.1551E+05 Eps.  =   0.3230E-02 dgama =   0.1066E-02

 Node number    37    R-Coord=   7.000     Z-Coord=   1.000    
 S-rr  =  -0.1027E+05 S-zz  =   -27.50     S-rz  =   -11.42     S-h   =  -0.1888E+05
 S-max =   -27.49     S-min =  -0.1027E+05 Angle =   -89.94    
 S-eff =   0.1635E+05 Eps.  =   0.1174E-01 dgama =   0.3696E-02

 Node number    38    R-Coord=   9.000     Z-Coord=   0.000    
 S-rr  =    5301.     S-zz  =   -875.6     S-rz  =   -457.2     S-h   =   0.1752E+05
 S-max =    5335.     S-min =   -909.2     Angle =   -4.210    
 S-eff =   0.1624E+05 Eps.  =   0.8979E-02 dgama =   0.3677E-02

 Node number    39    R-Coord=   10.00     Z-Coord=  0.2500    
 S-rr  =   -534.4     S-zz  =   -3201.     S-rz  =    1668.     S-h   =   0.1366E+05
 S-max =    267.7     S-min =   -4003.     Angle =    25.68    
 S-eff =   0.1596E+05 Eps.  =   0.3397E-02 dgama =   0.1760E-02

 Node number    40    R-Coord=   9.000     Z-Coord=  0.5000    
 S-rr  =   -420.1     S-zz  =    147.8     S-rz  =    2573.     S-h   =    1855.    
 S-max =    2453.     S-min =   -2725.     Angle =    48.15    
 S-eff =    4906.     Eps.  =  -0.1457E-02 dgama =  -0.9620E-04

 Node number    41    R-Coord=   10.00     Z-Coord=  0.7500    
 S-rr  =    591.7     S-zz  =   -908.1     S-rz  =    927.0     S-h   =  -0.1396E+05
 S-max =    1034.     S-min =   -1351.     Angle =    25.51    
 S-eff =   0.1395E+05 Eps.  =   0.2084E-02 dgama =   0.7308E-03

 Node number    42    R-Coord=   9.000     Z-Coord=   1.000    
 S-rr  =   -4619.     S-zz  =   -230.6     S-rz  =   -18.23     S-h   =  -0.1894E+05
 S-max =   -230.6     S-min =   -4619.     Angle =   -89.76    
 S-eff =   0.1695E+05 Eps.  =   0.7324E-02 dgama =   0.2470E-02

 Node number    43    R-Coord=   3.000     Z-Coord=  0.5000    
 S-rr  =   -97.35     S-zz  =   -166.1     S-rz  =    770.4     S-h   =   -189.8    
 S-max =    639.5     S-min =   -902.9     Angle =    43.72    
 S-eff =    1337.     Eps.  =  -0.2358E-02 dgama =   0.1834E-04

 Node number    44    R-Coord=   3.000     Z-Coord=   1.000    
 S-rr  =  -0.1515E+05 S-zz  =   -362.3     S-rz  =   -17.26     S-h   =  -0.1734E+05
 S-max =   -362.3     S-min =  -0.1515E+05 Angle =   -89.93    
 S-eff =   0.1600E+05 Eps.  =   0.2978E-01 dgama =   0.9056E-02

 Node number    45    R-Coord=   3.000     Z-Coord=   0.000    
 S-rr  =   0.1483E+05 S-zz  =    62.89     S-rz  =    33.38     S-h   =   0.1704E+05
 S-max =   0.1483E+05 S-min =    62.81     Angle =   0.1296    
 S-eff =   0.1599E+05 Eps.  =   0.3535E-01 dgama =   0.1357E-01




 INCREMENT NUMBER   11
 =====================


 Total load factor ............... =     259.750    
 Incremental load factor ......... =    0.250000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0


 *** WARNING ***
 Diagonal decay of  0.125627E+08 for variable no.   86
 roundoff errors likely






 INCREMENT NUMBER   11                   TOTAL LOAD FACTOR =    259.750    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      92.3995                      64722.4    


 *** WARNING ***
 Diagonal decay of  0.355989E+08 for variable no.   86
 roundoff errors likely


        2                      43.4311                      25047.7    


 *** WARNING ***
 Diagonal decay of  0.815056E+08 for variable no.   86
 roundoff errors likely


        3                      21.8809                      10148.5    


 *** WARNING ***
 Diagonal decay of  0.185356E+09 for variable no.   86
 roundoff errors likely


        4                      9.51755                      4012.27    


 *** WARNING ***
 Diagonal decay of  0.379042E+09 for variable no.   86
 roundoff errors likely


        5                      3.01632                      1207.37    


 *** WARNING ***
 Diagonal decay of  0.631341E+09 for variable no.   86
 roundoff errors likely


        6                     0.442083                      171.621    


 *** WARNING ***
 Diagonal decay of  0.794680E+09 for variable no.   86
 roundoff errors likely


        7                     0.106763E-01                  4.09122    


 *** WARNING ***
 Diagonal decay of  0.825815E+09 for variable no.   86
 roundoff errors likely


        8                     0.612415E-05                 0.233838E-02


 *** WARNING ***
 Diagonal decay of  0.826589E+09 for variable no.   86
 roundoff errors likely


        9                     0.231192E-08                 0.969099E-06
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.250000    
 --------------------------------------------------------------------------


 Results for load increment  11 Load factor =    259.750    
 ===========================================================

 Converged solution at iteration number =    9


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000       -7.06574    
    2      0.00000       -7.12418    
    3     0.532375       -3.55383    
    4     0.465845       -5.25912    
    5     0.530238       -1.74557    
    6    -0.367229       -1.76179    
    7    -0.367116       -3.57618    
    8     0.501028        0.00000    
    9    -0.341576      -0.166739E-01
   10    -0.200271       -6.60936    
   11     0.290557       -6.56194    
   12    -0.321512       -5.29179    
   13      0.00000       -7.16991    
   14     0.832809E-01   -1.77008    
   15     0.761334E-01  -0.206291E-01
   16     0.469752E-01   -6.64579    
   17     0.745930E-01   -5.31552    
   18     0.843153E-01   -3.59031    
   19     0.156966       -6.94794    
   20     0.169167       -6.61787    
   21     0.253636E-01   -7.03155    
   22      0.00000       -7.13549    
   23    -0.773360E-01   -6.64176    
   24    -0.108211       -6.99321    
   25      0.00000       -7.16501    
   26     0.308161       -3.57736    
   27     0.810317E-01   -4.47970    
   28     0.270828       -5.29631    
   29     0.509569       -4.44557    
   30    -0.141950       -3.58845    
   31    -0.351894       -4.46325    
   32    -0.124093       -5.31273    
   33     0.536783       -2.66208    
   34     0.307475       -1.76052    
   35     0.842886E-01   -2.67886    
   36    -0.142484       -1.76883    
   37    -0.370769       -2.66987    
   38     0.514812      -0.872651    
   39     0.286953      -0.123487E-01
   40     0.801930E-01  -0.878069    
   41    -0.132915      -0.197820E-01
   42    -0.357257      -0.873856    
   43     0.633516E-01   -6.05429    
   44    -0.272343       -6.02686    
   45     0.394661       -5.99523    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      511.018          0.00000    
    2      277.257          0.00000    
    8      0.00000          81602.9    
   13     -1021.37          0.00000    
   22      212.321          0.00000    
   25      26.1482          0.00000    
       ---------------  ---------------
 Totals    5.37784          81602.9    




 INCREMENT NUMBER   12
 =====================


 Total load factor ............... =     259.770    
 Incremental load factor ......... =    0.200000E-01
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    11

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   0
 Output to re-start file............ =   0


 *** WARNING ***
 Diagonal decay of  0.355703E+09 for variable no.   86
 roundoff errors likely






 INCREMENT NUMBER   12                   TOTAL LOAD FACTOR =    259.770    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      25.5488                      14143.3    


 *** WARNING ***
 Diagonal decay of  0.538582E+09 for variable no.   86
 roundoff errors likely


        2                      6.38009                      2245.57    


 *** WARNING ***
 Diagonal decay of  0.111105E+10 for variable no.   86
 roundoff errors likely


        3                      2.77169                      856.763    


 *** WARNING ***
 Diagonal decay of  0.203694E+10 for variable no.   86
 roundoff errors likely


        4                     0.782134                      256.977    


 *** WARNING ***
 Diagonal decay of  0.311727E+10 for variable no.   86
 roundoff errors likely


        5                     0.940188E-01                  31.8665    


 *** WARNING ***
 Diagonal decay of  0.369795E+10 for variable no.   86
 roundoff errors likely


        6                     0.142869E-02                 0.489314    


 *** WARNING ***
 Diagonal decay of  0.378152E+10 for variable no.   86
 roundoff errors likely


        7                     0.320750E-06                 0.110149E-03


 *** WARNING ***
 Diagonal decay of  0.378285E+10 for variable no.   86
 roundoff errors likely


        8                     0.195629E-08                 0.740692E-06
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.200000E-01
 --------------------------------------------------------------------------


 Results for load increment  12 Load factor =    259.770    
 ===========================================================

 Converged solution at iteration number =    8


 Displacement of structure from initial configuration
 ====================================================

 Node       R-Disp         Z-Disp
    1      0.00000       -11.5320    
    2      0.00000       -11.6330    
    3     0.876239       -5.78826    
    4     0.767915       -8.57452    
    5     0.871054       -2.84026    
    6    -0.590591       -2.86715    
    7    -0.592092       -5.82653    
    8     0.822047        0.00000    
    9    -0.548362      -0.266611E-01
   10    -0.324570       -10.7887    
   11     0.479735       -10.7067    
   12    -0.520004       -8.63094    
   13      0.00000       -11.7064    
   14     0.143349       -2.88048    
   15     0.131442      -0.331931E-01
   16     0.806661E-01   -10.8470    
   17     0.128102       -8.66892    
   18     0.144882       -5.84912    
   19     0.259370       -11.3406    
   20     0.280823       -10.7998    
   21     0.435987E-01   -11.4796    
   22      0.00000       -11.6482    
   23    -0.123101       -10.8411    
   24    -0.175580       -11.4180    
   25      0.00000       -11.6992    
   26     0.510204       -5.82729    
   27     0.139333       -7.30221    
   28     0.449024       -8.63638    
   29     0.839533       -7.24546    
   30    -0.224532       -5.84627    
   31    -0.568481       -7.27587    
   32    -0.196992       -8.66474    
   33     0.883047       -4.33389    
   34     0.508389       -2.86470    
   35     0.145130       -4.36204    
   36    -0.224480       -2.87849    
   37    -0.597157       -4.34771    
   38     0.845407       -1.41869    
   39     0.474070      -0.198742E-01
   40     0.138222       -1.42831    
   41    -0.208753      -0.317830E-01
   42    -0.573824       -1.42165    
   43     0.108869       -9.87822    
   44    -0.440981       -9.83422    
   45     0.651196       -9.78011    


 Reactions
 =========

 Node      R-Force          Z-Force
    1      561.856          0.00000    
    2      355.612          0.00000    
    8      0.00000          81609.2    
   13     -1112.72          0.00000    
   22      220.995          0.00000    
   25     -18.3077          0.00000    
       ---------------  ---------------
 Totals    7.43004          81609.2    
