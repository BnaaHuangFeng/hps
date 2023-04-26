

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

 15_1_6_dnotched.dat


 Title:
 ======

 Section 15.1.6 - Stretching of a double notched specimen                


 Analysis description:
 =====================

 Analysis type ....................................... =    2
        1 = Plane stress
        2 = Plane strain
        3 = Axisymmetric

 Large deformation flag .............................. =   ON

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
 QUAD_4_FBAR (F-Bar 4-noded quadrilateral)
 Integration rule:  4 gauss points


 Material properties:        Number of materials =     1
 ====================

 Material type number  1
 --------------------
 Elasto-plastic with VON MISES yield criterion

 Mass density ...................................... =    0.00000    
 Young's modulus ................................... =    206.900    
 Poisson's ratio ................................... =   0.290000    

 Number of points on hardening curve ............... =  2

           Epstn        uniaxial yield stress 

         0.00000            0.450000    
         100.000            0.450000    


 Element connectivities:      Number of elements =    75
 =======================

 Elem.  Group             Node numbers

   1       1             85   86   92   91
   2       1             78   80   86   85
   3       1             72   73   80   78
   4       1             66   67   73   72
   5       1             60   61   67   66
   6       1             54   55   61   60
   7       1             47   48   55   54
   8       1             40   41   48   47
   9       1             34   35   41   40
  10       1             23   28   35   34
  11       1             16   18   28   23
  12       1             11   13   18   16
  13       1              5    8   13   11
  14       1              3    4    8    5
  15       1              1    2    4    3
  16       1             86   87   93   92
  17       1             80   81   87   86
  18       1             73   75   81   80
  19       1             67   69   75   73
  20       1             61   62   69   67
  21       1             55   56   62   61
  22       1             48   50   56   55
  23       1             41   44   50   48
  24       1             35   36   44   41
  25       1             28   30   36   35
  26       1             18   22   30   28
  27       1             13   15   22   18
  28       1              8    9   15   13
  29       1              4    7    9    8
  30       1              2    6    7    4
  31       1             87   88   94   93
  32       1             81   82   88   87
  33       1             75   76   82   81
  34       1             69   70   76   75
  35       1             62   64   70   69
  36       1             56   58   64   62
  37       1             50   51   58   56
  38       1             44   45   51   50
  39       1             36   39   45   44
  40       1             30   33   39   36
  41       1             22   26   33   30
  42       1             15   20   26   22
  43       1              9   14   20   15
  44       1              7   12   14    9
  45       1              6   10   12    7
  46       1             88   89   95   94
  47       1             82   83   89   88
  48       1             76   77   83   82
  49       1             70   71   77   76
  50       1             64   65   71   70
  51       1             58   59   65   64
  52       1             51   53   59   58
  53       1             45   49   53   51
  54       1             39   43   49   45
  55       1             33   38   43   39
  56       1             26   31   38   33
  57       1             20   25   31   26
  58       1             14   21   25   20
  59       1             12   19   21   14
  60       1             10   17   19   12
  61       1             89   90   96   95
  62       1             83   84   90   89
  63       1             77   79   84   83
  64       1             71   74   79   77
  65       1             65   68   74   71
  66       1             59   63   68   65
  67       1             53   57   63   59
  68       1             49   52   57   53
  69       1             43   46   52   49
  70       1             38   42   46   43
  71       1             31   37   42   38
  72       1             25   32   37   31
  73       1             21   29   32   25
  74       1             19   27   29   21
  75       1             17   24   27   19


 Nodal point co-ordinates:       Number of nodes =    96
 =========================

 Node    X-Coord        Y-Coord

    1    0.00000        0.00000    
    2    1.00000        0.00000    
    3    0.00000        1.00000    
    4    1.00000        1.00000    
    5    0.00000        2.00000    
    6    2.00000        0.00000    
    7    2.00000        1.00000    
    8    1.00000        2.00000    
    9    2.00000        2.00000    
   10    3.00000        0.00000    
   11    0.00000        3.00000    
   12    3.00000        1.00000    
   13    1.00000        3.00000    
   14    3.00000        2.00000    
   15    2.00000        3.00000    
   16    0.00000        4.00000    
   17    4.00000        0.00000    
   18    1.00000        4.00000    
   19    4.00000        1.00000    
   20    3.00000        3.00000    
   21    4.00000        2.00000    
   22    2.00000        4.00000    
   23    0.00000        5.00000    
   24    5.00000        0.00000    
   25    4.00000        3.00000    
   26    3.00000        4.00000    
   27    5.00000        1.00000    
   28    1.00000        5.00000    
   29    5.00000        2.00000    
   30    2.00000        5.00000    
   31    4.00000        4.00000    
   32    5.00000        3.00000    
   33    3.00000        5.00000    
   34    0.00000        6.00000    
   35    1.00000        6.00000    
   36    2.00000        6.00000    
   37    5.00000        4.00000    
   38    4.00000        5.00000    
   39    3.00000        6.00000    
   40    0.00000        7.00000    
   41    1.00000        7.00000    
   42    5.00000        5.00000    
   43    4.00000        6.00000    
   44    2.00000        7.00000    
   45    3.00000        7.00000    
   46    5.00000        6.00000    
   47    0.00000        8.00000    
   48    1.00000        8.00000    
   49    4.00000        7.00000    
   50    2.00000        8.00000    
   51    3.00000        8.00000    
   52    5.00000        7.00000    
   53    4.00000        8.00000    
   54    0.00000        9.00000    
   55    1.00000        9.00000    
   56    2.00000        9.00000    
   57    5.00000        8.00000    
   58    3.00000        9.00000    
   59    4.00000        9.00000    
   60    0.00000        10.0000    
   61    1.00000        10.0000    
   62    2.00000        10.0000    
   63    5.00000        9.00000    
   64    3.00000        10.0000    
   65    4.00000        10.0000    
   66    0.00000        11.0000    
   67    1.00000        11.0000    
   68    5.00000        10.0000    
   69    2.00000        11.0000    
   70    3.00000        11.0000    
   71    4.00000        11.0000    
   72    0.00000        12.0000    
   73    1.00000        12.0000    
   74    5.00000        11.0000    
   75    2.00000        12.0000    
   76    3.00000        12.0000    
   77    4.00000        12.0000    
   78    0.00000        13.0000    
   79    5.00000        12.0000    
   80    1.00000        13.0000    
   81    2.00000        13.0000    
   82    3.00000        13.0000    
   83    4.00000        13.0000    
   84    5.00000        13.0000    
   85    0.00000        14.0000    
   86    1.00000        14.0000    
   87    2.00000        14.0000    
   88    3.00000        14.0000    
   89    4.00000        14.0000    
   90    5.00000        14.0000    
   91    0.00000        15.0000    
   92    1.00000        15.0000    
   93    2.00000        15.0000    
   94    3.00000        15.0000    
   95    4.00000        15.0000    
   96    5.00000        15.0000    


 Prescribed displacements:    Number of nodes with prescribed displacement =    22
 =========================

 Node   Code             Prescribed values                 Angle

    1     11       0.00000        0.00000        0.00000    
    2      1       0.00000        0.00000        0.00000    
    3     10       0.00000        0.00000        0.00000    
    5     10       0.00000        0.00000        0.00000    
   11     10       0.00000        0.00000        0.00000    
   16     10       0.00000        0.00000        0.00000    
   23     10       0.00000        0.00000        0.00000    
   34     10       0.00000        0.00000        0.00000    
   40     10       0.00000        0.00000        0.00000    
   47     10       0.00000        0.00000        0.00000    
   54     10       0.00000        0.00000        0.00000    
   60     10       0.00000        0.00000        0.00000    
   66     10       0.00000        0.00000        0.00000    
   72     10       0.00000        0.00000        0.00000    
   78     10       0.00000        0.00000        0.00000    
   85     10       0.00000        0.00000        0.00000    
   91     11       0.00000        1.00000        0.00000    
   92      1       0.00000        1.00000        0.00000    
   93      1       0.00000        1.00000        0.00000    
   94      1       0.00000        1.00000        0.00000    
   95      1       0.00000        1.00000        0.00000    
   96      1       0.00000        1.00000        0.00000    



 No Master/Slave nodal constraints specified
 ===========================================



 Maximum frontwidth encountered =   36



 Loading specification (other than prescribed displacements)
 ===========================================================

    If any of the flags below is set to 1,  then
    the corresponding type of loading is applied
    to the structure.

 Point loading flag ...........................=  0
 Gravity loading flag .........................=  0
 Distributed edge loading flag ................=  0



 Increment control with fixed load increments selected
 =====================================================

       Number of proportional load increments =    5





 INCREMENT NUMBER    1
 =====================


 Total load factor ............... =    0.250000E-01
 Incremental load factor ......... =    0.250000E-01
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    10

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   1
 Output to re-start file............ =   0




 INCREMENT NUMBER    1                   TOTAL LOAD FACTOR =   0.250000E-01
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      11.5754                     0.621164E-01
        2                      3.69568                     0.228704E-01
        3                     0.153444                     0.751900E-03
        4                     0.349581E-03                 0.227362E-05
        5                     0.203920E-08                 0.153305E-10
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.250000E-01
 --------------------------------------------------------------------------


 Results for load increment   1 Load factor =   0.250000E-01
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1      0.00000        0.00000    
    2     0.107013E-02    0.00000    
    3      0.00000       0.155846E-02
    4    -0.252937E-02   0.603413E-02
    5      0.00000       0.761684E-02
    6    -0.111960E-03   0.116920E-01
    7    -0.266717E-02   0.103361E-01
    8    -0.236812E-02   0.897698E-02
    9    -0.290396E-02   0.109373E-01
   10    -0.473011E-03   0.126354E-01
   11      0.00000       0.111081E-01
   12    -0.185911E-02   0.130310E-01
   13    -0.142759E-02   0.113141E-01
   14    -0.288724E-02   0.128801E-01
   15    -0.244130E-02   0.121152E-01
   16      0.00000       0.129069E-01
   17    -0.682011E-03   0.141437E-01
   18    -0.100791E-02   0.130500E-01
   19    -0.180933E-02   0.140481E-01
   20    -0.287832E-02   0.133580E-01
   21    -0.267095E-02   0.141870E-01
   22    -0.190951E-02   0.135000E-01
   23      0.00000       0.143995E-01
   24    -0.730687E-03   0.150856E-01
   25    -0.305840E-02   0.143522E-01
   26    -0.257320E-02   0.141860E-01
   27    -0.175793E-02   0.151103E-01
   28    -0.832589E-03   0.144996E-01
   29    -0.264561E-02   0.149293E-01
   30    -0.159104E-02   0.147816E-01
   31    -0.294046E-02   0.148149E-01
   32    -0.308019E-02   0.148807E-01
   33    -0.220419E-02   0.151625E-01
   34      0.00000       0.157218E-01
   35    -0.700823E-03   0.157836E-01
   36    -0.134790E-02   0.159477E-01
   37    -0.313968E-02   0.150151E-01
   38    -0.264423E-02   0.154777E-01
   39    -0.189825E-02   0.161504E-01
   40      0.00000       0.169192E-01
   41    -0.598857E-03   0.169530E-01
   42    -0.293552E-02   0.154744E-01
   43    -0.233070E-02   0.162768E-01
   44    -0.116049E-02   0.170393E-01
   45    -0.165613E-02   0.171313E-01
   46    -0.268444E-02   0.161829E-01
   47      0.00000       0.180285E-01
   48    -0.523758E-03   0.180445E-01
   49    -0.208061E-02   0.171584E-01
   50    -0.102292E-02   0.180816E-01
   51    -0.148126E-02   0.181108E-01
   52    -0.246268E-02   0.170489E-01
   53    -0.189842E-02   0.180925E-01
   54      0.00000       0.190796E-01
   55    -0.471713E-03   0.190848E-01
   56    -0.928808E-03   0.190943E-01
   57    -0.229692E-02   0.179963E-01
   58    -0.136250E-02   0.190917E-01
   59    -0.177502E-02   0.190578E-01
   60      0.00000       0.200944E-01
   61    -0.437971E-03   0.200942E-01
   62    -0.868136E-03   0.200902E-01
   63    -0.218061E-02   0.189830E-01
   64    -0.128653E-02   0.200745E-01
   65    -0.169547E-02   0.200395E-01
   66      0.00000       0.210885E-01
   67    -0.417370E-03   0.210859E-01
   68    -0.210376E-02   0.199857E-01
   69    -0.831288E-03   0.210770E-01
   70    -0.124043E-02   0.210586E-01
   71    -0.164687E-02   0.210291E-01
   72      0.00000       0.220715E-01
   73    -0.405557E-03   0.220686E-01
   74    -0.205538E-02   0.209927E-01
   75    -0.810200E-03   0.220595E-01
   76    -0.121407E-02   0.220436E-01
   77    -0.161873E-02   0.220216E-01
   78      0.00000       0.230494E-01
   79    -0.202655E-02   0.219985E-01
   80    -0.399257E-03   0.230471E-01
   81    -0.798977E-03   0.230402E-01
   82    -0.120001E-02   0.230289E-01
   83    -0.160355E-02   0.230147E-01
   84    -0.201046E-02   0.230013E-01
   85      0.00000       0.240250E-01
   86    -0.396292E-03   0.240238E-01
   87    -0.793701E-03   0.240202E-01
   88    -0.119338E-02   0.240144E-01
   89    -0.159630E-02   0.240075E-01
   90    -0.200255E-02   0.240014E-01
   91      0.00000       0.250000E-01
   92    -0.395434E-03   0.250000E-01
   93    -0.792177E-03   0.250000E-01
   94    -0.119147E-02   0.250000E-01
   95    -0.159419E-02   0.250000E-01
   96    -0.200019E-02   0.250000E-01


 Reactions
 =========

 Node      X-Force          Y-Force
    1    -0.203257        -0.374926    
    2      0.00000        -0.735839    
    3    -0.250365          0.00000    
    5    -0.792494E-02      0.00000    
   11     0.118329          0.00000    
   16     0.114701          0.00000    
   23     0.772664E-01      0.00000    
   34     0.560686E-01      0.00000    
   40     0.389726E-01      0.00000    
   47     0.255777E-01      0.00000    
   54     0.157356E-01      0.00000    
   60     0.894645E-02      0.00000    
   66     0.454620E-02      0.00000    
   72     0.185671E-02      0.00000    
   78     0.324971E-03      0.00000    
   85    -0.441789E-03      0.00000    
   91    -0.336199E-03     0.110150    
   92      0.00000         0.220565    
   93      0.00000         0.221335    
   94      0.00000         0.222511    
   95      0.00000         0.223867    
   96      0.00000         0.112337    
       ---------------  ---------------
 Totals  -0.466365E-11     0.459222E-11


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    X-Coord=   0.000     Y-Coord=   0.000    
 S-xx  =   0.4659     S-yy  =   0.7538     S-xy  =   0.9561E-02 S-zz  =   0.2847    
 S-max =   0.7541     S-min =   0.4656     Angle =    88.10    
 S-eff =   0.4101     Eps.  =  -0.9516E-03 dgama =  -0.9516E-03

 Node number     2    X-Coord=   1.001     Y-Coord=   0.000    
 S-xx  =   0.2089     S-yy  =   0.6239     S-xy  =   0.2485E-01 S-zz  =   0.3376    
 S-max =   0.6254     S-min =   0.2074     Angle =    86.59    
 S-eff =   0.3704     Eps.  =   0.2704E-02 dgama =   0.2704E-02

 Node number     3    X-Coord=   0.000     Y-Coord=   1.002    
 S-xx  =   0.2293     S-yy  =   0.6629     S-xy  =   0.1674     S-zz  =   0.3611    
 S-max =   0.7200     S-min =   0.1722     Angle =    71.16    
 S-eff =   0.4820     Eps.  =   0.2531E-02 dgama =   0.2531E-02

 Node number     4    X-Coord=  0.9975     Y-Coord=   1.006    
 S-xx  =   0.1256     S-yy  =   0.5988     S-xy  =   0.1095     S-zz  =   0.2877    
 S-max =   0.6229     S-min =   0.1015     Angle =    77.59    
 S-eff =   0.4576     Eps.  =   0.1900E-02 dgama =   0.1900E-02

 Node number     5    X-Coord=   0.000     Y-Coord=   2.008    
 S-xx  =   0.1223E-01 S-yy  =   0.5220     S-xy  =   0.4995E-01 S-zz  =   0.2154    
 S-max =   0.5268     S-min =   0.7381E-02 Angle =    84.46    
 S-eff =   0.4528     Eps.  =   0.2320E-02 dgama =   0.2320E-02

 Node number     6    X-Coord=   2.000     Y-Coord=  0.1169E-01
 S-xx  =   0.1577     S-yy  =   0.8207E-01 S-xy  =   0.6908E-01 S-zz  =   0.1161    
 S-max =   0.1986     S-min =   0.4113E-01 Angle =    30.66    
 S-eff =   0.1364     Eps.  =   0.1594E-02 dgama =   0.1594E-02

 Node number     7    X-Coord=   1.997     Y-Coord=   1.010    
 S-xx  =   0.2114     S-yy  =   0.1288     S-xy  =   0.1937     S-zz  =   0.9266E-01
 S-max =   0.3682     S-min =  -0.2796E-01 Angle =    38.98    
 S-eff =   0.3517     Eps.  =  -0.2542E-03 dgama =  -0.2542E-03

 Node number     8    X-Coord=  0.9976     Y-Coord=   2.009    
 S-xx  =   0.2395E-01 S-yy  =   0.4730     S-xy  =   0.1295     S-zz  =   0.1747    
 S-max =   0.5077     S-min =  -0.1071E-01 Angle =    75.02    
 S-eff =   0.4550     Eps.  =   0.8283E-03 dgama =   0.8283E-03

 Node number     9    X-Coord=   1.997     Y-Coord=   2.011    
 S-xx  =   0.7613E-01 S-yy  =   0.2772     S-xy  =   0.1763     S-zz  =   0.9810E-01
 S-max =   0.3796     S-min =  -0.2625E-01 Angle =    59.85    
 S-eff =   0.3601     Eps.  =  -0.1051E-03 dgama =  -0.1051E-03

 Node number    10    X-Coord=   3.000     Y-Coord=  0.1264E-01
 S-xx  =  -0.7188E-01 S-yy  =   0.3726E-01 S-xy  =  -0.1293E-01 S-zz  =  -0.1004E-01
 S-max =   0.3877E-01 S-min =  -0.7339E-01 Angle =   -83.34    
 S-eff =   0.9741E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    11    X-Coord=   0.000     Y-Coord=   3.011    
 S-xx  =  -0.1153     S-yy  =   0.4030     S-xy  =   0.1349E-01 S-zz  =   0.9559E-01
 S-max =   0.4033     S-min =  -0.1157     Angle =    88.51    
 S-eff =   0.4520     Eps.  =   0.4833E-03 dgama =   0.4833E-03

 Node number    12    X-Coord=   2.998     Y-Coord=   1.013    
 S-xx  =   0.5240E-01 S-yy  =   0.3473E-02 S-xy  =   0.5205E-01 S-zz  =   0.1620E-01
 S-max =   0.8544E-01 S-min =  -0.2957E-01 Angle =    32.41    
 S-eff =   0.1003     Eps.  =    0.000     dgama =    0.000    

 Node number    13    X-Coord=  0.9986     Y-Coord=   3.011    
 S-xx  =  -0.9275E-01 S-yy  =   0.3880     S-xy  =   0.8739E-01 S-zz  =   0.9087E-01
 S-max =   0.4034     S-min =  -0.1081     Angle =    80.01    
 S-eff =   0.4466     Eps.  =   0.1564E-03 dgama =   0.1564E-03

 Node number    14    X-Coord=   2.997     Y-Coord=   2.013    
 S-xx  =   0.7839E-01 S-yy  =   0.8609E-01 S-xy  =   0.8937E-01 S-zz  =   0.4770E-01
 S-max =   0.1717     S-min =  -0.7214E-02 Angle =    46.23    
 S-eff =   0.1587     Eps.  =    0.000     dgama =    0.000    

 Node number    15    X-Coord=   1.998     Y-Coord=   3.012    
 S-xx  =  -0.3121E-01 S-yy  =   0.2942     S-xy  =   0.1225     S-zz  =   0.7576E-01
 S-max =   0.3352     S-min =  -0.7219E-01 Angle =    71.51    
 S-eff =   0.3572     Eps.  =  -0.1488E-04 dgama =  -0.1488E-04

 Node number    16    X-Coord=   0.000     Y-Coord=   4.013    
 S-xx  =  -0.1080     S-yy  =   0.3173     S-xy  =   0.1145E-01 S-zz  =   0.6069E-01
 S-max =   0.3176     S-min =  -0.1083     Angle =    88.46    
 S-eff =   0.3714     Eps.  =    0.000     dgama =    0.000    

 Node number    17    X-Coord=   3.999     Y-Coord=  0.1414E-01
 S-xx  =   0.1041E-02 S-yy  =   0.6391E-02 S-xy  =   0.7837E-02 S-zz  =   0.2155E-02
 S-max =   0.1200E-01 S-min =  -0.4565E-02 Angle =    54.42    
 S-eff =   0.1443E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    18    X-Coord=  0.9990     Y-Coord=   4.013    
 S-xx  =  -0.9765E-01 S-yy  =   0.3106     S-xy  =   0.4760E-01 S-zz  =   0.6175E-01
 S-max =   0.3161     S-min =  -0.1031     Angle =    83.44    
 S-eff =   0.3658     Eps.  =    0.000     dgama =    0.000    

 Node number    19    X-Coord=   3.998     Y-Coord=   1.014    
 S-xx  =   0.1116E-01 S-yy  =   0.6515E-02 S-xy  =   0.3624E-02 S-zz  =   0.5124E-02
 S-max =   0.1314E-01 S-min =   0.4532E-02 Angle =    28.69    
 S-eff =   0.8326E-02 Eps.  =    0.000     dgama =    0.000    

 Node number    20    X-Coord=   2.997     Y-Coord=   3.013    
 S-xx  =   0.1273E-01 S-yy  =   0.1669     S-xy  =   0.1022     S-zz  =   0.5211E-01
 S-max =   0.2179     S-min =  -0.3818E-01 Angle =    63.52    
 S-eff =   0.2249     Eps.  =    0.000     dgama =    0.000    

 Node number    21    X-Coord=   3.997     Y-Coord=   2.014    
 S-xx  =   0.2354E-01 S-yy  =   0.2861E-01 S-xy  =   0.3207E-01 S-zz  =   0.1512E-01
 S-max =   0.5825E-01 S-min =  -0.6092E-02 Angle =    47.26    
 S-eff =   0.5678E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    22    X-Coord=   1.998     Y-Coord=   4.013    
 S-xx  =  -0.6557E-01 S-yy  =   0.2735     S-xy  =   0.7957E-01 S-zz  =   0.6031E-01
 S-max =   0.2913     S-min =  -0.8331E-01 Angle =    77.43    
 S-eff =   0.3273     Eps.  =    0.000     dgama =    0.000    

 Node number    23    X-Coord=   0.000     Y-Coord=   5.014    
 S-xx  =  -0.7600E-01 S-yy  =   0.2830     S-xy  =   0.8006E-02 S-zz  =   0.6003E-01
 S-max =   0.2832     S-min =  -0.7618E-01 Angle =    88.72    
 S-eff =   0.3142     Eps.  =    0.000     dgama =    0.000    

 Node number    24    X-Coord=   4.999     Y-Coord=  0.1509E-01
 S-xx  =  -0.1218E-01 S-yy  =  -0.4259E-03 S-xy  =  -0.6853E-02 S-zz  =  -0.3657E-02
 S-max =   0.2724E-02 S-min =  -0.1533E-01 Angle =   -65.31    
 S-eff =   0.1586E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    25    X-Coord=   3.997     Y-Coord=   3.014    
 S-xx  =   0.1250E-01 S-yy  =   0.7907E-01 S-xy  =   0.5022E-01 S-zz  =   0.2656E-01
 S-max =   0.1060     S-min =  -0.1446E-01 Angle =    61.77    
 S-eff =   0.1061     Eps.  =    0.000     dgama =    0.000    

 Node number    26    X-Coord=   2.997     Y-Coord=   4.014    
 S-xx  =  -0.2626E-01 S-yy  =   0.2010     S-xy  =   0.7969E-01 S-zz  =   0.5068E-01
 S-max =   0.2262     S-min =  -0.5142E-01 Angle =    72.48    
 S-eff =   0.2432     Eps.  =    0.000     dgama =    0.000    

 Node number    27    X-Coord=   4.998     Y-Coord=   1.015    
 S-xx  =   0.8956E-02 S-yy  =  -0.1181E-01 S-xy  =   0.8411E-02 S-zz  =  -0.8268E-03
 S-max =   0.1194E-01 S-min =  -0.1479E-01 Angle =    19.51    
 S-eff =   0.2315E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    28    X-Coord=  0.9992     Y-Coord=   5.014    
 S-xx  =  -0.7116E-01 S-yy  =   0.2754     S-xy  =   0.2760E-01 S-zz  =   0.5922E-01
 S-max =   0.2775     S-min =  -0.7335E-01 Angle =    85.47    
 S-eff =   0.3069     Eps.  =    0.000     dgama =    0.000    

 Node number    29    X-Coord=   4.997     Y-Coord=   2.015    
 S-xx  =   0.1873E-01 S-yy  =  -0.3745E-02 S-xy  =   0.6517E-02 S-zz  =   0.4345E-02
 S-max =   0.2048E-01 S-min =  -0.5498E-02 Angle =    15.06    
 S-eff =   0.2272E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    30    X-Coord=   1.998     Y-Coord=   5.015    
 S-xx  =  -0.5572E-01 S-yy  =   0.2503     S-xy  =   0.4906E-01 S-zz  =   0.5644E-01
 S-max =   0.2580     S-min =  -0.6339E-01 Angle =    81.11    
 S-eff =   0.2813     Eps.  =    0.000     dgama =    0.000    

 Node number    31    X-Coord=   3.997     Y-Coord=   4.015    
 S-xx  =  -0.6249E-02 S-yy  =   0.1294     S-xy  =   0.4982E-01 S-zz  =   0.3571E-01
 S-max =   0.1457     S-min =  -0.2258E-01 Angle =    71.85    
 S-eff =   0.1480     Eps.  =    0.000     dgama =    0.000    

 Node number    32    X-Coord=   4.997     Y-Coord=   3.015    
 S-xx  =   0.1851E-01 S-yy  =   0.2891E-01 S-xy  =   0.2256E-01 S-zz  =   0.1375E-01
 S-max =   0.4686E-01 S-min =   0.5554E-03 Angle =    51.49    
 S-eff =   0.4132E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    33    X-Coord=   2.998     Y-Coord=   5.015    
 S-xx  =  -0.3235E-01 S-yy  =   0.2095     S-xy  =   0.5494E-01 S-zz  =   0.5136E-01
 S-max =   0.2214     S-min =  -0.4425E-01 Angle =    77.78    
 S-eff =   0.2330     Eps.  =    0.000     dgama =    0.000    

 Node number    34    X-Coord=   0.000     Y-Coord=   6.016    
 S-xx  =  -0.5520E-01 S-yy  =   0.2590     S-xy  =   0.4946E-02 S-zz  =   0.5910E-01
 S-max =   0.2591     S-min =  -0.5528E-01 Angle =    89.10    
 S-eff =   0.2756     Eps.  =    0.000     dgama =    0.000    

 Node number    35    X-Coord=  0.9993     Y-Coord=   6.016    
 S-xx  =  -0.5142E-01 S-yy  =   0.2532     S-xy  =   0.1842E-01 S-zz  =   0.5851E-01
 S-max =   0.2543     S-min =  -0.5253E-01 Angle =    86.55    
 S-eff =   0.2691     Eps.  =    0.000     dgama =    0.000    

 Node number    36    X-Coord=   1.999     Y-Coord=   6.016    
 S-xx  =  -0.4046E-01 S-yy  =   0.2364     S-xy  =   0.3195E-01 S-zz  =   0.5683E-01
 S-max =   0.2400     S-min =  -0.4410E-01 Angle =    83.50    
 S-eff =   0.2495     Eps.  =    0.000     dgama =    0.000    

 Node number    37    X-Coord=   4.997     Y-Coord=   4.015    
 S-xx  =   0.8292E-02 S-yy  =   0.8783E-01 S-xy  =   0.2185E-01 S-zz  =   0.2787E-01
 S-max =   0.9343E-01 S-min =   0.2686E-02 Angle =    75.61    
 S-eff =   0.8114E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    38    X-Coord=   3.997     Y-Coord=   5.015    
 S-xx  =  -0.1066E-01 S-yy  =   0.1651     S-xy  =   0.3694E-01 S-zz  =   0.4479E-01
 S-max =   0.1726     S-min =  -0.1810E-01 Angle =    78.60    
 S-eff =   0.1683     Eps.  =    0.000     dgama =    0.000    

 Node number    39    X-Coord=   2.998     Y-Coord=   6.016    
 S-xx  =  -0.2447E-01 S-yy  =   0.2121     S-xy  =   0.3515E-01 S-zz  =   0.5440E-01
 S-max =   0.2172     S-min =  -0.2958E-01 Angle =    81.72    
 S-eff =   0.2173     Eps.  =    0.000     dgama =    0.000    

 Node number    40    X-Coord=   0.000     Y-Coord=   7.017    
 S-xx  =  -0.3821E-01 S-yy  =   0.2426     S-xy  =   0.2709E-02 S-zz  =   0.5927E-01
 S-max =   0.2426     S-min =  -0.3824E-01 Angle =    89.45    
 S-eff =   0.2470     Eps.  =    0.000     dgama =    0.000    

 Node number    41    X-Coord=  0.9994     Y-Coord=   7.017    
 S-xx  =  -0.3536E-01 S-yy  =   0.2388     S-xy  =   0.1191E-01 S-zz  =   0.5900E-01
 S-max =   0.2393     S-min =  -0.3587E-01 Angle =    87.52    
 S-eff =   0.2421     Eps.  =    0.000     dgama =    0.000    

 Node number    42    X-Coord=   4.997     Y-Coord=   5.015    
 S-xx  =   0.1098E-02 S-yy  =   0.1414     S-xy  =   0.1799E-01 S-zz  =   0.4132E-01
 S-max =   0.1437     S-min =  -0.1172E-02 Angle =    82.81    
 S-eff =   0.1289     Eps.  =    0.000     dgama =    0.000    

 Node number    43    X-Coord=   3.998     Y-Coord=   6.016    
 S-xx  =  -0.8414E-02 S-yy  =   0.1893     S-xy  =   0.2390E-01 S-zz  =   0.5245E-01
 S-max =   0.1921     S-min =  -0.1126E-01 Angle =    83.20    
 S-eff =   0.1802     Eps.  =    0.000     dgama =    0.000    

 Node number    44    X-Coord=   1.999     Y-Coord=   7.017    
 S-xx  =  -0.2733E-01 S-yy  =   0.2284     S-xy  =   0.2017E-01 S-zz  =   0.5830E-01
 S-max =   0.2300     S-min =  -0.2891E-01 Angle =    85.52    
 S-eff =   0.2281     Eps.  =    0.000     dgama =    0.000    

 Node number    45    X-Coord=   2.998     Y-Coord=   7.017    
 S-xx  =  -0.1600E-01 S-yy  =   0.2148     S-xy  =   0.2149E-01 S-zz  =   0.5765E-01
 S-max =   0.2168     S-min =  -0.1799E-01 Angle =    84.73    
 S-eff =   0.2076     Eps.  =    0.000     dgama =    0.000    

 Node number    46    X-Coord=   4.997     Y-Coord=   6.016    
 S-xx  =  -0.2080E-02 S-yy  =   0.1808     S-xy  =   0.1143E-01 S-zz  =   0.5183E-01
 S-max =   0.1815     S-min =  -0.2792E-02 Angle =    86.44    
 S-eff =   0.1640     Eps.  =    0.000     dgama =    0.000    

 Node number    47    X-Coord=   0.000     Y-Coord=   8.018    
 S-xx  =  -0.2493E-01 S-yy  =   0.2321     S-xy  =   0.1278E-02 S-zz  =   0.6008E-01
 S-max =   0.2321     S-min =  -0.2494E-01 Angle =    89.72    
 S-eff =   0.2268     Eps.  =    0.000     dgama =    0.000    

 Node number    48    X-Coord=  0.9995     Y-Coord=   8.018    
 S-xx  =  -0.2290E-01 S-yy  =   0.2299     S-xy  =   0.7224E-02 S-zz  =   0.6002E-01
 S-max =   0.2301     S-min =  -0.2311E-01 Angle =    88.36    
 S-eff =   0.2235     Eps.  =    0.000     dgama =    0.000    

 Node number    49    X-Coord=   3.998     Y-Coord=   7.017    
 S-xx  =  -0.5198E-02 S-yy  =   0.2049     S-xy  =   0.1403E-01 S-zz  =   0.5792E-01
 S-max =   0.2059     S-min =  -0.6131E-02 Angle =    86.20    
 S-eff =   0.1883     Eps.  =    0.000     dgama =    0.000    

 Node number    50    X-Coord=   1.999     Y-Coord=   8.018    
 S-xx  =  -0.1731E-01 S-yy  =   0.2241     S-xy  =   0.1194E-01 S-zz  =   0.5996E-01
 S-max =   0.2247     S-min =  -0.1790E-01 Angle =    87.17    
 S-eff =   0.2145     Eps.  =    0.000     dgama =    0.000    

 Node number    51    X-Coord=   2.999     Y-Coord=   8.018    
 S-xx  =  -0.9776E-02 S-yy  =   0.2175     S-xy  =   0.1221E-01 S-zz  =   0.6023E-01
 S-max =   0.2181     S-min =  -0.1043E-01 Angle =    86.93    
 S-eff =   0.2027     Eps.  =    0.000     dgama =    0.000    

 Node number    52    X-Coord=   4.998     Y-Coord=   7.017    
 S-xx  =  -0.2559E-02 S-yy  =   0.2040     S-xy  =   0.6767E-02 S-zz  =   0.5841E-01
 S-max =   0.2042     S-min =  -0.2780E-02 Angle =    88.13    
 S-eff =   0.1842     Eps.  =    0.000     dgama =    0.000    

 Node number    53    X-Coord=   3.998     Y-Coord=   8.018    
 S-xx  =  -0.3029E-02 S-yy  =   0.2145     S-xy  =   0.7668E-02 S-zz  =   0.6133E-01
 S-max =   0.2148     S-min =  -0.3299E-02 Angle =    87.98    
 S-eff =   0.1940     Eps.  =    0.000     dgama =    0.000    

 Node number    54    X-Coord=   0.000     Y-Coord=   9.019    
 S-xx  =  -0.1523E-01 S-yy  =   0.2259     S-xy  =   0.4194E-03 S-zz  =   0.6109E-01
 S-max =   0.2259     S-min =  -0.1523E-01 Angle =    89.90    
 S-eff =   0.2135     Eps.  =    0.000     dgama =    0.000    

 Node number    55    X-Coord=  0.9995     Y-Coord=   9.019    
 S-xx  =  -0.1389E-01 S-yy  =   0.2248     S-xy  =   0.4030E-02 S-zz  =   0.6115E-01
 S-max =   0.2248     S-min =  -0.1396E-01 Angle =    89.03    
 S-eff =   0.2115     Eps.  =    0.000     dgama =    0.000    

 Node number    56    X-Coord=   1.999     Y-Coord=   9.019    
 S-xx  =  -0.1029E-01 S-yy  =   0.2220     S-xy  =   0.6480E-02 S-zz  =   0.6140E-01
 S-max =   0.2222     S-min =  -0.1047E-01 Angle =    88.40    
 S-eff =   0.2063     Eps.  =    0.000     dgama =    0.000    

 Node number    57    X-Coord=   4.998     Y-Coord=   8.018    
 S-xx  =  -0.2229E-02 S-yy  =   0.2166     S-xy  =   0.3603E-02 S-zz  =   0.6217E-01
 S-max =   0.2167     S-min =  -0.2288E-02 Angle =    89.06    
 S-eff =   0.1949     Eps.  =    0.000     dgama =    0.000    

 Node number    58    X-Coord=   2.999     Y-Coord=   9.019    
 S-xx  =  -0.5636E-02 S-yy  =   0.2195     S-xy  =   0.6343E-02 S-zz  =   0.6202E-01
 S-max =   0.2197     S-min =  -0.5814E-02 Angle =    88.39    
 S-eff =   0.2004     Eps.  =    0.000     dgama =    0.000    

 Node number    59    X-Coord=   3.998     Y-Coord=   9.019    
 S-xx  =  -0.1684E-02 S-yy  =   0.2199     S-xy  =   0.3786E-02 S-zz  =   0.6327E-01
 S-max =   0.2199     S-min =  -0.1748E-02 Angle =    89.02    
 S-eff =   0.1974     Eps.  =    0.000     dgama =    0.000    

 Node number    60    X-Coord=   0.000     Y-Coord=   10.02    
 S-xx  =  -0.8587E-02 S-yy  =   0.2226     S-xy  =  -0.2003E-04 S-zz  =   0.6205E-01
 S-max =   0.2226     S-min =  -0.8587E-02 Angle =    90.00    
 S-eff =   0.2052     Eps.  =    0.000     dgama =    0.000    

 Node number    61    X-Coord=  0.9996     Y-Coord=   10.02    
 S-xx  =  -0.7784E-02 S-yy  =   0.2221     S-xy  =   0.2008E-02 S-zz  =   0.6216E-01
 S-max =   0.2221     S-min =  -0.7801E-02 Angle =    89.50    
 S-eff =   0.2042     Eps.  =    0.000     dgama =    0.000    

 Node number    62    X-Coord=   1.999     Y-Coord=   10.02    
 S-xx  =  -0.5661E-02 S-yy  =   0.2212     S-xy  =   0.3121E-02 S-zz  =   0.6250E-01
 S-max =   0.2212     S-min =  -0.5704E-02 Angle =    89.21    
 S-eff =   0.2017     Eps.  =    0.000     dgama =    0.000    

 Node number    63    X-Coord=   4.998     Y-Coord=   9.019    
 S-xx  =  -0.1698E-02 S-yy  =   0.2227     S-xy  =   0.1758E-02 S-zz  =   0.6409E-01
 S-max =   0.2227     S-min =  -0.1712E-02 Angle =    89.55    
 S-eff =   0.1998     Eps.  =    0.000     dgama =    0.000    

 Node number    64    X-Coord=   2.999     Y-Coord=   10.02    
 S-xx  =  -0.3009E-02 S-yy  =   0.2209     S-xy  =   0.2867E-02 S-zz  =   0.6318E-01
 S-max =   0.2209     S-min =  -0.3046E-02 Angle =    89.27    
 S-eff =   0.1993     Eps.  =    0.000     dgama =    0.000    

 Node number    65    X-Coord=   3.998     Y-Coord=   10.02    
 S-xx  =  -0.8648E-03 S-yy  =   0.2226     S-xy  =   0.1585E-02 S-zz  =   0.6429E-01
 S-max =   0.2226     S-min =  -0.8761E-03 Angle =    89.59    
 S-eff =   0.1990     Eps.  =    0.000     dgama =    0.000    

 Node number    66    X-Coord=   0.000     Y-Coord=   11.02    
 S-xx  =  -0.4307E-02 S-yy  =   0.2210     S-xy  =  -0.2007E-03 S-zz  =   0.6284E-01
 S-max =   0.2210     S-min =  -0.4307E-02 Angle =   -89.95    
 S-eff =   0.2004     Eps.  =    0.000     dgama =    0.000    

 Node number    67    X-Coord=  0.9996     Y-Coord=   11.02    
 S-xx  =  -0.3874E-02 S-yy  =   0.2209     S-xy  =   0.8420E-03 S-zz  =   0.6295E-01
 S-max =   0.2209     S-min =  -0.3877E-02 Angle =    89.79    
 S-eff =   0.2000     Eps.  =    0.000     dgama =    0.000    

 Node number    68    X-Coord=   4.998     Y-Coord=   10.02    
 S-xx  =  -0.1207E-02 S-yy  =   0.2252     S-xy  =   0.7107E-03 S-zz  =   0.6497E-01
 S-max =   0.2252     S-min =  -0.1209E-02 Angle =    89.82    
 S-eff =   0.2017     Eps.  =    0.000     dgama =    0.000    

 Node number    69    X-Coord=   1.999     Y-Coord=   11.02    
 S-xx  =  -0.2752E-02 S-yy  =   0.2210     S-xy  =   0.1228E-02 S-zz  =   0.6329E-01
 S-max =   0.2210     S-min =  -0.2759E-02 Angle =    89.69    
 S-eff =   0.1991     Eps.  =    0.000     dgama =    0.000    

 Node number    70    X-Coord=   2.999     Y-Coord=   11.02    
 S-xx  =  -0.1404E-02 S-yy  =   0.2217     S-xy  =   0.9867E-03 S-zz  =   0.6389E-01
 S-max =   0.2217     S-min =  -0.1408E-02 Angle =    89.75    
 S-eff =   0.1987     Eps.  =    0.000     dgama =    0.000    

 Node number    71    X-Coord=   3.998     Y-Coord=   11.02    
 S-xx  =  -0.3782E-03 S-yy  =   0.2237     S-xy  =   0.4368E-03 S-zz  =   0.6477E-01
 S-max =   0.2237     S-min =  -0.3791E-03 Angle =    89.89    
 S-eff =   0.1997     Eps.  =    0.000     dgama =    0.000    

 Node number    72    X-Coord=   0.000     Y-Coord=   12.02    
 S-xx  =  -0.1708E-02 S-yy  =   0.2204     S-xy  =  -0.2308E-03 S-zz  =   0.6342E-01
 S-max =   0.2204     S-min =  -0.1708E-02 Angle =   -89.94    
 S-eff =   0.1978     Eps.  =    0.000     dgama =    0.000    

 Node number    73    X-Coord=  0.9996     Y-Coord=   12.02    
 S-xx  =  -0.1511E-02 S-yy  =   0.2205     S-xy  =   0.2466E-03 S-zz  =   0.6352E-01
 S-max =   0.2205     S-min =  -0.1512E-02 Angle =    89.94    
 S-eff =   0.1977     Eps.  =    0.000     dgama =    0.000    

 Node number    74    X-Coord=   4.998     Y-Coord=   11.02    
 S-xx  =  -0.8081E-03 S-yy  =   0.2259     S-xy  =   0.1778E-03 S-zz  =   0.6528E-01
 S-max =   0.2259     S-min =  -0.8082E-03 Angle =    89.96    
 S-eff =   0.2020     Eps.  =    0.000     dgama =    0.000    

 Node number    75    X-Coord=   1.999     Y-Coord=   12.02    
 S-xx  =  -0.1018E-02 S-yy  =   0.2211     S-xy  =   0.2915E-03 S-zz  =   0.6381E-01
 S-max =   0.2211     S-min =  -0.1018E-02 Angle =    89.92    
 S-eff =   0.1978     Eps.  =    0.000     dgama =    0.000    

 Node number    76    X-Coord=   2.999     Y-Coord=   12.02    
 S-xx  =  -0.4653E-03 S-yy  =   0.2222     S-xy  =   0.1026E-03 S-zz  =   0.6430E-01
 S-max =   0.2222     S-min =  -0.4653E-03 Angle =    89.97    
 S-eff =   0.1984     Eps.  =    0.000     dgama =    0.000    

 Node number    77    X-Coord=   3.998     Y-Coord=   12.02    
 S-xx  =  -0.1009E-03 S-yy  =   0.2241     S-xy  =  -0.6895E-04 S-zz  =   0.6496E-01
 S-max =   0.2241     S-min =  -0.1009E-03 Angle =   -89.98    
 S-eff =   0.1998     Eps.  =    0.000     dgama =    0.000    

 Node number    78    X-Coord=   0.000     Y-Coord=   13.02    
 S-xx  =  -0.2355E-03 S-yy  =   0.2203     S-xy  =  -0.1829E-03 S-zz  =   0.6381E-01
 S-max =   0.2203     S-min =  -0.2357E-03 Angle =   -89.95    
 S-eff =   0.1965     Eps.  =    0.000     dgama =    0.000    

 Node number    79    X-Coord=   4.998     Y-Coord=   12.02    
 S-xx  =  -0.5162E-03 S-yy  =   0.2258     S-xy  =  -0.5331E-04 S-zz  =   0.6532E-01
 S-max =   0.2258     S-min =  -0.5162E-03 Angle =   -89.99    
 S-eff =   0.2016     Eps.  =    0.000     dgama =    0.000    

 Node number    80    X-Coord=  0.9996     Y-Coord=   13.02    
 S-xx  =  -0.1778E-03 S-yy  =   0.2205     S-xy  =   0.3945E-05 S-zz  =   0.6389E-01
 S-max =   0.2205     S-min =  -0.1778E-03 Angle =    90.00    
 S-eff =   0.1966     Eps.  =    0.000     dgama =    0.000    

 Node number    81    X-Coord=   1.999     Y-Coord=   13.02    
 S-xx  =  -0.4902E-04 S-yy  =   0.2212     S-xy  =  -0.6593E-04 S-zz  =   0.6414E-01
 S-max =   0.2212     S-min =  -0.4904E-04 Angle =   -89.98    
 S-eff =   0.1972     Eps.  =    0.000     dgama =    0.000    

 Node number    82    X-Coord=   2.999     Y-Coord=   13.02    
 S-xx  =   0.4971E-04 S-yy  =   0.2224     S-xy  =  -0.1909E-03 S-zz  =   0.6452E-01
 S-max =   0.2224     S-min =   0.4955E-04 Angle =   -89.95    
 S-eff =   0.1982     Eps.  =    0.000     dgama =    0.000    

 Node number    83    X-Coord=   3.998     Y-Coord=   13.02    
 S-xx  =   0.4786E-04 S-yy  =   0.2241     S-xy  =  -0.2052E-03 S-zz  =   0.6500E-01
 S-max =   0.2241     S-min =   0.4767E-04 Angle =   -89.95    
 S-eff =   0.1997     Eps.  =    0.000     dgama =    0.000    

 Node number    84    X-Coord=   4.998     Y-Coord=   13.02    
 S-xx  =  -0.3215E-03 S-yy  =   0.2254     S-xy  =  -0.1096E-03 S-zz  =   0.6526E-01
 S-max =   0.2254     S-min =  -0.3216E-03 Angle =   -89.97    
 S-eff =   0.2011     Eps.  =    0.000     dgama =    0.000    

 Node number    85    X-Coord=   0.000     Y-Coord=   14.02    
 S-xx  =   0.4977E-03 S-yy  =   0.2203     S-xy  =  -0.9838E-04 S-zz  =   0.6403E-01
 S-max =   0.2203     S-min =   0.4977E-03 Angle =   -89.97    
 S-eff =   0.1959     Eps.  =    0.000     dgama =    0.000    

 Node number    86    X-Coord=  0.9996     Y-Coord=   14.02    
 S-xx  =   0.4846E-03 S-yy  =   0.2206     S-xy  =  -0.4158E-04 S-zz  =   0.6410E-01
 S-max =   0.2206     S-min =   0.4846E-03 Angle =   -89.99    
 S-eff =   0.1962     Eps.  =    0.000     dgama =    0.000    

 Node number    87    X-Coord=   1.999     Y-Coord=   14.02    
 S-xx  =   0.4281E-03 S-yy  =   0.2213     S-xy  =  -0.1031E-03 S-zz  =   0.6431E-01
 S-max =   0.2213     S-min =   0.4281E-03 Angle =   -89.97    
 S-eff =   0.1969     Eps.  =    0.000     dgama =    0.000    

 Node number    88    X-Coord=   2.999     Y-Coord=   14.02    
 S-xx  =   0.2997E-03 S-yy  =   0.2225     S-xy  =  -0.1647E-03 S-zz  =   0.6462E-01
 S-max =   0.2225     S-min =   0.2996E-03 Angle =   -89.96    
 S-eff =   0.1981     Eps.  =    0.000     dgama =    0.000    

 Node number    89    X-Coord=   3.998     Y-Coord=   14.02    
 S-xx  =   0.1185E-03 S-yy  =   0.2240     S-xy  =  -0.1445E-03 S-zz  =   0.6500E-01
 S-max =   0.2240     S-min =   0.1185E-03 Angle =   -89.96    
 S-eff =   0.1995     Eps.  =    0.000     dgama =    0.000    

 Node number    90    X-Coord=   4.998     Y-Coord=   14.02    
 S-xx  =  -0.2115E-03 S-yy  =   0.2250     S-xy  =  -0.7436E-04 S-zz  =   0.6520E-01
 S-max =   0.2250     S-min =  -0.2115E-03 Angle =   -89.98    
 S-eff =   0.2007     Eps.  =    0.000     dgama =    0.000    

 Node number    91    X-Coord=   0.000     Y-Coord=   15.03    
 S-xx  =   0.7176E-03 S-yy  =   0.2203     S-xy  =   0.3905E-14 S-zz  =   0.6410E-01
 S-max =   0.2203     S-min =   0.7176E-03 Angle =    90.00    
 S-eff =   0.1958     Eps.  =    0.000     dgama =    0.000    

 Node number    92    X-Coord=  0.9996     Y-Coord=   15.03    
 S-xx  =   0.6829E-03 S-yy  =   0.2206     S-xy  =   0.6873E-04 S-zz  =   0.6417E-01
 S-max =   0.2206     S-min =   0.6829E-03 Angle =    89.98    
 S-eff =   0.1960     Eps.  =    0.000     dgama =    0.000    

 Node number    93    X-Coord=   1.999     Y-Coord=   15.03    
 S-xx  =   0.5702E-03 S-yy  =   0.2214     S-xy  =   0.1222E-03 S-zz  =   0.6436E-01
 S-max =   0.2214     S-min =   0.5702E-03 Angle =    89.97    
 S-eff =   0.1968     Eps.  =    0.000     dgama =    0.000    

 Node number    94    X-Coord=   2.999     Y-Coord=   15.03    
 S-xx  =   0.3736E-03 S-yy  =   0.2226     S-xy  =   0.1536E-03 S-zz  =   0.6465E-01
 S-max =   0.2226     S-min =   0.3735E-03 Angle =    89.96    
 S-eff =   0.1980     Eps.  =    0.000     dgama =    0.000    

 Node number    95    X-Coord=   3.998     Y-Coord=   15.03    
 S-xx  =   0.1391E-03 S-yy  =   0.2240     S-xy  =   0.1695E-03 S-zz  =   0.6499E-01
 S-max =   0.2240     S-min =   0.1390E-03 Angle =    89.96    
 S-eff =   0.1995     Eps.  =    0.000     dgama =    0.000    

 Node number    96    X-Coord=   4.998     Y-Coord=   15.03    
 S-xx  =  -0.1760E-03 S-yy  =   0.2249     S-xy  =   0.1888E-03 S-zz  =   0.6517E-01
 S-max =   0.2249     S-min =  -0.1762E-03 Angle =    89.95    
 S-eff =   0.2006     Eps.  =    0.000     dgama =    0.000    




 INCREMENT NUMBER    2
 =====================


 Total load factor ............... =    0.500000E-01
 Incremental load factor ......... =    0.250000E-01
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    10

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   1
 Output to re-start file............ =   0




 INCREMENT NUMBER    2                   TOTAL LOAD FACTOR =   0.500000E-01
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      29.0784                     0.228229    
        2                      14.7869                     0.932541E-01
        3                     0.120741                     0.677663E-03
        4                     0.539387E-04                 0.342541E-06
        5                     0.589373E-10                 0.315858E-12
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.250000E-01
 --------------------------------------------------------------------------


 Results for load increment   2 Load factor =   0.500000E-01
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1      0.00000        0.00000    
    2    -0.197629E-02    0.00000    
    3      0.00000       0.346391E-02
    4    -0.118809E-01   0.181887E-01
    5      0.00000       0.216986E-01
    6    -0.127399E-01   0.371901E-01
    7    -0.131690E-01   0.351427E-01
    8    -0.858044E-02   0.263340E-01
    9    -0.114422E-01   0.354116E-01
   10    -0.128412E-01   0.356177E-01
   11      0.00000       0.316539E-01
   12    -0.121377E-01   0.361121E-01
   13    -0.528353E-02   0.334956E-01
   14    -0.110158E-01   0.358449E-01
   15    -0.815855E-02   0.365504E-01
   16      0.00000       0.371471E-01
   17    -0.129757E-01   0.352928E-01
   18    -0.315206E-02   0.378148E-01
   19    -0.120453E-01   0.351622E-01
   20    -0.859054E-02   0.362216E-01
   21    -0.106708E-01   0.353854E-01
   22    -0.497687E-02   0.378960E-01
   23      0.00000       0.400088E-01
   24    -0.130238E-01   0.341674E-01
   25    -0.880311E-02   0.357298E-01
   26    -0.597137E-02   0.372350E-01
   27    -0.119653E-01   0.342247E-01
   28    -0.169350E-02   0.397636E-01
   29    -0.107022E-01   0.341299E-01
   30    -0.292804E-02   0.391947E-01
   31    -0.659482E-02   0.365101E-01
   32    -0.895898E-02   0.343948E-01
   33    -0.389615E-02   0.385188E-01
   34      0.00000       0.412442E-01
   35    -0.873231E-03   0.410105E-01
   36    -0.176982E-02   0.404670E-01
   37    -0.703873E-02   0.351012E-01
   38    -0.463063E-02   0.376319E-01
   39    -0.254557E-02   0.397772E-01
   40      0.00000       0.421868E-01
   41    -0.575075E-03   0.420312E-01
   42    -0.522979E-02   0.363348E-01
   43    -0.320343E-02   0.389329E-01
   44    -0.115590E-02   0.415995E-01
   45    -0.174623E-02   0.409878E-01
   46    -0.385091E-02   0.378981E-01
   47      0.00000       0.430853E-01
   48    -0.420822E-03   0.429655E-01
   49    -0.232725E-02   0.402793E-01
   50    -0.862937E-03   0.426338E-01
   51    -0.133583E-02   0.421543E-01
   52    -0.295380E-02   0.395617E-01
   53    -0.185633E-02   0.416189E-01
   54      0.00000       0.439802E-01
   55    -0.356824E-03   0.438918E-01
   56    -0.736996E-03   0.436445E-01
   57    -0.244751E-02   0.411674E-01
   58    -0.116161E-02   0.432920E-01
   59    -0.164577E-02   0.429218E-01
   60      0.00000       0.449031E-01
   61    -0.340932E-03   0.448393E-01
   62    -0.705860E-03   0.446631E-01
   63    -0.219756E-02   0.426621E-01
   64    -0.111482E-02   0.444184E-01
   65    -0.158050E-02   0.441783E-01
   66      0.00000       0.458637E-01
   67    -0.349251E-03   0.458199E-01
   68    -0.209963E-02   0.440435E-01
   69    -0.720013E-03   0.457003E-01
   70    -0.112958E-02   0.455393E-01
   71    -0.158576E-02   0.453926E-01
   72      0.00000       0.468616E-01
   73    -0.366095E-03   0.468333E-01
   74    -0.208052E-02   0.453313E-01
   75    -0.750249E-03   0.467568E-01
   76    -0.116597E-02   0.466571E-01
   77    -0.161755E-02   0.465728E-01
   78      0.00000       0.478901E-01
   79    -0.209530E-02   0.465503E-01
   80    -0.382516E-03   0.478735E-01
   81    -0.779786E-03   0.478290E-01
   82    -0.120218E-02   0.477726E-01
   83    -0.165163E-02   0.477282E-01
   84    -0.211852E-02   0.477231E-01
   85      0.00000       0.489397E-01
   86    -0.393776E-03   0.489321E-01
   87    -0.800040E-03   0.489119E-01
   88    -0.122713E-02   0.488867E-01
   89    -0.167570E-02   0.488679E-01
   90    -0.213662E-02   0.488680E-01
   91      0.00000       0.500000E-01
   92    -0.397730E-03   0.500000E-01
   93    -0.807149E-03   0.500000E-01
   94    -0.123590E-02   0.500000E-01
   95    -0.168424E-02   0.500000E-01
   96    -0.214327E-02   0.500000E-01


 Reactions
 =========

 Node      X-Force          Y-Force
    1    -0.229072        -0.446135    
    2      0.00000        -0.805190    
    3    -0.346236          0.00000    
    5    -0.110562          0.00000    
   11     0.672996E-01      0.00000    
   16     0.205829          0.00000    
   23     0.257232          0.00000    
   34     0.151117          0.00000    
   40     0.593900E-01      0.00000    
   47     0.183883E-01      0.00000    
   54    -0.293809E-02      0.00000    
   60    -0.121195E-01      0.00000    
   66    -0.147425E-01      0.00000    
   72    -0.142010E-01      0.00000    
   78    -0.126532E-01      0.00000    
   85    -0.113220E-01      0.00000    
   91    -0.540890E-02     0.122258    
   92      0.00000         0.245697    
   93      0.00000         0.248772    
   94      0.00000         0.252420    
   95      0.00000         0.254723    
   96      0.00000         0.127455    
       ---------------  ---------------
 Totals  -0.246287E-12    -0.134615E-12


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    X-Coord=   0.000     Y-Coord=   0.000    
 S-xx  =   0.4077     S-yy  =   0.9423     S-xy  =   0.1496E-01 S-zz  =   0.5402    
 S-max =   0.9427     S-min =   0.4073     Angle =    88.40    
 S-eff =   0.4828     Eps.  =   0.5879E-03 dgama =   0.1539E-02

 Node number     2    X-Coord=  0.9980     Y-Coord=   0.000    
 S-xx  =   0.2746     S-yy  =   0.7135     S-xy  =   0.2903E-01 S-zz  =   0.4814    
 S-max =   0.7155     S-min =   0.2727     Angle =    86.23    
 S-eff =   0.3837     Eps.  =   0.1540E-01 dgama =   0.1269E-01

 Node number     3    X-Coord=   0.000     Y-Coord=   1.003    
 S-xx  =   0.3327     S-yy  =   0.7682     S-xy  =   0.1552     S-zz  =   0.5331    
 S-max =   0.8178     S-min =   0.2830     Angle =    72.26    
 S-eff =   0.4635     Eps.  =   0.1355E-01 dgama =   0.1102E-01

 Node number     4    X-Coord=  0.9881     Y-Coord=   1.018    
 S-xx  =   0.2420     S-yy  =   0.6616     S-xy  =   0.1433     S-zz  =   0.4323    
 S-max =   0.7058     S-min =   0.1977     Angle =    72.83    
 S-eff =   0.4405     Eps.  =   0.1201E-01 dgama =   0.1011E-01

 Node number     5    X-Coord=   0.000     Y-Coord=   2.022    
 S-xx  =   0.1077     S-yy  =   0.6190     S-xy  =   0.5416E-01 S-zz  =   0.3459    
 S-max =   0.6247     S-min =   0.1020     Angle =    84.02    
 S-eff =   0.4529     Eps.  =   0.1136E-01 dgama =   0.9043E-02

 Node number     6    X-Coord=   1.987     Y-Coord=  0.3719E-01
 S-xx  =   0.1820     S-yy  =   0.1093     S-xy  =   0.4540E-01 S-zz  =   0.1563    
 S-max =   0.2038     S-min =   0.8746E-01 Angle =    25.65    
 S-eff =   0.1013     Eps.  =   0.9780E-02 dgama =   0.8186E-02

 Node number     7    X-Coord=   1.987     Y-Coord=   1.035    
 S-xx  =   0.2661     S-yy  =   0.1300     S-xy  =   0.2019     S-zz  =   0.1740    
 S-max =   0.4111     S-min =  -0.1500E-01 Angle =    35.69    
 S-eff =   0.3698     Eps.  =   0.3759E-02 dgama =   0.4014E-02

 Node number     8    X-Coord=  0.9914     Y-Coord=   2.026    
 S-xx  =   0.1222     S-yy  =   0.5248     S-xy  =   0.1605     S-zz  =   0.2997    
 S-max =   0.5809     S-min =   0.6605E-01 Angle =    70.72    
 S-eff =   0.4465     Eps.  =   0.7917E-02 dgama =   0.7089E-02

 Node number     9    X-Coord=   1.989     Y-Coord=   2.035    
 S-xx  =   0.1640     S-yy  =   0.2619     S-xy  =   0.2344     S-zz  =   0.1669    
 S-max =   0.4524     S-min =  -0.2649E-01 Angle =    50.89    
 S-eff =   0.4173     Eps.  =   0.2561E-02 dgama =   0.2666E-02

 Node number    10    X-Coord=   2.987     Y-Coord=  0.3562E-01
 S-xx  =  -0.6351E-01 S-yy  =   0.3473E-01 S-xy  =  -0.1963E-01 S-zz  =  -0.8346E-02
 S-max =   0.3851E-01 S-min =  -0.6729E-01 Angle =   -79.11    
 S-eff =   0.9182E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    11    X-Coord=   0.000     Y-Coord=   3.032    
 S-xx  =  -0.6883E-01 S-yy  =   0.4469     S-xy  =   0.3891E-01 S-zz  =   0.1697    
 S-max =   0.4498     S-min =  -0.7175E-01 Angle =    85.71    
 S-eff =   0.4521     Eps.  =   0.5673E-02 dgama =   0.5190E-02

 Node number    12    X-Coord=   2.988     Y-Coord=   1.036    
 S-xx  =   0.7289E-01 S-yy  =   0.1068E-02 S-xy  =   0.7391E-01 S-zz  =   0.2145E-01
 S-max =   0.1192     S-min =  -0.4519E-01 Angle =    32.04    
 S-eff =   0.1432     Eps.  =    0.000     dgama =    0.000    

 Node number    13    X-Coord=  0.9947     Y-Coord=   3.033    
 S-xx  =  -0.6106E-01 S-yy  =   0.3986     S-xy  =   0.1243     S-zz  =   0.1481    
 S-max =   0.4300     S-min =  -0.9253E-01 Angle =    75.79    
 S-eff =   0.4530     Eps.  =   0.4496E-02 dgama =   0.4340E-02

 Node number    14    X-Coord=   2.989     Y-Coord=   2.036    
 S-xx  =   0.1269     S-yy  =   0.7458E-01 S-xy  =   0.1434     S-zz  =   0.5799E-01
 S-max =   0.2465     S-min =  -0.4498E-01 Angle =    39.83    
 S-eff =   0.2560     Eps.  =  -0.1723E-04 dgama =  -0.1723E-04

 Node number    15    X-Coord=   1.992     Y-Coord=   3.037    
 S-xx  =  -0.6468E-02 S-yy  =   0.2740     S-xy  =   0.2290     S-zz  =   0.9444E-01
 S-max =   0.4024     S-min =  -0.1348     Angle =    60.74    
 S-eff =   0.4668     Eps.  =   0.1169E-02 dgama =   0.1183E-02

 Node number    16    X-Coord=   0.000     Y-Coord=   4.037    
 S-xx  =  -0.2046     S-yy  =   0.3163     S-xy  =   0.2490E-01 S-zz  =   0.4643E-01
 S-max =   0.3175     S-min =  -0.2058     Angle =    87.27    
 S-eff =   0.4533     Eps.  =   0.2348E-02 dgama =   0.2348E-02

 Node number    17    X-Coord=   3.987     Y-Coord=  0.3529E-01
 S-xx  =   0.1668E-01 S-yy  =   0.1035E-01 S-xy  =   0.1645E-01 S-zz  =   0.7837E-02
 S-max =   0.3026E-01 S-min =  -0.3238E-02 Angle =    39.55    
 S-eff =   0.2956E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    18    X-Coord=  0.9968     Y-Coord=   4.038    
 S-xx  =  -0.1911     S-yy  =   0.2975     S-xy  =   0.9495E-01 S-zz  =   0.4202E-01
 S-max =   0.3153     S-min =  -0.2089     Angle =    79.38    
 S-eff =   0.4541     Eps.  =   0.1575E-02 dgama =   0.1575E-02

 Node number    19    X-Coord=   3.988     Y-Coord=   1.035    
 S-xx  =   0.2370E-01 S-yy  =   0.1726E-01 S-xy  =   0.1673E-01 S-zz  =   0.1188E-01
 S-max =   0.3752E-01 S-min =   0.3440E-02 Angle =    39.55    
 S-eff =   0.3074E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    20    X-Coord=   2.991     Y-Coord=   3.036    
 S-xx  =   0.2045E-01 S-yy  =   0.1826     S-xy  =   0.1686     S-zz  =   0.5901E-01
 S-max =   0.2886     S-min =  -0.8561E-01 Angle =    57.84    
 S-eff =   0.3269     Eps.  =   0.5534E-05 dgama =   0.5534E-05

 Node number    21    X-Coord=   3.989     Y-Coord=   2.035    
 S-xx  =   0.3420E-01 S-yy  =   0.5442E-01 S-xy  =   0.6122E-01 S-zz  =   0.2570E-01
 S-max =   0.1064     S-min =  -0.1773E-01 Angle =    49.69    
 S-eff =   0.1091     Eps.  =    0.000     dgama =    0.000    

 Node number    22    X-Coord=   1.995     Y-Coord=   4.038    
 S-xx  =  -0.1297     S-yy  =   0.2553     S-xy  =   0.1612     S-zz  =   0.3940E-01
 S-max =   0.3139     S-min =  -0.1883     Angle =    70.03    
 S-eff =   0.4356     Eps.  =   0.2552E-03 dgama =   0.2552E-03

 Node number    23    X-Coord=   0.000     Y-Coord=   5.040    
 S-xx  =  -0.2553     S-yy  =   0.2427     S-xy  =  -0.1692E-01 S-zz  =  -0.3906E-02
 S-max =   0.2432     S-min =  -0.2559     Angle =   -88.06    
 S-eff =   0.4322     Eps.  =   0.3641E-03 dgama =   0.3641E-03

 Node number    24    X-Coord=   4.987     Y-Coord=  0.3417E-01
 S-xx  =  -0.1223E-01 S-yy  =   0.4688E-02 S-xy  =  -0.5360E-02 S-zz  =  -0.2187E-02
 S-max =   0.6244E-02 S-min =  -0.1378E-01 Angle =   -73.82    
 S-eff =   0.1742E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    25    X-Coord=   3.991     Y-Coord=   3.036    
 S-xx  =   0.1505E-01 S-yy  =   0.1345     S-xy  =   0.9022E-01 S-zz  =   0.4336E-01
 S-max =   0.1829     S-min =  -0.3343E-01 Angle =    61.75    
 S-eff =   0.1900     Eps.  =    0.000     dgama =    0.000    

 Node number    26    X-Coord=   2.994     Y-Coord=   4.037    
 S-xx  =  -0.7199E-01 S-yy  =   0.2420     S-xy  =   0.1332     S-zz  =   0.4924E-01
 S-max =   0.2909     S-min =  -0.1209     Angle =    69.85    
 S-eff =   0.3584     Eps.  =  -0.3428E-05 dgama =  -0.3428E-05

 Node number    27    X-Coord=   4.988     Y-Coord=   1.034    
 S-xx  =   0.1464E-01 S-yy  =  -0.1236E-02 S-xy  =   0.1790E-01 S-zz  =   0.3887E-02
 S-max =   0.2628E-01 S-min =  -0.1288E-01 Angle =    33.04    
 S-eff =   0.3403E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    28    X-Coord=  0.9983     Y-Coord=   5.040    
 S-xx  =  -0.2243     S-yy  =   0.2451     S-xy  =   0.5510E-01 S-zz  =   0.5998E-02
 S-max =   0.2515     S-min =  -0.2307     Angle =    83.39    
 S-eff =   0.4176     Eps.  =   0.7978E-04 dgama =   0.7978E-04

 Node number    29    X-Coord=   4.989     Y-Coord=   2.034    
 S-xx  =   0.1965E-01 S-yy  =   0.3826E-01 S-xy  =   0.1987E-01 S-zz  =   0.1679E-01
 S-max =   0.5090E-01 S-min =   0.7007E-02 Angle =    57.54    
 S-eff =   0.3991E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    30    X-Coord=   1.997     Y-Coord=   5.039    
 S-xx  =  -0.1474     S-yy  =   0.2418     S-xy  =   0.8081E-01 S-zz  =   0.2729E-01
 S-max =   0.2579     S-min =  -0.1635     Angle =    78.72    
 S-eff =   0.3655     Eps.  =  -0.2791E-04 dgama =  -0.2791E-04

 Node number    31    X-Coord=   3.993     Y-Coord=   4.037    
 S-xx  =  -0.1827E-01 S-yy  =   0.2194     S-xy  =   0.8187E-01 S-zz  =   0.5834E-01
 S-max =   0.2449     S-min =  -0.4374E-01 Angle =    72.72    
 S-eff =   0.2535     Eps.  =    0.000     dgama =    0.000    

 Node number    32    X-Coord=   4.991     Y-Coord=   3.034    
 S-xx  =   0.1157E-01 S-yy  =   0.1143     S-xy  =   0.3990E-01 S-zz  =   0.3649E-01
 S-max =   0.1279     S-min =  -0.2110E-02 Angle =    71.08    
 S-eff =   0.1157     Eps.  =    0.000     dgama =    0.000    

 Node number    33    X-Coord=   2.996     Y-Coord=   5.039    
 S-xx  =  -0.8357E-01 S-yy  =   0.2564     S-xy  =   0.7487E-01 S-zz  =   0.5012E-01
 S-max =   0.2722     S-min =  -0.9933E-01 Angle =    78.12    
 S-eff =   0.3238     Eps.  =    0.000     dgama =    0.000    

 Node number    34    X-Coord=   0.000     Y-Coord=   6.041    
 S-xx  =  -0.1370     S-yy  =   0.1777     S-xy  =  -0.1872E-01 S-zz  =   0.1180E-01
 S-max =   0.1788     S-min =  -0.1381     Angle =   -86.61    
 S-eff =   0.2746     Eps.  =    0.000     dgama =    0.000    

 Node number    35    X-Coord=  0.9991     Y-Coord=   6.041    
 S-xx  =  -0.1263     S-yy  =   0.1973     S-xy  =   0.1376E-01 S-zz  =   0.2058E-01
 S-max =   0.1979     S-min =  -0.1269     Angle =    87.57    
 S-eff =   0.2817     Eps.  =    0.000     dgama =    0.000    

 Node number    36    X-Coord=   1.998     Y-Coord=   6.040    
 S-xx  =  -0.9602E-01 S-yy  =   0.2307     S-xy  =   0.2172E-01 S-zz  =   0.3907E-01
 S-max =   0.2322     S-min =  -0.9745E-01 Angle =    86.21    
 S-eff =   0.2869     Eps.  =    0.000     dgama =    0.000    

 Node number    37    X-Coord=   4.993     Y-Coord=   4.035    
 S-xx  =  -0.7905E-02 S-yy  =   0.2186     S-xy  =   0.3670E-01 S-zz  =   0.6109E-01
 S-max =   0.2243     S-min =  -0.1370E-01 Angle =    81.02    
 S-eff =   0.2109     Eps.  =    0.000     dgama =    0.000    

 Node number    38    X-Coord=   3.995     Y-Coord=   5.038    
 S-xx  =  -0.2756E-01 S-yy  =   0.2733     S-xy  =   0.4858E-01 S-zz  =   0.7125E-01
 S-max =   0.2809     S-min =  -0.3521E-01 Angle =    81.05    
 S-eff =   0.2786     Eps.  =    0.000     dgama =    0.000    

 Node number    39    X-Coord=   2.997     Y-Coord=   6.040    
 S-xx  =  -0.5503E-01 S-yy  =   0.2576     S-xy  =   0.2482E-01 S-zz  =   0.5876E-01
 S-max =   0.2596     S-min =  -0.5698E-01 Angle =    85.49    
 S-eff =   0.2774     Eps.  =    0.000     dgama =    0.000    

 Node number    40    X-Coord=   0.000     Y-Coord=   7.042    
 S-xx  =  -0.5549E-01 S-yy  =   0.1843     S-xy  =  -0.1246E-01 S-zz  =   0.3735E-01
 S-max =   0.1849     S-min =  -0.5613E-01 Angle =   -87.03    
 S-eff =   0.2105     Eps.  =    0.000     dgama =    0.000    

 Node number    41    X-Coord=  0.9994     Y-Coord=   7.042    
 S-xx  =  -0.5385E-01 S-yy  =   0.1955     S-xy  =  -0.5373E-02 S-zz  =   0.4108E-01
 S-max =   0.1956     S-min =  -0.5396E-01 Angle =   -88.77    
 S-eff =   0.2182     Eps.  =    0.000     dgama =    0.000    

 Node number    42    X-Coord=   4.995     Y-Coord=   5.036    
 S-xx  =  -0.2002E-01 S-yy  =   0.2999     S-xy  =   0.2401E-01 S-zz  =   0.8118E-01
 S-max =   0.3017     S-min =  -0.2181E-01 Angle =    85.73    
 S-eff =   0.2863     Eps.  =    0.000     dgama =    0.000    

 Node number    43    X-Coord=   3.997     Y-Coord=   6.039    
 S-xx  =  -0.1907E-01 S-yy  =   0.2975     S-xy  =   0.1716E-01 S-zz  =   0.8076E-01
 S-max =   0.2985     S-min =  -0.2000E-01 Angle =    86.91    
 S-eff =   0.2819     Eps.  =    0.000     dgama =    0.000    

 Node number    44    X-Coord=   1.999     Y-Coord=   7.042    
 S-xx  =  -0.4472E-01 S-yy  =   0.2228     S-xy  =  -0.5405E-02 S-zz  =   0.5163E-01
 S-max =   0.2229     S-min =  -0.4483E-01 Angle =   -88.84    
 S-eff =   0.2348     Eps.  =    0.000     dgama =    0.000    

 Node number    45    X-Coord=   2.998     Y-Coord=   7.041    
 S-xx  =  -0.2687E-01 S-yy  =   0.2574     S-xy  =  -0.4333E-02 S-zz  =   0.6687E-01
 S-max =   0.2575     S-min =  -0.2694E-01 Angle =   -89.13    
 S-eff =   0.2510     Eps.  =    0.000     dgama =    0.000    

 Node number    46    X-Coord=   4.996     Y-Coord=   6.038    
 S-xx  =  -0.2113E-01 S-yy  =   0.3410     S-xy  =   0.8464E-02 S-zz  =   0.9276E-01
 S-max =   0.3412     S-min =  -0.2132E-01 Angle =    88.66    
 S-eff =   0.3211     Eps.  =    0.000     dgama =    0.000    

 Node number    47    X-Coord=   0.000     Y-Coord=   8.043    
 S-xx  =  -0.1596E-01 S-yy  =   0.1952     S-xy  =  -0.9594E-02 S-zz  =   0.5198E-01
 S-max =   0.1956     S-min =  -0.1640E-01 Angle =   -87.40    
 S-eff =   0.1875     Eps.  =    0.000     dgama =    0.000    

 Node number    48    X-Coord=  0.9996     Y-Coord=   8.043    
 S-xx  =  -0.1521E-01 S-yy  =   0.2030     S-xy  =  -0.9327E-02 S-zz  =   0.5447E-01
 S-max =   0.2034     S-min =  -0.1561E-01 Angle =   -87.56    
 S-eff =   0.1938     Eps.  =    0.000     dgama =    0.000    

 Node number    49    X-Coord=   3.998     Y-Coord=   7.040    
 S-xx  =  -0.8529E-02 S-yy  =   0.3034     S-xy  =  -0.3054E-02 S-zz  =   0.8550E-01
 S-max =   0.3034     S-min =  -0.8559E-02 Angle =   -89.44    
 S-eff =   0.2772     Eps.  =    0.000     dgama =    0.000    

 Node number    50    X-Coord=   1.999     Y-Coord=   8.043    
 S-xx  =  -0.1258E-01 S-yy  =   0.2246     S-xy  =  -0.1568E-01 S-zz  =   0.6149E-01
 S-max =   0.2256     S-min =  -0.1361E-01 Angle =   -86.23    
 S-eff =   0.2119     Eps.  =    0.000     dgama =    0.000    

 Node number    51    X-Coord=   2.999     Y-Coord=   8.042    
 S-xx  =  -0.7505E-02 S-yy  =   0.2567     S-xy  =  -0.1718E-01 S-zz  =   0.7227E-01
 S-max =   0.2578     S-min =  -0.8618E-02 Angle =   -86.30    
 S-eff =   0.2366     Eps.  =    0.000     dgama =    0.000    

 Node number    52    X-Coord=   4.997     Y-Coord=   7.040    
 S-xx  =  -0.1604E-01 S-yy  =   0.3461     S-xy  =  -0.1145E-02 S-zz  =   0.9573E-01
 S-max =   0.3461     S-min =  -0.1604E-01 Angle =   -89.82    
 S-eff =   0.3212     Eps.  =    0.000     dgama =    0.000    

 Node number    53    X-Coord=   3.998     Y-Coord=   8.042    
 S-xx  =  -0.2125E-02 S-yy  =   0.2986     S-xy  =  -0.1217E-01 S-zz  =   0.8598E-01
 S-max =   0.2991     S-min =  -0.2617E-02 Angle =   -87.69    
 S-eff =   0.2686     Eps.  =    0.000     dgama =    0.000    

 Node number    54    X-Coord=   0.000     Y-Coord=   9.044    
 S-xx  =   0.4221E-02 S-yy  =   0.2071     S-xy  =  -0.7081E-02 S-zz  =   0.6127E-01
 S-max =   0.2073     S-min =   0.3974E-02 Angle =   -88.00    
 S-eff =   0.1816     Eps.  =    0.000     dgama =    0.000    

 Node number    55    X-Coord=  0.9996     Y-Coord=   9.044    
 S-xx  =   0.3886E-02 S-yy  =   0.2131     S-xy  =  -0.1024E-01 S-zz  =   0.6292E-01
 S-max =   0.2136     S-min =   0.3386E-02 Angle =   -87.20    
 S-eff =   0.1877     Eps.  =    0.000     dgama =    0.000    

 Node number    56    X-Coord=   1.999     Y-Coord=   9.044    
 S-xx  =   0.3183E-02 S-yy  =   0.2303     S-xy  =  -0.1771E-01 S-zz  =   0.6770E-01
 S-max =   0.2316     S-min =   0.1809E-02 Angle =   -85.57    
 S-eff =   0.2050     Eps.  =    0.000     dgama =    0.000    

 Node number    57    X-Coord=   4.998     Y-Coord=   8.041    
 S-xx  =  -0.1038E-01 S-yy  =   0.3326     S-xy  =  -0.5805E-02 S-zz  =   0.9345E-01
 S-max =   0.3327     S-min =  -0.1048E-01 Angle =   -89.03    
 S-eff =   0.3048     Eps.  =    0.000     dgama =    0.000    

 Node number    58    X-Coord=   2.999     Y-Coord=   9.043    
 S-xx  =   0.2307E-02 S-yy  =   0.2565     S-xy  =  -0.2006E-01 S-zz  =   0.7505E-01
 S-max =   0.2581     S-min =   0.7336E-03 Angle =   -85.51    
 S-eff =   0.2294     Eps.  =    0.000     dgama =    0.000    

 Node number    59    X-Coord=   3.998     Y-Coord=   9.043    
 S-xx  =   0.1079E-02 S-yy  =   0.2891     S-xy  =  -0.1415E-01 S-zz  =   0.8415E-01
 S-max =   0.2898     S-min =   0.3855E-03 Angle =   -87.19    
 S-eff =   0.2579     Eps.  =    0.000     dgama =    0.000    

 Node number    60    X-Coord=   0.000     Y-Coord=   10.04    
 S-xx  =   0.1276E-01 S-yy  =   0.2183     S-xy  =  -0.5106E-02 S-zz  =   0.6700E-01
 S-max =   0.2184     S-min =   0.1263E-01 Angle =   -88.58    
 S-eff =   0.1847     Eps.  =    0.000     dgama =    0.000    

 Node number    61    X-Coord=  0.9997     Y-Coord=   10.04    
 S-xx  =   0.1190E-01 S-yy  =   0.2229     S-xy  =  -0.9307E-02 S-zz  =   0.6810E-01
 S-max =   0.2233     S-min =   0.1149E-01 Angle =   -87.48    
 S-eff =   0.1900     Eps.  =    0.000     dgama =    0.000    

 Node number    62    X-Coord=   1.999     Y-Coord=   10.04    
 S-xx  =   0.9466E-02 S-yy  =   0.2362     S-xy  =  -0.1617E-01 S-zz  =   0.7124E-01
 S-max =   0.2373     S-min =   0.8319E-02 Angle =   -85.94    
 S-eff =   0.2049     Eps.  =    0.000     dgama =    0.000    

 Node number    63    X-Coord=   4.998     Y-Coord=   9.043    
 S-xx  =  -0.5916E-02 S-yy  =   0.3128     S-xy  =  -0.6837E-02 S-zz  =   0.8901E-01
 S-max =   0.3130     S-min =  -0.6063E-02 Angle =   -88.77    
 S-eff =   0.2837     Eps.  =    0.000     dgama =    0.000    

 Node number    64    X-Coord=   2.999     Y-Coord=   10.04    
 S-xx  =   0.5925E-02 S-yy  =   0.2560     S-xy  =  -0.1812E-01 S-zz  =   0.7597E-01
 S-max =   0.2573     S-min =   0.4620E-02 Angle =   -85.88    
 S-eff =   0.2257     Eps.  =    0.000     dgama =    0.000    

 Node number    65    X-Coord=   3.998     Y-Coord=   10.04    
 S-xx  =   0.2177E-02 S-yy  =   0.2790     S-xy  =  -0.1260E-01 S-zz  =   0.8154E-01
 S-max =   0.2796     S-min =   0.1605E-02 Angle =   -87.40    
 S-eff =   0.2479     Eps.  =    0.000     dgama =    0.000    

 Node number    66    X-Coord=   0.000     Y-Coord=   11.05    
 S-xx  =   0.1496E-01 S-yy  =   0.2278     S-xy  =  -0.3504E-02 S-zz  =   0.7041E-01
 S-max =   0.2279     S-min =   0.1490E-01 Angle =   -89.06    
 S-eff =   0.1914     Eps.  =    0.000     dgama =    0.000    

 Node number    67    X-Coord=  0.9997     Y-Coord=   11.05    
 S-xx  =   0.1387E-01 S-yy  =   0.2313     S-xy  =  -0.7550E-02 S-zz  =   0.7110E-01
 S-max =   0.2316     S-min =   0.1361E-01 Angle =   -88.01    
 S-eff =   0.1957     Eps.  =    0.000     dgama =    0.000    

 Node number    68    X-Coord=   4.998     Y-Coord=   10.04    
 S-xx  =  -0.2941E-02 S-yy  =   0.2940     S-xy  =  -0.6090E-02 S-zz  =   0.8441E-01
 S-max =   0.2942     S-min =  -0.3065E-02 Angle =   -88.83    
 S-eff =   0.2646     Eps.  =    0.000     dgama =    0.000    

 Node number    69    X-Coord=   1.999     Y-Coord=   11.05    
 S-xx  =   0.1082E-01 S-yy  =   0.2411     S-xy  =  -0.1301E-01 S-zz  =   0.7305E-01
 S-max =   0.2418     S-min =   0.1009E-01 Angle =   -86.78    
 S-eff =   0.2075     Eps.  =    0.000     dgama =    0.000    

 Node number    70    X-Coord=   2.999     Y-Coord=   11.05    
 S-xx  =   0.6503E-02 S-yy  =   0.2552     S-xy  =  -0.1437E-01 S-zz  =   0.7590E-01
 S-max =   0.2560     S-min =   0.5676E-02 Angle =   -86.70    
 S-eff =   0.2237     Eps.  =    0.000     dgama =    0.000    

 Node number    71    X-Coord=   3.998     Y-Coord=   11.05    
 S-xx  =   0.2229E-02 S-yy  =   0.2702     S-xy  =  -0.9813E-02 S-zz  =   0.7901E-01
 S-max =   0.2706     S-min =   0.1871E-02 Angle =   -87.91    
 S-eff =   0.2396     Eps.  =    0.000     dgama =    0.000    

 Node number    72    X-Coord=   0.000     Y-Coord=   12.05    
 S-xx  =   0.1418E-01 S-yy  =   0.2352     S-xy  =  -0.2269E-02 S-zz  =   0.7231E-01
 S-max =   0.2352     S-min =   0.1415E-01 Angle =   -89.41    
 S-eff =   0.1985     Eps.  =    0.000     dgama =    0.000    

 Node number    73    X-Coord=  0.9996     Y-Coord=   12.05    
 S-xx  =   0.1308E-01 S-yy  =   0.2377     S-xy  =  -0.5529E-02 S-zz  =   0.7273E-01
 S-max =   0.2378     S-min =   0.1294E-01 Angle =   -88.59    
 S-eff =   0.2018     Eps.  =    0.000     dgama =    0.000    

 Node number    74    X-Coord=   4.998     Y-Coord=   11.05    
 S-xx  =  -0.1164E-02 S-yy  =   0.2789     S-xy  =  -0.4735E-02 S-zz  =   0.8054E-01
 S-max =   0.2790     S-min =  -0.1244E-02 Angle =   -89.03    
 S-eff =   0.2496     Eps.  =    0.000     dgama =    0.000    

 Node number    75    X-Coord=   1.999     Y-Coord=   12.05    
 S-xx  =   0.1004E-01 S-yy  =   0.2447     S-xy  =  -0.9448E-02 S-zz  =   0.7386E-01
 S-max =   0.2450     S-min =   0.9659E-02 Angle =   -87.70    
 S-eff =   0.2107     Eps.  =    0.000     dgama =    0.000    

 Node number    76    X-Coord=   2.999     Y-Coord=   12.05    
 S-xx  =   0.5861E-02 S-yy  =   0.2543     S-xy  =  -0.1028E-01 S-zz  =   0.7543E-01
 S-max =   0.2547     S-min =   0.5437E-02 Angle =   -87.63    
 S-eff =   0.2227     Eps.  =    0.000     dgama =    0.000    

 Node number    77    X-Coord=   3.998     Y-Coord=   12.05    
 S-xx  =   0.1931E-02 S-yy  =   0.2635     S-xy  =  -0.6915E-02 S-zz  =   0.7697E-01
 S-max =   0.2637     S-min =   0.1748E-02 Angle =   -88.49    
 S-eff =   0.2336     Eps.  =    0.000     dgama =    0.000    

 Node number    78    X-Coord=   0.000     Y-Coord=   13.05    
 S-xx  =   0.1250E-01 S-yy  =   0.2403     S-xy  =  -0.1333E-02 S-zz  =   0.7331E-01
 S-max =   0.2403     S-min =   0.1249E-01 Angle =   -89.66    
 S-eff =   0.2043     Eps.  =    0.000     dgama =    0.000    

 Node number    79    X-Coord=   4.998     Y-Coord=   12.05    
 S-xx  =  -0.1752E-03 S-yy  =   0.2680     S-xy  =  -0.3322E-02 S-zz  =   0.7766E-01
 S-max =   0.2680     S-min =  -0.2164E-03 Angle =   -89.29    
 S-eff =   0.2390     Eps.  =    0.000     dgama =    0.000    

 Node number    80    X-Coord=  0.9996     Y-Coord=   13.05    
 S-xx  =   0.1148E-01 S-yy  =   0.2421     S-xy  =  -0.3555E-02 S-zz  =   0.7354E-01
 S-max =   0.2422     S-min =   0.1143E-01 Angle =   -89.12    
 S-eff =   0.2068     Eps.  =    0.000     dgama =    0.000    

 Node number    81    X-Coord=   1.999     Y-Coord=   13.05    
 S-xx  =   0.8699E-02 S-yy  =   0.2470     S-xy  =  -0.6032E-02 S-zz  =   0.7416E-01
 S-max =   0.2472     S-min =   0.8547E-02 Angle =   -88.55    
 S-eff =   0.2135     Eps.  =    0.000     dgama =    0.000    

 Node number    82    X-Coord=   2.999     Y-Coord=   13.05    
 S-xx  =   0.4969E-02 S-yy  =   0.2534     S-xy  =  -0.6487E-02 S-zz  =   0.7494E-01
 S-max =   0.2536     S-min =   0.4800E-02 Angle =   -88.51    
 S-eff =   0.2222     Eps.  =    0.000     dgama =    0.000    

 Node number    83    X-Coord=   3.998     Y-Coord=   13.05    
 S-xx  =   0.1590E-02 S-yy  =   0.2589     S-xy  =  -0.4314E-02 S-zz  =   0.7553E-01
 S-max =   0.2589     S-min =   0.1518E-02 Angle =   -89.04    
 S-eff =   0.2295     Eps.  =    0.000     dgama =    0.000    

 Node number    84    X-Coord=   4.998     Y-Coord=   13.05    
 S-xx  =   0.3343E-03 S-yy  =   0.2608     S-xy  =  -0.2066E-02 S-zz  =   0.7573E-01
 S-max =   0.2608     S-min =   0.3179E-03 Angle =   -89.55    
 S-eff =   0.2322     Eps.  =    0.000     dgama =    0.000    

 Node number    85    X-Coord=   0.000     Y-Coord=   14.05    
 S-xx  =   0.1112E-01 S-yy  =   0.2432     S-xy  =  -0.6115E-03 S-zz  =   0.7376E-01
 S-max =   0.2432     S-min =   0.1111E-01 Angle =   -89.85    
 S-eff =   0.2080     Eps.  =    0.000     dgama =    0.000    

 Node number    86    X-Coord=  0.9996     Y-Coord=   14.05    
 S-xx  =   0.1018E-01 S-yy  =   0.2446     S-xy  =  -0.1725E-02 S-zz  =   0.7390E-01
 S-max =   0.2446     S-min =   0.1016E-01 Angle =   -89.58    
 S-eff =   0.2100     Eps.  =    0.000     dgama =    0.000    

 Node number    87    X-Coord=   1.999     Y-Coord=   14.05    
 S-xx  =   0.7639E-02 S-yy  =   0.2483     S-xy  =  -0.2914E-02 S-zz  =   0.7423E-01
 S-max =   0.2484     S-min =   0.7604E-02 Angle =   -89.31    
 S-eff =   0.2153     Eps.  =    0.000     dgama =    0.000    

 Node number    88    X-Coord=   2.999     Y-Coord=   14.05    
 S-xx  =   0.4298E-02 S-yy  =   0.2529     S-xy  =  -0.3111E-02 S-zz  =   0.7458E-01
 S-max =   0.2529     S-min =   0.4259E-02 Angle =   -89.28    
 S-eff =   0.2220     Eps.  =    0.000     dgama =    0.000    

 Node number    89    X-Coord=   3.998     Y-Coord=   14.05    
 S-xx  =   0.1347E-02 S-yy  =   0.2562     S-xy  =  -0.2054E-02 S-zz  =   0.7469E-01
 S-max =   0.2562     S-min =   0.1331E-02 Angle =   -89.54    
 S-eff =   0.2273     Eps.  =    0.000     dgama =    0.000    

 Node number    90    X-Coord=   4.998     Y-Coord=   14.05    
 S-xx  =   0.5673E-03 S-yy  =   0.2568     S-xy  =  -0.9816E-03 S-zz  =   0.7464E-01
 S-max =   0.2568     S-min =   0.5636E-03 Angle =   -89.78    
 S-eff =   0.2284     Eps.  =    0.000     dgama =    0.000    

 Node number    91    X-Coord=   0.000     Y-Coord=   15.05    
 S-xx  =   0.1060E-01 S-yy  =   0.2442     S-xy  =   0.1143E-12 S-zz  =   0.7389E-01
 S-max =   0.2442     S-min =   0.1060E-01 Angle =    90.00    
 S-eff =   0.2093     Eps.  =    0.000     dgama =    0.000    

 Node number    92    X-Coord=  0.9996     Y-Coord=   15.05    
 S-xx  =   0.9690E-02 S-yy  =   0.2455     S-xy  =  -0.3170E-03 S-zz  =   0.7399E-01
 S-max =   0.2455     S-min =   0.9689E-02 Angle =   -89.92    
 S-eff =   0.2111     Eps.  =    0.000     dgama =    0.000    

 Node number    93    X-Coord=   1.999     Y-Coord=   15.05    
 S-xx  =   0.7248E-02 S-yy  =   0.2487     S-xy  =  -0.5699E-03 S-zz  =   0.7424E-01
 S-max =   0.2487     S-min =   0.7247E-02 Angle =   -89.86    
 S-eff =   0.2159     Eps.  =    0.000     dgama =    0.000    

 Node number    94    X-Coord=   2.999     Y-Coord=   15.05    
 S-xx  =   0.4054E-02 S-yy  =   0.2527     S-xy  =  -0.7032E-03 S-zz  =   0.7446E-01
 S-max =   0.2527     S-min =   0.4052E-02 Angle =   -89.84    
 S-eff =   0.2220     Eps.  =    0.000     dgama =    0.000    

 Node number    95    X-Coord=   3.998     Y-Coord=   15.05    
 S-xx  =   0.1261E-02 S-yy  =   0.2553     S-xy  =  -0.6848E-03 S-zz  =   0.7442E-01
 S-max =   0.2553     S-min =   0.1259E-02 Angle =   -89.85    
 S-eff =   0.2265     Eps.  =    0.000     dgama =    0.000    

 Node number    96    X-Coord=   4.998     Y-Coord=   15.05    
 S-xx  =   0.6333E-03 S-yy  =   0.2556     S-xy  =  -0.5331E-03 S-zz  =   0.7429E-01
 S-max =   0.2556     S-min =   0.6322E-03 Angle =   -89.88    
 S-eff =   0.2272     Eps.  =    0.000     dgama =    0.000    




 INCREMENT NUMBER    3
 =====================


 Total load factor ............... =    0.100000    
 Incremental load factor ......... =    0.500000E-01
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    10

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   1
 Output to re-start file............ =   0




 INCREMENT NUMBER    3                   TOTAL LOAD FACTOR =   0.100000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      18.6599                     0.775982E-01
        2                      4.82984                     0.276268E-01
        3                     0.537681                     0.444518E-02
        4                     0.313890E-02                 0.268297E-04
        5                     0.969526E-07                 0.862039E-09
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.500000E-01
 --------------------------------------------------------------------------


 Results for load increment   3 Load factor =   0.100000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1      0.00000        0.00000    
    2    -0.814706E-02    0.00000    
    3      0.00000       0.683683E-02
    4    -0.299754E-01   0.403817E-01
    5      0.00000       0.480473E-01
    6    -0.375631E-01   0.894526E-01
    7    -0.339147E-01   0.868321E-01
    8    -0.211458E-01   0.583763E-01
    9    -0.290648E-01   0.860804E-01
   10    -0.372176E-01   0.839362E-01
   11      0.00000       0.699818E-01
   12    -0.328105E-01   0.845052E-01
   13    -0.134585E-01   0.756966E-01
   14    -0.279185E-01   0.844808E-01
   15    -0.201552E-01   0.864646E-01
   16      0.00000       0.834059E-01
   17    -0.372943E-01   0.802209E-01
   18    -0.794096E-02   0.858191E-01
   19    -0.327637E-01   0.801346E-01
   20    -0.209304E-01   0.851016E-01
   21    -0.274264E-01   0.804340E-01
   22    -0.122428E-01   0.883697E-01
   23      0.00000       0.904112E-01
   24    -0.374014E-01   0.754674E-01
   25    -0.212122E-01   0.809334E-01
   26    -0.138258E-01   0.861358E-01
   27    -0.326485E-01   0.754614E-01
   28    -0.394374E-02   0.907528E-01
   29    -0.274477E-01   0.753097E-01
   30    -0.645424E-02   0.900022E-01
   31    -0.147266E-01   0.821176E-01
   32    -0.215201E-01   0.758100E-01
   33    -0.793976E-02   0.874847E-01
   34      0.00000       0.930226E-01
   35    -0.184965E-02   0.925197E-01
   36    -0.315946E-02   0.910501E-01
   37    -0.154925E-01   0.771706E-01
   38    -0.909639E-02   0.838494E-01
   39    -0.414614E-02   0.888347E-01
   40      0.00000       0.938142E-01
   41    -0.689927E-03   0.933230E-01
   42    -0.103456E-01   0.795057E-01
   43    -0.503301E-02   0.860137E-01
   44    -0.141364E-02   0.920263E-01
   45    -0.210713E-02   0.901681E-01
   46    -0.671149E-02   0.829703E-01
   47      0.00000       0.942781E-01
   48    -0.287427E-03   0.939217E-01
   49    -0.291620E-02   0.882194E-01
   50    -0.643368E-03   0.929212E-01
   51    -0.115986E-02   0.915373E-01
   52    -0.410321E-02   0.863890E-01
   53    -0.184704E-02   0.901245E-01
   54      0.00000       0.947841E-01
   55    -0.147232E-03   0.945219E-01
   56    -0.386939E-03   0.938078E-01
   57    -0.269690E-02   0.890219E-01
   58    -0.778245E-03   0.928297E-01
   59    -0.134953E-02   0.918511E-01
   60      0.00000       0.953993E-01
   61    -0.137581E-03   0.952191E-01
   62    -0.352992E-03   0.947271E-01
   63    -0.209859E-02   0.912011E-01
   64    -0.704874E-03   0.940611E-01
   65    -0.121776E-02   0.934287E-01
   66      0.00000       0.961446E-01
   67    -0.178767E-03   0.960242E-01
   68    -0.187276E-02   0.930944E-01
   69    -0.421623E-03   0.956980E-01
   70    -0.776321E-03   0.952662E-01
   71    -0.126083E-02   0.948822E-01
   72      0.00000       0.970042E-01
   73    -0.234629E-03   0.969277E-01
   74    -0.184903E-02   0.947367E-01
   75    -0.520236E-03   0.967224E-01
   76    -0.893862E-03   0.964579E-01
   77    -0.136567E-02   0.962399E-01
   78      0.00000       0.979529E-01
   79    -0.190725E-02   0.961926E-01
   80    -0.284429E-03   0.979085E-01
   81    -0.609358E-03   0.977904E-01
   82    -0.100279E-02   0.976423E-01
   83    -0.146910E-02   0.975290E-01
   84    -0.198132E-02   0.975234E-01
   85      0.00000       0.989615E-01
   86    -0.317487E-03   0.989413E-01
   87    -0.668689E-03   0.988879E-01
   88    -0.107583E-02   0.988222E-01
   89    -0.154010E-02   0.987748E-01
   90    -0.203627E-02   0.987791E-01
   91      0.00000       0.100000    
   92    -0.328955E-03   0.100000    
   93    -0.689280E-03   0.100000    
   94    -0.110125E-02   0.100000    
   95    -0.156500E-02   0.100000    
   96    -0.205611E-02   0.100000    


 Reactions
 =========

 Node      X-Force          Y-Force
    1    -0.253103        -0.471651    
    2      0.00000        -0.845707    
    3    -0.406098          0.00000    
    5    -0.175300          0.00000    
   11     0.761326E-02      0.00000    
   16     0.175684          0.00000    
   23     0.331218          0.00000    
   34     0.347273          0.00000    
   40     0.167196          0.00000    
   47     0.328591E-01      0.00000    
   54    -0.208374E-01      0.00000    
   60    -0.409867E-01      0.00000    
   66    -0.442136E-01      0.00000    
   72    -0.405420E-01      0.00000    
   78    -0.351348E-01      0.00000    
   85    -0.309329E-01      0.00000    
   91    -0.146937E-01     0.124414    
   92      0.00000         0.251908    
   93      0.00000         0.259882    
   94      0.00000         0.269177    
   95      0.00000         0.274653    
   96      0.00000         0.137324    
       ---------------  ---------------
 Totals  -0.412453E-11     0.598468E-11


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    X-Coord=   0.000     Y-Coord=   0.000    
 S-xx  =   0.4353     S-yy  =   0.9829     S-xy  =   0.1344E-01 S-zz  =   0.6772    
 S-max =   0.9833     S-min =   0.4350     Angle =    88.60    
 S-eff =   0.4759     Eps.  =   0.5130E-02 dgama =   0.4542E-02

 Node number     2    X-Coord=  0.9919     Y-Coord=   0.000    
 S-xx  =   0.3361     S-yy  =   0.7736     S-xy  =   0.3338E-01 S-zz  =   0.5528    
 S-max =   0.7762     S-min =   0.3336     Angle =    85.66    
 S-eff =   0.3833     Eps.  =   0.3988E-01 dgama =   0.2448E-01

 Node number     3    X-Coord=   0.000     Y-Coord=   1.007    
 S-xx  =   0.3890     S-yy  =   0.8326     S-xy  =   0.1477     S-zz  =   0.6078    
 S-max =   0.8772     S-min =   0.3443     Angle =    73.17    
 S-eff =   0.4615     Eps.  =   0.3432E-01 dgama =   0.2077E-01

 Node number     4    X-Coord=  0.9700     Y-Coord=   1.040    
 S-xx  =   0.3094     S-yy  =   0.7034     S-xy  =   0.1534     S-zz  =   0.5023    
 S-max =   0.7561     S-min =   0.2567     Angle =    71.04    
 S-eff =   0.4325     Eps.  =   0.3223E-01 dgama =   0.2022E-01

 Node number     5    X-Coord=   0.000     Y-Coord=   2.048    
 S-xx  =   0.1656     S-yy  =   0.6786     S-xy  =   0.4941E-01 S-zz  =   0.4174    
 S-max =   0.6833     S-min =   0.1609     Angle =    84.55    
 S-eff =   0.4524     Eps.  =   0.2874E-01 dgama =   0.1737E-01

 Node number     6    X-Coord=   1.962     Y-Coord=  0.8945E-01
 S-xx  =   0.2504     S-yy  =   0.1054     S-xy  =   0.4841E-01 S-zz  =   0.1887    
 S-max =   0.2651     S-min =   0.9071E-01 Angle =    16.87    
 S-eff =   0.1514     Eps.  =   0.2684E-01 dgama =   0.1706E-01

 Node number     7    X-Coord=   1.966     Y-Coord=   1.087    
 S-xx  =   0.3258     S-yy  =   0.1204     S-xy  =   0.2133     S-zz  =   0.2108    
 S-max =   0.4599     S-min =  -0.1365E-01 Angle =    32.15    
 S-eff =   0.4103     Eps.  =   0.1298E-01 dgama =   0.9218E-02

 Node number     8    X-Coord=  0.9789     Y-Coord=   2.058    
 S-xx  =   0.1729     S-yy  =   0.5545     S-xy  =   0.1660     S-zz  =   0.3587    
 S-max =   0.6166     S-min =   0.1108     Angle =    69.49    
 S-eff =   0.4380     Eps.  =   0.2297E-01 dgama =   0.1506E-01

 Node number     9    X-Coord=   1.971     Y-Coord=   2.086    
 S-xx  =   0.2323     S-yy  =   0.2040     S-xy  =   0.2489     S-zz  =   0.1969    
 S-max =   0.4675     S-min =  -0.3117E-01 Angle =    43.38    
 S-eff =   0.4323     Eps.  =   0.9844E-02 dgama =   0.7283E-02

 Node number    10    X-Coord=   2.963     Y-Coord=  0.8394E-01
 S-xx  =  -0.3891E-01 S-yy  =   0.3097E-01 S-xy  =  -0.1660E-01 S-zz  =  -0.2303E-02
 S-max =   0.3471E-01 S-min =  -0.4265E-01 Angle =   -77.29    
 S-eff =   0.6702E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    11    X-Coord=   0.000     Y-Coord=   3.070    
 S-xx  =  -0.1631E-01 S-yy  =   0.4944     S-xy  =   0.5252E-01 S-zz  =   0.2323    
 S-max =   0.4997     S-min =  -0.2166E-01 Angle =    84.19    
 S-eff =   0.4516     Eps.  =   0.1629E-01 dgama =   0.1062E-01

 Node number    12    X-Coord=   2.967     Y-Coord=   1.085    
 S-xx  =   0.7903E-01 S-yy  =   0.2919E-01 S-xy  =   0.1050     S-zz  =   0.3121E-01
 S-max =   0.1620     S-min =  -0.5381E-01 Angle =    38.33    
 S-eff =   0.1883     Eps.  =  -0.6423E-05 dgama =  -0.6423E-05

 Node number    13    X-Coord=  0.9865     Y-Coord=   3.076    
 S-xx  =  -0.2239E-01 S-yy  =   0.4067     S-xy  =   0.1467     S-zz  =   0.1869    
 S-max =   0.4520     S-min =  -0.6777E-01 Angle =    72.81    
 S-eff =   0.4502     Eps.  =   0.1428E-01 dgama =   0.9784E-02

 Node number    14    X-Coord=   2.972     Y-Coord=   2.084    
 S-xx  =   0.1573     S-yy  =   0.8332E-01 S-xy  =   0.2035     S-zz  =   0.7522E-01
 S-max =   0.3271     S-min =  -0.8649E-01 Angle =    39.85    
 S-eff =   0.3610     Eps.  =   0.3307E-03 dgama =   0.3479E-03

 Node number    15    X-Coord=   1.980     Y-Coord=   3.086    
 S-xx  =   0.3777E-01 S-yy  =   0.1961     S-xy  =   0.2493     S-zz  =   0.1054    
 S-max =   0.3785     S-min =  -0.1446     Angle =    53.81    
 S-eff =   0.4531     Eps.  =   0.6124E-02 dgama =   0.4955E-02

 Node number    16    X-Coord=   0.000     Y-Coord=   4.083    
 S-xx  =  -0.1816     S-yy  =   0.3362     S-xy  =   0.3903E-01 S-zz  =   0.7309E-01
 S-max =   0.3391     S-min =  -0.1846     Angle =    85.71    
 S-eff =   0.4535     Eps.  =   0.8612E-02 dgama =   0.6264E-02

 Node number    17    X-Coord=   3.963     Y-Coord=  0.8022E-01
 S-xx  =   0.2104E-01 S-yy  =   0.2177E-01 S-xy  =   0.2374E-01 S-zz  =   0.1241E-01
 S-max =   0.4515E-01 S-min =  -0.2342E-02 Angle =    45.43    
 S-eff =   0.4210E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    18    X-Coord=  0.9921     Y-Coord=   4.086    
 S-xx  =  -0.1763     S-yy  =   0.2781     S-xy  =   0.1315     S-zz  =   0.4865E-01
 S-max =   0.3134     S-min =  -0.2116     Angle =    74.97    
 S-eff =   0.4547     Eps.  =   0.6965E-02 dgama =   0.5389E-02

 Node number    19    X-Coord=   3.967     Y-Coord=   1.080    
 S-xx  =   0.3625E-01 S-yy  =   0.4002E-01 S-xy  =   0.3304E-01 S-zz  =   0.2212E-01
 S-max =   0.7123E-01 S-min =   0.5046E-02 Angle =    46.63    
 S-eff =   0.5951E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    20    X-Coord=   2.979     Y-Coord=   3.085    
 S-xx  =   0.2431E-01 S-yy  =   0.1835     S-xy  =   0.2432     S-zz  =   0.6777E-01
 S-max =   0.3598     S-min =  -0.1520     Angle =    54.06    
 S-eff =   0.4448     Eps.  =   0.7453E-03 dgama =   0.7397E-03

 Node number    21    X-Coord=   3.973     Y-Coord=   2.080    
 S-xx  =   0.6528E-01 S-yy  =   0.9058E-01 S-xy  =   0.9544E-01 S-zz  =   0.4520E-01
 S-max =   0.1742     S-min =  -0.1834E-01 Angle =    48.78    
 S-eff =   0.1699     Eps.  =    0.000     dgama =    0.000    

 Node number    22    X-Coord=   1.988     Y-Coord=   4.088    
 S-xx  =  -0.1223     S-yy  =   0.1710     S-xy  =   0.2160     S-zz  =   0.2128E-01
 S-max =   0.2855     S-min =  -0.2368     Angle =    62.09    
 S-eff =   0.4523     Eps.  =   0.2959E-02 dgama =   0.2704E-02

 Node number    23    X-Coord=   0.000     Y-Coord=   5.090    
 S-xx  =  -0.3271     S-yy  =   0.1986     S-xy  =   0.1368E-01 S-zz  =  -0.5027E-01
 S-max =   0.1990     S-min =  -0.3274     Angle =    88.51    
 S-eff =   0.4561     Eps.  =   0.3120E-02 dgama =   0.2756E-02

 Node number    24    X-Coord=   4.963     Y-Coord=  0.7547E-01
 S-xx  =  -0.1195E-01 S-yy  =   0.4257E-02 S-xy  =  -0.1285E-04 S-zz  =  -0.2232E-02
 S-max =   0.4257E-02 S-min =  -0.1195E-01 Angle =   -89.95    
 S-eff =   0.1413E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    25    X-Coord=   3.979     Y-Coord=   3.081    
 S-xx  =   0.2299E-01 S-yy  =   0.2030     S-xy  =   0.1365     S-zz  =   0.6562E-01
 S-max =   0.2765     S-min =  -0.5053E-01 Angle =    61.70    
 S-eff =   0.2872     Eps.  =   0.4378E-05 dgama =   0.4378E-05

 Node number    26    X-Coord=   2.986     Y-Coord=   4.086    
 S-xx  =  -0.8702E-01 S-yy  =   0.2132     S-xy  =   0.2011     S-zz  =   0.3967E-01
 S-max =   0.3140     S-min =  -0.1879     Angle =    63.37    
 S-eff =   0.4353     Eps.  =   0.5951E-03 dgama =   0.5986E-03

 Node number    27    X-Coord=   4.967     Y-Coord=   1.075    
 S-xx  =   0.2775E-01 S-yy  =  -0.3611E-02 S-xy  =   0.2426E-01 S-zz  =   0.7000E-02
 S-max =   0.4096E-01 S-min =  -0.1682E-01 Angle =    28.56    
 S-eff =   0.5030E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    28    X-Coord=  0.9961     Y-Coord=   5.091    
 S-xx  =  -0.3037     S-yy  =   0.1810     S-xy  =   0.1015     S-zz  =  -0.4571E-01
 S-max =   0.2014     S-min =  -0.3241     Angle =    78.64    
 S-eff =   0.4554     Eps.  =   0.2213E-02 dgama =   0.2134E-02

 Node number    29    X-Coord=   4.973     Y-Coord=   2.075    
 S-xx  =   0.3346E-01 S-yy  =   0.6442E-01 S-xy  =   0.3534E-01 S-zz  =   0.2838E-01
 S-max =   0.8752E-01 S-min =   0.1035E-01 Angle =    56.83    
 S-eff =   0.6992E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    30    X-Coord=   1.994     Y-Coord=   5.090    
 S-xx  =  -0.2234     S-yy  =   0.1592     S-xy  =   0.1514     S-zz  =  -0.2244E-01
 S-max =   0.2119     S-min =  -0.2761     Angle =    70.82    
 S-eff =   0.4227     Eps.  =   0.7958E-03 dgama =   0.8237E-03

 Node number    31    X-Coord=   3.985     Y-Coord=   4.082    
 S-xx  =  -0.4655E-01 S-yy  =   0.3226     S-xy  =   0.1297     S-zz  =   0.7973E-01
 S-max =   0.3636     S-min =  -0.8759E-01 Angle =    72.45    
 S-eff =   0.3951     Eps.  =  -0.2157E-04 dgama =  -0.2157E-04

 Node number    32    X-Coord=   4.978     Y-Coord=   3.076    
 S-xx  =   0.9185E-02 S-yy  =   0.2068     S-xy  =   0.6899E-01 S-zz  =   0.6265E-01
 S-max =   0.2285     S-min =  -0.1251E-01 Angle =    72.54    
 S-eff =   0.2136     Eps.  =    0.000     dgama =    0.000    

 Node number    33    X-Coord=   2.992     Y-Coord=   5.087    
 S-xx  =  -0.1398     S-yy  =   0.2557     S-xy  =   0.1235     S-zz  =   0.3365E-01
 S-max =   0.2911     S-min =  -0.1752     Angle =    74.01    
 S-eff =   0.4046     Eps.  =   0.1761E-03 dgama =   0.1761E-03

 Node number    34    X-Coord=   0.000     Y-Coord=   6.093    
 S-xx  =  -0.3485     S-yy  =   0.1271     S-xy  =  -0.3452E-01 S-zz  =  -0.7121E-01
 S-max =   0.1296     S-min =  -0.3510     Angle =   -85.87    
 S-eff =   0.4181     Eps.  =   0.3358E-03 dgama =   0.3358E-03

 Node number    35    X-Coord=  0.9982     Y-Coord=   6.093    
 S-xx  =  -0.3067     S-yy  =   0.1350     S-xy  =   0.4654E-01 S-zz  =  -0.5201E-01
 S-max =   0.1398     S-min =  -0.3115     Angle =    84.05    
 S-eff =   0.3923     Eps.  =   0.7073E-04 dgama =   0.7073E-04

 Node number    36    X-Coord=   1.997     Y-Coord=   6.091    
 S-xx  =  -0.1946     S-yy  =   0.1616     S-xy  =   0.5808E-01 S-zz  =  -0.8964E-02
 S-max =   0.1708     S-min =  -0.2039     Angle =    80.97    
 S-eff =   0.3246     Eps.  =  -0.4295E-04 dgama =  -0.4295E-04

 Node number    37    X-Coord=   4.985     Y-Coord=   4.077    
 S-xx  =  -0.4033E-01 S-yy  =   0.3874     S-xy  =   0.5353E-01 S-zz  =   0.9935E-01
 S-max =   0.3940     S-min =  -0.4693E-01 Angle =    82.97    
 S-eff =   0.3890     Eps.  =  -0.3668E-04 dgama =  -0.3668E-04

 Node number    38    X-Coord=   3.991     Y-Coord=   5.084    
 S-xx  =  -0.7061E-01 S-yy  =   0.4205     S-xy  =   0.6799E-01 S-zz  =   0.1036    
 S-max =   0.4298     S-min =  -0.7985E-01 Angle =    82.26    
 S-eff =   0.4471     Eps.  =   0.5299E-04 dgama =   0.5299E-04

 Node number    39    X-Coord=   2.996     Y-Coord=   6.089    
 S-xx  =  -0.8909E-01 S-yy  =   0.2759     S-xy  =   0.3242E-01 S-zz  =   0.5417E-01
 S-max =   0.2787     S-min =  -0.9195E-01 Angle =    84.96    
 S-eff =   0.3234     Eps.  =    0.000     dgama =    0.000    

 Node number    40    X-Coord=   0.000     Y-Coord=   7.094    
 S-xx  =  -0.1469     S-yy  =   0.6456E-01 S-xy  =  -0.3938E-01 S-zz  =  -0.2386E-01
 S-max =   0.7165E-01 S-min =  -0.1539     Angle =   -79.78    
 S-eff =   0.1961     Eps.  =    0.000     dgama =    0.000    

 Node number    41    X-Coord=  0.9993     Y-Coord=   7.093    
 S-xx  =  -0.1296     S-yy  =   0.9622E-01 S-xy  =  -0.8943E-02 S-zz  =  -0.9683E-02
 S-max =   0.9658E-01 S-min =  -0.1300     Angle =   -87.74    
 S-eff =   0.1963     Eps.  =    0.000     dgama =    0.000    

 Node number    42    X-Coord=   4.990     Y-Coord=   5.080    
 S-xx  =  -0.3102E-01 S-yy  =   0.4742     S-xy  =   0.9891E-02 S-zz  =   0.1492    
 S-max =   0.4744     S-min =  -0.3122E-01 Angle =    88.88    
 S-eff =   0.4439     Eps.  =   0.5857E-03 dgama =   0.5857E-03

 Node number    43    X-Coord=   3.995     Y-Coord=   6.086    
 S-xx  =  -0.4112E-01 S-yy  =   0.4542     S-xy  =   0.1311E-01 S-zz  =   0.1295    
 S-max =   0.4545     S-min =  -0.4146E-01 Angle =    88.49    
 S-eff =   0.4364     Eps.  =   0.2255E-03 dgama =   0.2255E-03

 Node number    44    X-Coord=   1.999     Y-Coord=   7.092    
 S-xx  =  -0.8763E-01 S-yy  =   0.1760     S-xy  =  -0.2541E-01 S-zz  =   0.2564E-01
 S-max =   0.1785     S-min =  -0.9006E-01 Angle =   -84.55    
 S-eff =   0.2333     Eps.  =    0.000     dgama =    0.000    

 Node number    45    X-Coord=   2.998     Y-Coord=   7.090    
 S-xx  =  -0.4167E-01 S-yy  =   0.2953     S-xy  =  -0.3258E-01 S-zz  =   0.7356E-01
 S-max =   0.2984     S-min =  -0.4479E-01 Angle =   -84.53    
 S-eff =   0.3020     Eps.  =    0.000     dgama =    0.000    

 Node number    46    X-Coord=   4.993     Y-Coord=   6.083    
 S-xx  =  -0.9771E-02 S-yy  =   0.5044     S-xy  =   0.4512E-02 S-zz  =   0.1793    
 S-max =   0.5044     S-min =  -0.9810E-02 Angle =    89.50    
 S-eff =   0.4505     Eps.  =   0.1114E-02 dgama =   0.1114E-02

 Node number    47    X-Coord=   0.000     Y-Coord=   8.094    
 S-xx  =  -0.2584E-01 S-yy  =   0.9801E-01 S-xy  =  -0.2856E-01 S-zz  =   0.2093E-01
 S-max =   0.1043     S-min =  -0.3211E-01 Angle =   -77.62    
 S-eff =   0.1191     Eps.  =    0.000     dgama =    0.000    

 Node number    48    X-Coord=  0.9997     Y-Coord=   8.094    
 S-xx  =  -0.2468E-01 S-yy  =   0.1230     S-xy  =  -0.3259E-01 S-zz  =   0.2853E-01
 S-max =   0.1299     S-min =  -0.3155E-01 Angle =   -78.09    
 S-eff =   0.1413     Eps.  =    0.000     dgama =    0.000    

 Node number    49    X-Coord=   3.997     Y-Coord=   7.088    
 S-xx  =  -0.3051E-01 S-yy  =   0.4530     S-xy  =  -0.2398E-01 S-zz  =   0.1241    
 S-max =   0.4542     S-min =  -0.3170E-01 Angle =   -87.17    
 S-eff =   0.4297     Eps.  =   0.1999E-04 dgama =   0.1999E-04

 Node number    50    X-Coord=   1.999     Y-Coord=   8.093    
 S-xx  =  -0.1977E-01 S-yy  =   0.1930     S-xy  =  -0.5431E-01 S-zz  =   0.5024E-01
 S-max =   0.2061     S-min =  -0.3283E-01 Angle =   -76.48    
 S-eff =   0.2101     Eps.  =    0.000     dgama =    0.000    

 Node number    51    X-Coord=   2.999     Y-Coord=   8.092    
 S-xx  =  -0.1505E-01 S-yy  =   0.2947     S-xy  =  -0.5863E-01 S-zz  =   0.8110E-01
 S-max =   0.3054     S-min =  -0.2577E-01 Angle =   -79.63    
 S-eff =   0.2928     Eps.  =    0.000     dgama =    0.000    

 Node number    52    X-Coord=   4.996     Y-Coord=   7.086    
 S-xx  =  -0.1159E-01 S-yy  =   0.4951     S-xy  =   0.7911E-02 S-zz  =   0.1633    
 S-max =   0.4952     S-min =  -0.1171E-01 Angle =    89.11    
 S-eff =   0.4460     Eps.  =   0.6175E-03 dgama =   0.6175E-03

 Node number    53    X-Coord=   3.998     Y-Coord=   8.090    
 S-xx  =  -0.9627E-02 S-yy  =   0.4077     S-xy  =  -0.3770E-01 S-zz  =   0.1149    
 S-max =   0.4111     S-min =  -0.1301E-01 Angle =   -84.88    
 S-eff =   0.3768     Eps.  =  -0.1261E-04 dgama =  -0.1261E-04

 Node number    54    X-Coord=   0.000     Y-Coord=   9.095    
 S-xx  =   0.2431E-01 S-yy  =   0.1378     S-xy  =  -0.2101E-01 S-zz  =   0.4700E-01
 S-max =   0.1415     S-min =   0.2054E-01 Angle =   -79.84    
 S-eff =   0.1102     Eps.  =    0.000     dgama =    0.000    

 Node number    55    X-Coord=  0.9999     Y-Coord=   9.095    
 S-xx  =   0.2196E-01 S-yy  =   0.1570     S-xy  =  -0.3309E-01 S-zz  =   0.5189E-01
 S-max =   0.1646     S-min =   0.1428E-01 Angle =   -76.94    
 S-eff =   0.1355     Eps.  =    0.000     dgama =    0.000    

 Node number    56    X-Coord=   2.000     Y-Coord=   9.094    
 S-xx  =   0.1513E-01 S-yy  =   0.2104     S-xy  =  -0.5611E-01 S-zz  =   0.6542E-01
 S-max =   0.2254     S-min =   0.1619E-03 Angle =   -75.06    
 S-eff =   0.2007     Eps.  =    0.000     dgama =    0.000    

 Node number    57    X-Coord=   4.997     Y-Coord=   8.089    
 S-xx  =  -0.2396E-01 S-yy  =   0.4796     S-xy  =  -0.8929E-02 S-zz  =   0.1351    
 S-max =   0.4797     S-min =  -0.2412E-01 Angle =   -88.98    
 S-eff =   0.4461     Eps.  =   0.6500E-04 dgama =   0.6500E-04

 Node number    58    X-Coord=   2.999     Y-Coord=   9.093    
 S-xx  =   0.7204E-02 S-yy  =   0.2865     S-xy  =  -0.6006E-01 S-zz  =   0.8518E-01
 S-max =   0.2989     S-min =  -0.5162E-02 Angle =   -78.37    
 S-eff =   0.2705     Eps.  =    0.000     dgama =    0.000    

 Node number    59    X-Coord=   3.999     Y-Coord=   9.092    
 S-xx  =   0.1959E-02 S-yy  =   0.3723     S-xy  =  -0.3991E-01 S-zz  =   0.1085    
 S-max =   0.3766     S-min =  -0.2293E-02 Angle =   -83.92    
 S-eff =   0.3374     Eps.  =    0.000     dgama =    0.000    

 Node number    60    X-Coord=   0.000     Y-Coord=   10.10    
 S-xx  =   0.4232E-01 S-yy  =   0.1734     S-xy  =  -0.1443E-01 S-zz  =   0.6255E-01
 S-max =   0.1750     S-min =   0.4075E-01 Angle =   -83.79    
 S-eff =   0.1247     Eps.  =    0.000     dgama =    0.000    

 Node number    61    X-Coord=  0.9999     Y-Coord=   10.10    
 S-xx  =   0.3869E-01 S-yy  =   0.1874     S-xy  =  -0.2818E-01 S-zz  =   0.6555E-01
 S-max =   0.1925     S-min =   0.3352E-01 Angle =   -79.62    
 S-eff =   0.1456     Eps.  =    0.000     dgama =    0.000    

 Node number    62    X-Coord=   2.000     Y-Coord=   10.09    
 S-xx  =   0.2920E-01 S-yy  =   0.2261     S-xy  =  -0.4775E-01 S-zz  =   0.7404E-01
 S-max =   0.2371     S-min =   0.1823E-01 Angle =   -77.06    
 S-eff =   0.1970     Eps.  =    0.000     dgama =    0.000    

 Node number    63    X-Coord=   4.998     Y-Coord=   9.091    
 S-xx  =  -0.1476E-01 S-yy  =   0.4312     S-xy  =  -0.1894E-01 S-zz  =   0.1208    
 S-max =   0.4320     S-min =  -0.1557E-01 Angle =   -87.57    
 S-eff =   0.3974     Eps.  =    0.000     dgama =    0.000    

 Node number    64    X-Coord=   2.999     Y-Coord=   10.09    
 S-xx  =   0.1697E-01 S-yy  =   0.2814     S-xy  =  -0.5188E-01 S-zz  =   0.8654E-01
 S-max =   0.2912     S-min =   0.7154E-02 Angle =   -79.29    
 S-eff =   0.2539     Eps.  =    0.000     dgama =    0.000    

 Node number    65    X-Coord=   3.999     Y-Coord=   10.09    
 S-xx  =   0.5813E-02 S-yy  =   0.3421     S-xy  =  -0.3511E-01 S-zz  =   0.1009    
 S-max =   0.3457     S-min =   0.2186E-02 Angle =   -84.10    
 S-eff =   0.3064     Eps.  =    0.000     dgama =    0.000    

 Node number    66    X-Coord=   0.000     Y-Coord=   11.10    
 S-xx  =   0.4457E-01 S-yy  =   0.2018     S-xy  =  -0.9643E-02 S-zz  =   0.7145E-01
 S-max =   0.2024     S-min =   0.4398E-01 Angle =   -86.50    
 S-eff =   0.1466     Eps.  =    0.000     dgama =    0.000    

 Node number    67    X-Coord=  0.9998     Y-Coord=   11.10    
 S-xx  =   0.4102E-01 S-yy  =   0.2117     S-xy  =  -0.2177E-01 S-zz  =   0.7329E-01
 S-max =   0.2144     S-min =   0.3829E-01 Angle =   -82.84    
 S-eff =   0.1615     Eps.  =    0.000     dgama =    0.000    

 Node number    68    X-Coord=   4.998     Y-Coord=   10.09    
 S-xx  =  -0.7382E-02 S-yy  =   0.3806     S-xy  =  -0.1673E-01 S-zz  =   0.1082    
 S-max =   0.3813     S-min =  -0.8103E-02 Angle =   -87.54    
 S-eff =   0.3463     Eps.  =    0.000     dgama =    0.000    

 Node number    69    X-Coord=   2.000     Y-Coord=   11.10    
 S-xx  =   0.3136E-01 S-yy  =   0.2391     S-xy  =  -0.3705E-01 S-zz  =   0.7843E-01
 S-max =   0.2455     S-min =   0.2495E-01 Angle =   -80.18    
 S-eff =   0.1993     Eps.  =    0.000     dgama =    0.000    

 Node number    70    X-Coord=   2.999     Y-Coord=   11.10    
 S-xx  =   0.1836E-01 S-yy  =   0.2776     S-xy  =  -0.4022E-01 S-zz  =   0.8583E-01
 S-max =   0.2837     S-min =   0.1227E-01 Angle =   -81.38    
 S-eff =   0.2431     Eps.  =    0.000     dgama =    0.000    

 Node number    71    X-Coord=   3.999     Y-Coord=   11.09    
 S-xx  =   0.6184E-02 S-yy  =   0.3173     S-xy  =  -0.2711E-01 S-zz  =   0.9380E-01
 S-max =   0.3196     S-min =   0.3839E-02 Angle =   -85.06    
 S-eff =   0.2818     Eps.  =    0.000     dgama =    0.000    

 Node number    72    X-Coord=   0.000     Y-Coord=   12.10    
 S-xx  =   0.4035E-01 S-yy  =   0.2228     S-xy  =  -0.6126E-02 S-zz  =   0.7631E-01
 S-max =   0.2230     S-min =   0.4014E-01 Angle =   -88.08    
 S-eff =   0.1677     Eps.  =    0.000     dgama =    0.000    

 Node number    73    X-Coord=  0.9998     Y-Coord=   12.10    
 S-xx  =   0.3710E-01 S-yy  =   0.2297     S-xy  =  -0.1552E-01 S-zz  =   0.7738E-01
 S-max =   0.2310     S-min =   0.3586E-01 Angle =   -85.42    
 S-eff =   0.1780     Eps.  =    0.000     dgama =    0.000    

 Node number    74    X-Coord=   4.998     Y-Coord=   11.09    
 S-xx  =  -0.2752E-02 S-yy  =   0.3396     S-xy  =  -0.1302E-01 S-zz  =   0.9768E-01
 S-max =   0.3401     S-min =  -0.3247E-02 Angle =   -87.82    
 S-eff =   0.3056     Eps.  =    0.000     dgama =    0.000    

 Node number    75    X-Coord=   1.999     Y-Coord=   12.10    
 S-xx  =   0.2825E-01 S-yy  =   0.2487     S-xy  =  -0.2633E-01 S-zz  =   0.8031E-01
 S-max =   0.2518     S-min =   0.2515E-01 Angle =   -83.28    
 S-eff =   0.2047     Eps.  =    0.000     dgama =    0.000    

 Node number    76    X-Coord=   2.999     Y-Coord=   12.10    
 S-xx  =   0.1633E-01 S-yy  =   0.2744     S-xy  =  -0.2839E-01 S-zz  =   0.8431E-01
 S-max =   0.2775     S-min =   0.1324E-01 Angle =   -83.80    
 S-eff =   0.2368     Eps.  =    0.000     dgama =    0.000    

 Node number    77    X-Coord=   3.999     Y-Coord=   12.10    
 S-xx  =   0.5334E-02 S-yy  =   0.2985     S-xy  =  -0.1896E-01 S-zz  =   0.8811E-01
 S-max =   0.2997     S-min =   0.4112E-02 Angle =   -86.31    
 S-eff =   0.2638     Eps.  =    0.000     dgama =    0.000    

 Node number    78    X-Coord=   0.000     Y-Coord=   13.10    
 S-xx  =   0.3465E-01 S-yy  =   0.2370     S-xy  =  -0.3559E-02 S-zz  =   0.7879E-01
 S-max =   0.2371     S-min =   0.3459E-01 Angle =   -88.99    
 S-eff =   0.1844     Eps.  =    0.000     dgama =    0.000    

 Node number    79    X-Coord=   4.998     Y-Coord=   12.10    
 S-xx  =  -0.1785E-03 S-yy  =   0.3098     S-xy  =  -0.9086E-02 S-zz  =   0.8978E-01
 S-max =   0.3100     S-min =  -0.4446E-03 Angle =   -88.32    
 S-eff =   0.2766     Eps.  =    0.000     dgama =    0.000    

 Node number    80    X-Coord=  0.9997     Y-Coord=   13.10    
 S-xx  =   0.3179E-01 S-yy  =   0.2419     S-xy  =  -0.9827E-02 S-zz  =   0.7937E-01
 S-max =   0.2424     S-min =   0.3133E-01 Angle =   -87.33    
 S-eff =   0.1916     Eps.  =    0.000     dgama =    0.000    

 Node number    81    X-Coord=   1.999     Y-Coord=   13.10    
 S-xx  =   0.2399E-01 S-yy  =   0.2550     S-xy  =  -0.1661E-01 S-zz  =   0.8091E-01
 S-max =   0.2562     S-min =   0.2281E-01 Angle =   -85.91    
 S-eff =   0.2104     Eps.  =    0.000     dgama =    0.000    

 Node number    82    X-Coord=   2.999     Y-Coord=   13.10    
 S-xx  =   0.1364E-01 S-yy  =   0.2719     S-xy  =  -0.1776E-01 S-zz  =   0.8281E-01
 S-max =   0.2731     S-min =   0.1242E-01 Angle =   -86.09    
 S-eff =   0.2336     Eps.  =    0.000     dgama =    0.000    

 Node number    83    X-Coord=   3.999     Y-Coord=   13.10    
 S-xx  =   0.4344E-02 S-yy  =   0.2858     S-xy  =  -0.1175E-01 S-zz  =   0.8414E-01
 S-max =   0.2863     S-min =   0.3854E-02 Angle =   -87.61    
 S-eff =   0.2521     Eps.  =    0.000     dgama =    0.000    

 Node number    84    X-Coord=   4.998     Y-Coord=   13.10    
 S-xx  =   0.1119E-02 S-yy  =   0.2904     S-xy  =  -0.5620E-02 S-zz  =   0.8453E-01
 S-max =   0.2905     S-min =   0.1010E-02 Angle =   -88.89    
 S-eff =   0.2580     Eps.  =    0.000     dgama =    0.000    

 Node number    85    X-Coord=   0.000     Y-Coord=   14.10    
 S-xx  =   0.3033E-01 S-yy  =   0.2452     S-xy  =  -0.1621E-02 S-zz  =   0.7990E-01
 S-max =   0.2452     S-min =   0.3031E-01 Angle =   -89.57    
 S-eff =   0.1949     Eps.  =    0.000     dgama =    0.000    

 Node number    86    X-Coord=  0.9997     Y-Coord=   14.10    
 S-xx  =   0.2774E-01 S-yy  =   0.2489     S-xy  =  -0.4733E-02 S-zz  =   0.8021E-01
 S-max =   0.2490     S-min =   0.2764E-01 Angle =   -88.77    
 S-eff =   0.2003     Eps.  =    0.000     dgama =    0.000    

 Node number    87    X-Coord=   1.999     Y-Coord=   14.10    
 S-xx  =   0.2078E-01 S-yy  =   0.2585     S-xy  =  -0.7969E-02 S-zz  =   0.8100E-01
 S-max =   0.2588     S-min =   0.2051E-01 Angle =   -88.08    
 S-eff =   0.2145     Eps.  =    0.000     dgama =    0.000    

 Node number    88    X-Coord=   2.999     Y-Coord=   14.10    
 S-xx  =   0.1165E-01 S-yy  =   0.2703     S-xy  =  -0.8470E-02 S-zz  =   0.8177E-01
 S-max =   0.2706     S-min =   0.1138E-01 Angle =   -88.13    
 S-eff =   0.2322     Eps.  =    0.000     dgama =    0.000    

 Node number    89    X-Coord=   3.998     Y-Coord=   14.10    
 S-xx  =   0.3639E-02 S-yy  =   0.2785     S-xy  =  -0.5569E-02 S-zz  =   0.8182E-01
 S-max =   0.2786     S-min =   0.3526E-02 Angle =   -88.84    
 S-eff =   0.2455     Eps.  =    0.000     dgama =    0.000    

 Node number    90    X-Coord=   4.998     Y-Coord=   14.10    
 S-xx  =   0.1698E-02 S-yy  =   0.2796     S-xy  =  -0.2658E-02 S-zz  =   0.8157E-01
 S-max =   0.2796     S-min =   0.1673E-02 Angle =   -89.45    
 S-eff =   0.2478     Eps.  =    0.000     dgama =    0.000    

 Node number    91    X-Coord=   0.000     Y-Coord=   15.10    
 S-xx  =   0.2875E-01 S-yy  =   0.2478     S-xy  =   0.2779E-12 S-zz  =   0.8021E-01
 S-max =   0.2478     S-min =   0.2875E-01 Angle =    90.00    
 S-eff =   0.1984     Eps.  =    0.000     dgama =    0.000    

 Node number    92    X-Coord=  0.9997     Y-Coord=   15.10    
 S-xx  =   0.2627E-01 S-yy  =   0.2511     S-xy  =  -0.9193E-03 S-zz  =   0.8044E-01
 S-max =   0.2511     S-min =   0.2627E-01 Angle =   -89.77    
 S-eff =   0.2032     Eps.  =    0.000     dgama =    0.000    

 Node number    93    X-Coord=   1.999     Y-Coord=   15.10    
 S-xx  =   0.1961E-01 S-yy  =   0.2597     S-xy  =  -0.1651E-02 S-zz  =   0.8099E-01
 S-max =   0.2597     S-min =   0.1960E-01 Angle =   -89.61    
 S-eff =   0.2160     Eps.  =    0.000     dgama =    0.000    

 Node number    94    X-Coord=   2.999     Y-Coord=   15.10    
 S-xx  =   0.1094E-01 S-yy  =   0.2698     S-xy  =  -0.2038E-02 S-zz  =   0.8141E-01
 S-max =   0.2698     S-min =   0.1092E-01 Angle =   -89.55    
 S-eff =   0.2318     Eps.  =    0.000     dgama =    0.000    

 Node number    95    X-Coord=   3.998     Y-Coord=   15.10    
 S-xx  =   0.3389E-02 S-yy  =   0.2762     S-xy  =  -0.1997E-02 S-zz  =   0.8107E-01
 S-max =   0.2762     S-min =   0.3375E-02 Angle =   -89.58    
 S-eff =   0.2434     Eps.  =    0.000     dgama =    0.000    

 Node number    96    X-Coord=   4.998     Y-Coord=   15.10    
 S-xx  =   0.1859E-02 S-yy  =   0.2761     S-xy  =  -0.1591E-02 S-zz  =   0.8062E-01
 S-max =   0.2762     S-min =   0.1850E-02 Angle =   -89.67    
 S-eff =   0.2446     Eps.  =    0.000     dgama =    0.000    




 INCREMENT NUMBER    4
 =====================


 Total load factor ............... =    0.200000    
 Incremental load factor ......... =    0.100000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    10

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   1
 Output to re-start file............ =   0




 INCREMENT NUMBER    4                   TOTAL LOAD FACTOR =   0.200000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      30.5975                     0.154592    
        2                      32.2185                     0.172647    
        3                      1.66154                     0.117504E-01
        4                     0.262416E-01                 0.170450E-03
        5                     0.129891E-04                 0.869004E-07
        6                     0.313930E-10                 0.890121E-13
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.100000    
 --------------------------------------------------------------------------


 Results for load increment   4 Load factor =   0.200000    
 ===========================================================

 Converged solution at iteration number =    6


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1      0.00000        0.00000    
    2    -0.237070E-01    0.00000    
    3      0.00000       0.153145E-01
    4    -0.641245E-01   0.841282E-01
    5      0.00000       0.101449    
    6    -0.864438E-01   0.190644    
    7    -0.771173E-01   0.186212    
    8    -0.487754E-01   0.125163    
    9    -0.650377E-01   0.182065    
   10    -0.858147E-01   0.178414    
   11      0.00000       0.152875    
   12    -0.748391E-01   0.179324    
   13    -0.314533E-01   0.161759    
   14    -0.622306E-01   0.179476    
   15    -0.466997E-01   0.181557    
   16      0.00000       0.179997    
   17    -0.861215E-01   0.168324    
   18    -0.133968E-01   0.182787    
   19    -0.746371E-01   0.168050    
   20    -0.484533E-01   0.179887    
   21    -0.620584E-01   0.168389    
   22    -0.226220E-01   0.186604    
   23      0.00000       0.190484    
   24    -0.863359E-01   0.156431    
   25    -0.485774E-01   0.169148    
   26    -0.287844E-01   0.182762    
   27    -0.744850E-01   0.156430    
   28    -0.503860E-02   0.190997    
   29    -0.622882E-01   0.156208    
   30    -0.823627E-02   0.190547    
   31    -0.331625E-01   0.171217    
   32    -0.487421E-01   0.156583    
   33    -0.103522E-01   0.186832    
   34      0.00000       0.193806    
   35    -0.222827E-02   0.193298    
   36    -0.377098E-02   0.191516    
   37    -0.353011E-01   0.158088    
   38    -0.154393E-01   0.177535    
   39    -0.457501E-02   0.188432    
   40      0.00000       0.194575    
   41    -0.733760E-03   0.193989    
   42    -0.240600E-01   0.165093    
   43    -0.601890E-02   0.184445    
   44    -0.140025E-02   0.192307    
   45    -0.214491E-02   0.189904    
   46    -0.126291E-01   0.176491    
   47      0.00000       0.194869    
   48    -0.203420E-03   0.194402    
   49    -0.307384E-02   0.187728    
   50    -0.527468E-03   0.193132    
   51    -0.107670E-02   0.191441    
   52    -0.527744E-02   0.184963    
   53    -0.185899E-02   0.189894    
   54      0.00000       0.195191    
   55    -0.629517E-04   0.194864    
   56    -0.256254E-03   0.193983    
   57    -0.285440E-02   0.188650    
   58    -0.665188E-03   0.192824    
   59    -0.127976E-02   0.191715    
   60      0.00000       0.195677    
   61    -0.666836E-04   0.195457    
   62    -0.237808E-03   0.194867    
   63    -0.204777E-02   0.190955    
   64    -0.576022E-03   0.194086    
   65    -0.109545E-02   0.193346    
   66      0.00000       0.196330    
   67    -0.121835E-03   0.196187    
   68    -0.178443E-02   0.192951    
   69    -0.321696E-03   0.195801    
   70    -0.654337E-03   0.195292    
   71    -0.114001E-02   0.194841    
   72      0.00000       0.197125    
   73    -0.188431E-03   0.197034    
   74    -0.174272E-02   0.194666    
   75    -0.437223E-03   0.196792    
   76    -0.790102E-03   0.196480    
   77    -0.125740E-02   0.196222    
   78      0.00000       0.198024    
   79    -0.180756E-02   0.196164    
   80    -0.246727E-03   0.197972    
   81    -0.541214E-03   0.197833    
   82    -0.916127E-03   0.197658    
   83    -0.137703E-02   0.197523    
   84    -0.189184E-02   0.197515    
   85      0.00000       0.198995    
   86    -0.285326E-03   0.198971    
   87    -0.610290E-03   0.198908    
   88    -0.100118E-02   0.198830    
   89    -0.145936E-02   0.198774    
   90    -0.195549E-02   0.198778    
   91      0.00000       0.200000    
   92    -0.298686E-03   0.200000    
   93    -0.634319E-03   0.200000    
   94    -0.103076E-02   0.200000    
   95    -0.148840E-02   0.200000    
   96    -0.197845E-02   0.200000    


 Reactions
 =========

 Node      X-Force          Y-Force
    1    -0.254577        -0.468812    
    2      0.00000        -0.837713    
    3    -0.411081          0.00000    
    5    -0.180264          0.00000    
   11    -0.495073E-02      0.00000    
   16     0.155129          0.00000    
   23     0.329460          0.00000    
   34     0.391850          0.00000    
   40     0.210250          0.00000    
   47     0.377074E-01      0.00000    
   54    -0.287123E-01      0.00000    
   60    -0.499132E-01      0.00000    
   66    -0.524073E-01      0.00000    
   72    -0.476182E-01      0.00000    
   78    -0.412434E-01      0.00000    
   85    -0.363526E-01      0.00000    
   91    -0.172771E-01     0.121964    
   92      0.00000         0.247570    
   93      0.00000         0.257000    
   94      0.00000         0.268033    
   95      0.00000         0.274609    
   96      0.00000         0.137349    
       ---------------  ---------------
 Totals   0.217177E-12     0.243694E-13


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    X-Coord=   0.000     Y-Coord=   0.000    
 S-xx  =   0.4344     S-yy  =   0.9764     S-xy  =   0.1098E-01 S-zz  =   0.7023    
 S-max =   0.9767     S-min =   0.4342     Angle =    88.84    
 S-eff =   0.4698     Eps.  =   0.1764E-01 dgama =   0.1251E-01

 Node number     2    X-Coord=  0.9763     Y-Coord=   0.000    
 S-xx  =   0.3561     S-yy  =   0.7981     S-xy  =   0.4735E-01 S-zz  =   0.5768    
 S-max =   0.8031     S-min =   0.3511     Angle =    83.95    
 S-eff =   0.3915     Eps.  =   0.8808E-01 dgama =   0.4820E-01

 Node number     3    X-Coord=   0.000     Y-Coord=   1.015    
 S-xx  =   0.3873     S-yy  =   0.8385     S-xy  =   0.1387     S-zz  =   0.6128    
 S-max =   0.8777     S-min =   0.3481     Angle =    74.21    
 S-eff =   0.4587     Eps.  =   0.7464E-01 dgama =   0.4031E-01

 Node number     4    X-Coord=  0.9359     Y-Coord=   1.084    
 S-xx  =   0.3121     S-yy  =   0.7269     S-xy  =   0.1457     S-zz  =   0.5190    
 S-max =   0.7730     S-min =   0.2660     Angle =    72.46    
 S-eff =   0.4390     Eps.  =   0.7165E-01 dgama =   0.3942E-01

 Node number     5    X-Coord=   0.000     Y-Coord=   2.101    
 S-xx  =   0.1679     S-yy  =   0.6795     S-xy  =   0.5142E-01 S-zz  =   0.4234    
 S-max =   0.6846     S-min =   0.1628     Angle =    84.32    
 S-eff =   0.4519     Eps.  =   0.6623E-01 dgama =   0.3749E-01

 Node number     6    X-Coord=   1.914     Y-Coord=  0.1906    
 S-xx  =   0.3140     S-yy  =   0.9705E-01 S-xy  =   0.4866E-01 S-zz  =   0.2110    
 S-max =   0.3244     S-min =   0.8664E-01 Angle =    12.08    
 S-eff =   0.2060     Eps.  =   0.6028E-01 dgama =   0.3344E-01

 Node number     7    X-Coord=   1.923     Y-Coord=   1.186    
 S-xx  =   0.3303     S-yy  =   0.1294     S-xy  =   0.1939     S-zz  =   0.2264    
 S-max =   0.4483     S-min =   0.1145E-01 Angle =    31.30    
 S-eff =   0.3783     Eps.  =   0.3173E-01 dgama =   0.1875E-01

 Node number     8    X-Coord=  0.9512     Y-Coord=   2.125    
 S-xx  =   0.1645     S-yy  =   0.5687     S-xy  =   0.1568     S-zz  =   0.3661    
 S-max =   0.6224     S-min =   0.1107     Angle =    71.10    
 S-eff =   0.4431     Eps.  =   0.5157E-01 dgama =   0.2860E-01

 Node number     9    X-Coord=   1.935     Y-Coord=   2.182    
 S-xx  =   0.2329     S-yy  =   0.1698     S-xy  =   0.2465     S-zz  =   0.1979    
 S-max =   0.4499     S-min =  -0.4716E-01 Angle =    41.35    
 S-eff =   0.4305     Eps.  =   0.2309E-01 dgama =   0.1325E-01

 Node number    10    X-Coord=   2.914     Y-Coord=  0.1784    
 S-xx  =  -0.2957E-01 S-yy  =   0.6206E-01 S-xy  =  -0.2391E-01 S-zz  =   0.1021E-01
 S-max =   0.6792E-01 S-min =  -0.3544E-01 Angle =   -76.22    
 S-eff =   0.8971E-01 Eps.  =  -0.1177E-03 dgama =  -0.1177E-03

 Node number    11    X-Coord=   0.000     Y-Coord=   3.153    
 S-xx  =  -0.1086E-01 S-yy  =   0.5107     S-xy  =   0.2405E-01 S-zz  =   0.2489    
 S-max =   0.5118     S-min =  -0.1197E-01 Angle =    87.37    
 S-eff =   0.4536     Eps.  =   0.3884E-01 dgama =   0.2254E-01

 Node number    12    X-Coord=   2.925     Y-Coord=   1.179    
 S-xx  =   0.1170     S-yy  =   0.7204E-02 S-xy  =   0.1678     S-zz  =   0.4130E-01
 S-max =   0.2387     S-min =  -0.1145     Angle =    35.94    
 S-eff =   0.3065     Eps.  =   0.2847E-03 dgama =   0.2911E-03

 Node number    13    X-Coord=  0.9685     Y-Coord=   3.162    
 S-xx  =  -0.2421E-01 S-yy  =   0.4148     S-xy  =   0.1386     S-zz  =   0.1947    
 S-max =   0.4549     S-min =  -0.6432E-01 Angle =    73.86    
 S-eff =   0.4496     Eps.  =   0.3338E-01 dgama =   0.1910E-01

 Node number    14    X-Coord=   2.938     Y-Coord=   2.179    
 S-xx  =   0.1401     S-yy  =   0.8136E-01 S-xy  =   0.2117     S-zz  =   0.7905E-01
 S-max =   0.3244     S-min =  -0.1030     Angle =    41.05    
 S-eff =   0.3715     Eps.  =   0.2169E-02 dgama =   0.1838E-02

 Node number    15    X-Coord=   1.953     Y-Coord=   3.182    
 S-xx  =   0.2020E-01 S-yy  =   0.1666     S-xy  =   0.2493     S-zz  =   0.9300E-01
 S-max =   0.3532     S-min =  -0.1664     Angle =    53.18    
 S-eff =   0.4500     Eps.  =   0.1655E-01 dgama =   0.1043E-01

 Node number    16    X-Coord=   0.000     Y-Coord=   4.180    
 S-xx  =  -0.1741     S-yy  =   0.3549     S-xy  =   0.1721E-01 S-zz  =   0.8856E-01
 S-max =   0.3554     S-min =  -0.1747     Angle =    88.14    
 S-eff =   0.4591     Eps.  =   0.1642E-01 dgama =   0.7803E-02

 Node number    17    X-Coord=   3.914     Y-Coord=  0.1683    
 S-xx  =   0.3536E-01 S-yy  =   0.3249E-01 S-xy  =   0.3951E-01 S-zz  =   0.1968E-01
 S-max =   0.7347E-01 S-min =  -0.5614E-02 Angle =    43.96    
 S-eff =   0.6995E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    18    X-Coord=  0.9866     Y-Coord=   4.183    
 S-xx  =  -0.1629     S-yy  =   0.2695     S-xy  =   0.1510     S-zz  =   0.5289E-01
 S-max =   0.3170     S-min =  -0.2104     Angle =    72.54    
 S-eff =   0.4567     Eps.  =   0.1563E-01 dgama =   0.8665E-02

 Node number    19    X-Coord=   3.925     Y-Coord=   1.168    
 S-xx  =   0.6440E-01 S-yy  =   0.4011E-01 S-xy  =   0.4672E-01 S-zz  =   0.3031E-01
 S-max =   0.1005     S-min =   0.3988E-02 Angle =    37.71    
 S-eff =   0.8644E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    20    X-Coord=   2.952     Y-Coord=   3.180    
 S-xx  =   0.2234E-01 S-yy  =   0.1320     S-xy  =   0.2524     S-zz  =   0.5829E-01
 S-max =   0.3355     S-min =  -0.1812     Angle =    51.13    
 S-eff =   0.4478     Eps.  =   0.4355E-02 dgama =   0.3609E-02

 Node number    21    X-Coord=   3.938     Y-Coord=   2.168    
 S-xx  =   0.5213E-01 S-yy  =   0.1419     S-xy  =   0.1124     S-zz  =   0.5628E-01
 S-max =   0.2181     S-min =  -0.2399E-01 Angle =    55.89    
 S-eff =   0.2136     Eps.  =    0.000     dgama =    0.000    

 Node number    22    X-Coord=   1.977     Y-Coord=   4.187    
 S-xx  =  -0.1358     S-yy  =   0.1483     S-xy  =   0.2183     S-zz  =   0.7339E-02
 S-max =   0.2667     S-min =  -0.2542     Angle =    61.53    
 S-eff =   0.4511     Eps.  =   0.1122E-01 dgama =   0.8258E-02

 Node number    23    X-Coord=   0.000     Y-Coord=   5.190    
 S-xx  =  -0.3340     S-yy  =   0.1960     S-xy  =   0.1830E-01 S-zz  =  -0.5795E-01
 S-max =   0.1966     S-min =  -0.3346     Angle =    88.02    
 S-eff =   0.4602     Eps.  =   0.4875E-02 dgama =   0.1755E-02

 Node number    24    X-Coord=   4.914     Y-Coord=  0.1564    
 S-xx  =  -0.2307E-01 S-yy  =   0.1133E-01 S-xy  =  -0.3165E-02 S-zz  =  -0.3403E-02
 S-max =   0.1162E-01 S-min =  -0.2336E-01 Angle =   -84.79    
 S-eff =   0.3039E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    25    X-Coord=   3.951     Y-Coord=   3.169    
 S-xx  =   0.9246E-02 S-yy  =   0.2291     S-xy  =   0.1904     S-zz  =   0.7212E-01
 S-max =   0.3390     S-min =  -0.1007     Angle =    59.99    
 S-eff =   0.3837     Eps.  =   0.2402E-03 dgama =   0.2358E-03

 Node number    26    X-Coord=   2.971     Y-Coord=   4.183    
 S-xx  =  -0.1191     S-yy  =   0.2042     S-xy  =   0.2033     S-zz  =   0.3739E-01
 S-max =   0.3023     S-min =  -0.2172     Angle =    64.24    
 S-eff =   0.4499     Eps.  =   0.6426E-02 dgama =   0.5831E-02

 Node number    27    X-Coord=   4.926     Y-Coord=   1.156    
 S-xx  =   0.3448E-01 S-yy  =  -0.8533E-02 S-xy  =   0.3213E-01 S-zz  =   0.7525E-02
 S-max =   0.5164E-01 S-min =  -0.2569E-01 Angle =    28.10    
 S-eff =   0.6719E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    28    X-Coord=  0.9950     Y-Coord=   5.191    
 S-xx  =  -0.2957     S-yy  =   0.1445     S-xy  =   0.1425     S-zz  =  -0.6107E-01
 S-max =   0.1866     S-min =  -0.3378     Angle =    73.54    
 S-eff =   0.4544     Eps.  =   0.4368E-02 dgama =   0.2154E-02

 Node number    29    X-Coord=   4.938     Y-Coord=   2.156    
 S-xx  =   0.4330E-01 S-yy  =   0.9091E-01 S-xy  =   0.5565E-01 S-zz  =   0.3892E-01
 S-max =   0.1276     S-min =   0.6580E-02 Angle =    56.58    
 S-eff =   0.1086     Eps.  =    0.000     dgama =    0.000    

 Node number    30    X-Coord=   1.992     Y-Coord=   5.191    
 S-xx  =  -0.2211     S-yy  =   0.1161     S-xy  =   0.1838     S-zz  =  -0.3976E-01
 S-max =   0.1970     S-min =  -0.3019     Angle =    66.26    
 S-eff =   0.4323     Eps.  =   0.3376E-02 dgama =   0.2580E-02

 Node number    31    X-Coord=   3.967     Y-Coord=   4.171    
 S-xx  =  -0.8487E-01 S-yy  =   0.3722     S-xy  =   0.1323     S-zz  =   0.1167    
 S-max =   0.4077     S-min =  -0.1204     Angle =    74.96    
 S-eff =   0.4582     Eps.  =   0.2987E-02 dgama =   0.3008E-02

 Node number    32    X-Coord=   4.951     Y-Coord=   3.157    
 S-xx  =   0.3878E-01 S-yy  =   0.2205     S-xy  =   0.7721E-01 S-zz  =   0.7416E-01
 S-max =   0.2488     S-min =   0.1040E-01 Angle =    69.82    
 S-eff =   0.2138     Eps.  =  -0.2959E-04 dgama =  -0.2959E-04

 Node number    33    X-Coord=   2.990     Y-Coord=   5.187    
 S-xx  =  -0.1274     S-yy  =   0.2484     S-xy  =   0.1058     S-zz  =   0.5170E-01
 S-max =   0.2761     S-min =  -0.1551     Angle =    75.31    
 S-eff =   0.3736     Eps.  =   0.3921E-02 dgama =   0.3745E-02

 Node number    34    X-Coord=   0.000     Y-Coord=   6.194    
 S-xx  =  -0.3996     S-yy  =   0.1065     S-xy  =  -0.3065E-01 S-zz  =  -0.9746E-01
 S-max =   0.1084     S-min =  -0.4014     Angle =   -86.55    
 S-eff =   0.4442     Eps.  =   0.6370E-03 dgama =   0.3012E-03

 Node number    35    X-Coord=  0.9978     Y-Coord=   6.193    
 S-xx  =  -0.3515     S-yy  =   0.1016     S-xy  =   0.6179E-01 S-zz  =  -0.8044E-01
 S-max =   0.1099     S-min =  -0.3598     Angle =    82.37    
 S-eff =   0.4091     Eps.  =   0.3437E-03 dgama =   0.2730E-03

 Node number    36    X-Coord=   1.996     Y-Coord=   6.192    
 S-xx  =  -0.2023     S-yy  =   0.1182     S-xy  =   0.7346E-01 S-zz  =  -0.2609E-01
 S-max =   0.1343     S-min =  -0.2183     Angle =    77.69    
 S-eff =   0.3058     Eps.  =   0.4973E-04 dgama =   0.9268E-04

 Node number    37    X-Coord=   4.965     Y-Coord=   4.158    
 S-xx  =  -0.7473E-01 S-yy  =   0.4781     S-xy  =  -0.4690E-02 S-zz  =   0.1498    
 S-max =   0.4782     S-min =  -0.7477E-01 Angle =   -89.51    
 S-eff =   0.4817     Eps.  =   0.1651E-02 dgama =   0.1687E-02

 Node number    38    X-Coord=   3.985     Y-Coord=   5.178    
 S-xx  =  -0.4819E-01 S-yy  =   0.4433     S-xy  =   0.5260E-01 S-zz  =   0.1774    
 S-max =   0.4489     S-min =  -0.5376E-01 Angle =    83.96    
 S-eff =   0.4358     Eps.  =   0.6371E-02 dgama =   0.6318E-02

 Node number    39    X-Coord=   2.995     Y-Coord=   6.188    
 S-xx  =  -0.1028     S-yy  =   0.3314     S-xy  =   0.3731E-01 S-zz  =   0.6974E-01
 S-max =   0.3346     S-min =  -0.1060     Angle =    85.13    
 S-eff =   0.3842     Eps.  =  -0.4071E-04 dgama =  -0.4071E-04

 Node number    40    X-Coord=   0.000     Y-Coord=   7.195    
 S-xx  =  -0.1844     S-yy  =   0.1871E-01 S-xy  =  -0.4702E-01 S-zz  =  -0.4804E-01
 S-max =   0.2907E-01 S-min =  -0.1947     Angle =   -77.57    
 S-eff =   0.1969     Eps.  =    0.000     dgama =    0.000    

 Node number    41    X-Coord=  0.9993     Y-Coord=   7.194    
 S-xx  =  -0.1532     S-yy  =   0.4777E-01 S-xy  =  -0.9654E-02 S-zz  =  -0.3057E-01
 S-max =   0.4823E-01 S-min =  -0.1536     Angle =   -87.26    
 S-eff =   0.1762     Eps.  =    0.000     dgama =    0.000    

 Node number    42    X-Coord=   4.976     Y-Coord=   5.165    
 S-xx  =  -0.9226E-02 S-yy  =   0.5140     S-xy  =  -0.1241E-01 S-zz  =   0.2341    
 S-max =   0.5143     S-min =  -0.9520E-02 Angle =   -88.64    
 S-eff =   0.4540     Eps.  =   0.8356E-02 dgama =   0.7770E-02

 Node number    43    X-Coord=   3.994     Y-Coord=   6.184    
 S-xx  =  -0.1544E-01 S-yy  =   0.4703     S-xy  =  -0.2300E-02 S-zz  =   0.1929    
 S-max =   0.4703     S-min =  -0.1545E-01 Angle =   -89.73    
 S-eff =   0.4221     Eps.  =   0.3735E-02 dgama =   0.3509E-02

 Node number    44    X-Coord=   1.999     Y-Coord=   7.192    
 S-xx  =  -0.8986E-01 S-yy  =   0.1529     S-xy  =  -0.3348E-01 S-zz  =   0.1829E-01
 S-max =   0.1575     S-min =  -0.9439E-01 Angle =   -82.29    
 S-eff =   0.2185     Eps.  =    0.000     dgama =    0.000    

 Node number    45    X-Coord=   2.998     Y-Coord=   7.190    
 S-xx  =  -0.4596E-01 S-yy  =   0.3420     S-xy  =  -0.4243E-01 S-zz  =   0.8403E-01
 S-max =   0.3466     S-min =  -0.5054E-01 Angle =   -83.83    
 S-eff =   0.3499     Eps.  =  -0.4750E-04 dgama =  -0.4750E-04

 Node number    46    X-Coord=   4.987     Y-Coord=   6.176    
 S-xx  =  -0.6664E-02 S-yy  =   0.5176     S-xy  =   0.2317E-01 S-zz  =   0.2379    
 S-max =   0.5187     S-min =  -0.7686E-02 Angle =    87.47    
 S-eff =   0.4562     Eps.  =   0.7645E-02 dgama =   0.6531E-02

 Node number    47    X-Coord=   0.000     Y-Coord=   8.195    
 S-xx  =  -0.2730E-01 S-yy  =   0.5473E-01 S-xy  =  -0.3739E-01 S-zz  =   0.7956E-02
 S-max =   0.6921E-01 S-min =  -0.4178E-01 Angle =   -68.83    
 S-eff =   0.9629E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    48    X-Coord=  0.9998     Y-Coord=   8.194    
 S-xx  =  -0.2448E-01 S-yy  =   0.8804E-01 S-xy  =  -0.4270E-01 S-zz  =   0.1843E-01
 S-max =   0.1024     S-min =  -0.3885E-01 Angle =   -71.40    
 S-eff =   0.1231     Eps.  =    0.000     dgama =    0.000    

 Node number    49    X-Coord=   3.997     Y-Coord=   7.188    
 S-xx  =  -0.2835E-01 S-yy  =   0.4849     S-xy  =  -0.2824E-01 S-zz  =   0.1569    
 S-max =   0.4865     S-min =  -0.2990E-01 Angle =   -86.86    
 S-eff =   0.4529     Eps.  =   0.6072E-03 dgama =   0.5873E-03

 Node number    50    X-Coord=   1.999     Y-Coord=   8.193    
 S-xx  =  -0.2135E-01 S-yy  =   0.1831     S-xy  =  -0.7273E-01 S-zz  =   0.4690E-01
 S-max =   0.2063     S-min =  -0.4459E-01 Angle =   -72.28    
 S-eff =   0.2199     Eps.  =    0.000     dgama =    0.000    

 Node number    51    X-Coord=   2.999     Y-Coord=   8.191    
 S-xx  =  -0.2386E-01 S-yy  =   0.3168     S-xy  =  -0.7022E-01 S-zz  =   0.8496E-01
 S-max =   0.3307     S-min =  -0.3777E-01 Angle =   -78.80    
 S-eff =   0.3250     Eps.  =    0.000     dgama =    0.000    

 Node number    52    X-Coord=   4.995     Y-Coord=   7.185    
 S-xx  =  -0.8870E-02 S-yy  =   0.4935     S-xy  =   0.5256E-01 S-zz  =   0.2032    
 S-max =   0.4989     S-min =  -0.1431E-01 Angle =    84.09    
 S-eff =   0.4462     Eps.  =   0.3098E-02 dgama =   0.2481E-02

 Node number    53    X-Coord=   3.998     Y-Coord=   8.190    
 S-xx  =  -0.2204E-01 S-yy  =   0.4415     S-xy  =  -0.3994E-01 S-zz  =   0.1222    
 S-max =   0.4449     S-min =  -0.2546E-01 Angle =   -85.11    
 S-eff =   0.4166     Eps.  =  -0.9129E-05 dgama =   0.3479E-05

 Node number    54    X-Coord=   0.000     Y-Coord=   9.195    
 S-xx  =   0.3254E-01 S-yy  =   0.1074     S-xy  =  -0.2621E-01 S-zz  =   0.4059E-01
 S-max =   0.1157     S-min =   0.2428E-01 Angle =   -72.50    
 S-eff =   0.8443E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    55    X-Coord=  0.9999     Y-Coord=   9.195    
 S-xx  =   0.2795E-01 S-yy  =   0.1331     S-xy  =  -0.4294E-01 S-zz  =   0.4669E-01
 S-max =   0.1484     S-min =   0.1264E-01 Angle =   -70.37    
 S-eff =   0.1223     Eps.  =    0.000     dgama =    0.000    

 Node number    56    X-Coord=   2.000     Y-Coord=   9.194    
 S-xx  =   0.1558E-01 S-yy  =   0.2030     S-xy  =  -0.7007E-01 S-zz  =   0.6338E-01
 S-max =   0.2263     S-min =  -0.7718E-02 Angle =   -71.60    
 S-eff =   0.2078     Eps.  =    0.000     dgama =    0.000    

 Node number    57    X-Coord=   4.997     Y-Coord=   8.189    
 S-xx  =  -0.2516E-01 S-yy  =   0.4900     S-xy  =   0.1613E-01 S-zz  =   0.1513    
 S-max =   0.4905     S-min =  -0.2567E-01 Angle =    88.21    
 S-eff =   0.4544     Eps.  =   0.4584E-03 dgama =   0.3934E-03

 Node number    58    X-Coord=   2.999     Y-Coord=   9.193    
 S-xx  =   0.1752E-02 S-yy  =   0.2957     S-xy  =  -0.7066E-01 S-zz  =   0.8626E-01
 S-max =   0.3118     S-min =  -0.1435E-01 Angle =   -77.16    
 S-eff =   0.2893     Eps.  =    0.000     dgama =    0.000    

 Node number    59    X-Coord=   3.999     Y-Coord=   9.192    
 S-xx  =  -0.7254E-03 S-yy  =   0.3865     S-xy  =  -0.4416E-01 S-zz  =   0.1119    
 S-max =   0.3914     S-min =  -0.5698E-02 Angle =   -83.58    
 S-eff =   0.3533     Eps.  =   0.7268E-07 dgama =   0.7268E-07

 Node number    60    X-Coord=   0.000     Y-Coord=   10.20    
 S-xx  =   0.5126E-01 S-yy  =   0.1532     S-xy  =  -0.1759E-01 S-zz  =   0.5930E-01
 S-max =   0.1562     S-min =   0.4831E-01 Angle =   -80.48    
 S-eff =   0.1028     Eps.  =    0.000     dgama =    0.000    

 Node number    61    X-Coord=  0.9999     Y-Coord=   10.20    
 S-xx  =   0.4595E-01 S-yy  =   0.1710     S-xy  =  -0.3478E-01 S-zz  =   0.6292E-01
 S-max =   0.1800     S-min =   0.3693E-01 Angle =   -75.46    
 S-eff =   0.1320     Eps.  =    0.000     dgama =    0.000    

 Node number    62    X-Coord=   2.000     Y-Coord=   10.19    
 S-xx  =   0.3244E-01 S-yy  =   0.2190     S-xy  =  -0.5754E-01 S-zz  =   0.7292E-01
 S-max =   0.2353     S-min =   0.1612E-01 Angle =   -74.17    
 S-eff =   0.1970     Eps.  =    0.000     dgama =    0.000    

 Node number    63    X-Coord=   4.998     Y-Coord=   9.191    
 S-xx  =  -0.1790E-01 S-yy  =   0.4496     S-xy  =  -0.1790E-01 S-zz  =   0.1252    
 S-max =   0.4502     S-min =  -0.1858E-01 Angle =   -87.81    
 S-eff =   0.4160     Eps.  =  -0.5425E-06 dgama =  -0.5425E-06

 Node number    64    X-Coord=   2.999     Y-Coord=   10.19    
 S-xx  =   0.1743E-01 S-yy  =   0.2838     S-xy  =  -0.6044E-01 S-zz  =   0.8737E-01
 S-max =   0.2969     S-min =   0.4357E-02 Angle =   -77.80    
 S-eff =   0.2611     Eps.  =    0.000     dgama =    0.000    

 Node number    65    X-Coord=   3.999     Y-Coord=   10.19    
 S-xx  =   0.6041E-02 S-yy  =   0.3532     S-xy  =  -0.3976E-01 S-zz  =   0.1042    
 S-max =   0.3577     S-min =   0.1545E-02 Angle =   -83.55    
 S-eff =   0.3175     Eps.  =    0.000     dgama =    0.000    

 Node number    66    X-Coord=   0.000     Y-Coord=   11.20    
 S-xx  =   0.5268E-01 S-yy  =   0.1882     S-xy  =  -0.1147E-01 S-zz  =   0.6985E-01
 S-max =   0.1891     S-min =   0.5171E-01 Angle =   -85.20    
 S-eff =   0.1293     Eps.  =    0.000     dgama =    0.000    

 Node number    67    X-Coord=  0.9999     Y-Coord=   11.20    
 S-xx  =   0.4808E-01 S-yy  =   0.2002     S-xy  =  -0.2607E-01 S-zz  =   0.7200E-01
 S-max =   0.2045     S-min =   0.4373E-01 Angle =   -80.54    
 S-eff =   0.1487     Eps.  =    0.000     dgama =    0.000    

 Node number    68    X-Coord=   4.998     Y-Coord=   10.19    
 S-xx  =  -0.9090E-02 S-yy  =   0.3984     S-xy  =  -0.1933E-01 S-zz  =   0.1129    
 S-max =   0.3993     S-min =  -0.1001E-01 Angle =   -87.29    
 S-eff =   0.3638     Eps.  =    0.000     dgama =    0.000    

 Node number    69    X-Coord=   2.000     Y-Coord=   11.20    
 S-xx  =   0.3609E-01 S-yy  =   0.2329     S-xy  =  -0.4382E-01 S-zz  =   0.7802E-01
 S-max =   0.2422     S-min =   0.2678E-01 Angle =   -78.00    
 S-eff =   0.1950     Eps.  =    0.000     dgama =    0.000    

 Node number    70    X-Coord=   2.999     Y-Coord=   11.20    
 S-xx  =   0.2080E-01 S-yy  =   0.2782     S-xy  =  -0.4701E-01 S-zz  =   0.8670E-01
 S-max =   0.2865     S-min =   0.1248E-01 Angle =   -79.97    
 S-eff =   0.2455     Eps.  =    0.000     dgama =    0.000    

 Node number    71    X-Coord=   3.999     Y-Coord=   11.19    
 S-xx  =   0.6894E-02 S-yy  =   0.3244     S-xy  =  -0.3155E-01 S-zz  =   0.9607E-01
 S-max =   0.3275     S-min =   0.3789E-02 Angle =   -84.38    
 S-eff =   0.2888     Eps.  =    0.000     dgama =    0.000    

 Node number    72    X-Coord=   0.000     Y-Coord=   12.20    
 S-xx  =   0.4736E-01 S-yy  =   0.2133     S-xy  =  -0.7229E-02 S-zz  =   0.7558E-01
 S-max =   0.2136     S-min =   0.4704E-01 Angle =   -87.51    
 S-eff =   0.1543     Eps.  =    0.000     dgama =    0.000    

 Node number    73    X-Coord=  0.9998     Y-Coord=   12.20    
 S-xx  =   0.4346E-01 S-yy  =   0.2215     S-xy  =  -0.1832E-01 S-zz  =   0.7683E-01
 S-max =   0.2233     S-min =   0.4160E-01 Angle =   -84.18    
 S-eff =   0.1669     Eps.  =    0.000     dgama =    0.000    

 Node number    74    X-Coord=   4.998     Y-Coord=   11.19    
 S-xx  =  -0.3377E-02 S-yy  =   0.3504     S-xy  =  -0.1494E-01 S-zz  =   0.1006    
 S-max =   0.3510     S-min =  -0.4007E-02 Angle =   -87.59    
 S-eff =   0.3160     Eps.  =    0.000     dgama =    0.000    

 Node number    75    X-Coord=   2.000     Y-Coord=   12.20    
 S-xx  =   0.3294E-01 S-yy  =   0.2439     S-xy  =  -0.3098E-01 S-zz  =   0.8028E-01
 S-max =   0.2483     S-min =   0.2849E-01 Angle =   -81.82    
 S-eff =   0.1991     Eps.  =    0.000     dgama =    0.000    

 Node number    76    X-Coord=   2.999     Y-Coord=   12.20    
 S-xx  =   0.1894E-01 S-yy  =   0.2741     S-xy  =  -0.3330E-01 S-zz  =   0.8499E-01
 S-max =   0.2784     S-min =   0.1466E-01 Angle =   -82.69    
 S-eff =   0.2366     Eps.  =    0.000     dgama =    0.000    

 Node number    77    X-Coord=   3.999     Y-Coord=   12.20    
 S-xx  =   0.6187E-02 S-yy  =   0.3025     S-xy  =  -0.2217E-01 S-zz  =   0.8953E-01
 S-max =   0.3042     S-min =   0.4538E-02 Angle =   -85.75    
 S-eff =   0.2675     Eps.  =    0.000     dgama =    0.000    

 Node number    78    X-Coord=   0.000     Y-Coord=   13.20    
 S-xx  =   0.4068E-01 S-yy  =   0.2300     S-xy  =  -0.4198E-02 S-zz  =   0.7851E-01
 S-max =   0.2301     S-min =   0.4059E-01 Angle =   -88.73    
 S-eff =   0.1737     Eps.  =    0.000     dgama =    0.000    

 Node number    79    X-Coord=   4.998     Y-Coord=   12.20    
 S-xx  =  -0.3247E-03 S-yy  =   0.3160     S-xy  =  -0.1066E-01 S-zz  =   0.9155E-01
 S-max =   0.3164     S-min =  -0.6834E-03 Angle =   -88.07    
 S-eff =   0.2825     Eps.  =    0.000     dgama =    0.000    

 Node number    80    X-Coord=  0.9998     Y-Coord=   13.20    
 S-xx  =   0.3730E-01 S-yy  =   0.2358     S-xy  =  -0.1156E-01 S-zz  =   0.7920E-01
 S-max =   0.2365     S-min =   0.3663E-01 Angle =   -86.68    
 S-eff =   0.1823     Eps.  =    0.000     dgama =    0.000    

 Node number    81    X-Coord=   1.999     Y-Coord=   13.20    
 S-xx  =   0.2813E-01 S-yy  =   0.2512     S-xy  =  -0.1951E-01 S-zz  =   0.8102E-01
 S-max =   0.2529     S-min =   0.2643E-01 Angle =   -85.04    
 S-eff =   0.2047     Eps.  =    0.000     dgama =    0.000    

 Node number    82    X-Coord=   2.999     Y-Coord=   13.20    
 S-xx  =   0.1598E-01 S-yy  =   0.2712     S-xy  =  -0.2085E-01 S-zz  =   0.8328E-01
 S-max =   0.2729     S-min =   0.1429E-01 Angle =   -85.36    
 S-eff =   0.2319     Eps.  =    0.000     dgama =    0.000    

 Node number    83    X-Coord=   3.999     Y-Coord=   13.20    
 S-xx  =   0.5094E-02 S-yy  =   0.2876     S-xy  =  -0.1381E-01 S-zz  =   0.8489E-01
 S-max =   0.2883     S-min =   0.4421E-02 Angle =   -87.21    
 S-eff =   0.2534     Eps.  =    0.000     dgama =    0.000    

 Node number    84    X-Coord=   4.998     Y-Coord=   13.20    
 S-xx  =   0.1269E-02 S-yy  =   0.2932     S-xy  =  -0.6587E-02 S-zz  =   0.8538E-01
 S-max =   0.2933     S-min =   0.1120E-02 Angle =   -88.71    
 S-eff =   0.2605     Eps.  =    0.000     dgama =    0.000    

 Node number    85    X-Coord=   0.000     Y-Coord=   14.20    
 S-xx  =   0.3564E-01 S-yy  =   0.2396     S-xy  =  -0.1910E-02 S-zz  =   0.7983E-01
 S-max =   0.2396     S-min =   0.3563E-01 Angle =   -89.46    
 S-eff =   0.1859     Eps.  =    0.000     dgama =    0.000    

 Node number    86    X-Coord=  0.9997     Y-Coord=   14.20    
 S-xx  =   0.3261E-01 S-yy  =   0.2440     S-xy  =  -0.5560E-02 S-zz  =   0.8020E-01
 S-max =   0.2441     S-min =   0.3246E-01 Angle =   -88.49    
 S-eff =   0.1923     Eps.  =    0.000     dgama =    0.000    

 Node number    87    X-Coord=   1.999     Y-Coord=   14.20    
 S-xx  =   0.2443E-01 S-yy  =   0.2554     S-xy  =  -0.9362E-02 S-zz  =   0.8115E-01
 S-max =   0.2558     S-min =   0.2405E-01 Angle =   -87.68    
 S-eff =   0.2091     Eps.  =    0.000     dgama =    0.000    

 Node number    88    X-Coord=   2.999     Y-Coord=   14.20    
 S-xx  =   0.1371E-01 S-yy  =   0.2693     S-xy  =  -0.9958E-02 S-zz  =   0.8208E-01
 S-max =   0.2697     S-min =   0.1332E-01 Angle =   -87.77    
 S-eff =   0.2299     Eps.  =    0.000     dgama =    0.000    

 Node number    89    X-Coord=   3.999     Y-Coord=   14.20    
 S-xx  =   0.4285E-02 S-yy  =   0.2791     S-xy  =  -0.6549E-02 S-zz  =   0.8219E-01
 S-max =   0.2793     S-min =   0.4129E-02 Angle =   -88.64    
 S-eff =   0.2456     Eps.  =    0.000     dgama =    0.000    

 Node number    90    X-Coord=   4.998     Y-Coord=   14.20    
 S-xx  =   0.1965E-02 S-yy  =   0.2805     S-xy  =  -0.3131E-02 S-zz  =   0.8192E-01
 S-max =   0.2805     S-min =   0.1930E-02 Angle =   -89.36    
 S-eff =   0.2485     Eps.  =    0.000     dgama =    0.000    

 Node number    91    X-Coord=   0.000     Y-Coord=   15.20    
 S-xx  =   0.3381E-01 S-yy  =   0.2427     S-xy  =   0.3078E-12 S-zz  =   0.8019E-01
 S-max =   0.2427     S-min =   0.3381E-01 Angle =    90.00    
 S-eff =   0.1900     Eps.  =    0.000     dgama =    0.000    

 Node number    92    X-Coord=  0.9997     Y-Coord=   15.20    
 S-xx  =   0.3090E-01 S-yy  =   0.2466     S-xy  =  -0.1071E-02 S-zz  =   0.8048E-01
 S-max =   0.2466     S-min =   0.3090E-01 Angle =   -89.72    
 S-eff =   0.1957     Eps.  =    0.000     dgama =    0.000    

 Node number    93    X-Coord=   1.999     Y-Coord=   15.20    
 S-xx  =   0.2308E-01 S-yy  =   0.2567     S-xy  =  -0.1926E-02 S-zz  =   0.8114E-01
 S-max =   0.2567     S-min =   0.2306E-01 Angle =   -89.53    
 S-eff =   0.2107     Eps.  =    0.000     dgama =    0.000    

 Node number    94    X-Coord=   2.999     Y-Coord=   15.20    
 S-xx  =   0.1288E-01 S-yy  =   0.2687     S-xy  =  -0.2371E-02 S-zz  =   0.8166E-01
 S-max =   0.2687     S-min =   0.1286E-01 Angle =   -89.47    
 S-eff =   0.2294     Eps.  =    0.000     dgama =    0.000    

 Node number    95    X-Coord=   3.999     Y-Coord=   15.20    
 S-xx  =   0.3996E-02 S-yy  =   0.2764     S-xy  =  -0.2328E-02 S-zz  =   0.8130E-01
 S-max =   0.2764     S-min =   0.3976E-02 Angle =   -89.51    
 S-eff =   0.2431     Eps.  =    0.000     dgama =    0.000    

 Node number    96    X-Coord=   4.998     Y-Coord=   15.20    
 S-xx  =   0.2162E-02 S-yy  =   0.2764     S-xy  =  -0.1841E-02 S-zz  =   0.8080E-01
 S-max =   0.2765     S-min =   0.2150E-02 Angle =   -89.62    
 S-eff =   0.2447     Eps.  =    0.000     dgama =    0.000    




 INCREMENT NUMBER    5
 =====================


 Total load factor ............... =    0.300000    
 Incremental load factor ......... =    0.100000    
 Convergence tolerence ........... =    0.100000E-06
 Max. No. of iterations .......... =    10

 Output control flags for results
        ( 0 - No, 1 - Yes )
 Displacements...................... =   1
 Reactions.......................... =   1
 State variables at gauss points.... =   0
 State variables at nodes........... =   1
 Output to re-start file............ =   0




 INCREMENT NUMBER    5                   TOTAL LOAD FACTOR =   0.300000    
 --------------------------------------------------------------------------
                          relative residual             maximum residual
    iteration                 norm (%)                       norm       
 --------------------------------------------------------------------------
        1                      23.3660                     0.145242    
        2                      3.22558                     0.179716E-01
        3                     0.694927E-01                 0.475882E-03
        4                     0.305811E-04                 0.196314E-06
        5                     0.367775E-10                 0.144324E-12
 --------------------------------------------------------------------------
                                  INCREMENTAL LOAD FACTOR =   0.100000    
 --------------------------------------------------------------------------


 Results for load increment   5 Load factor =   0.300000    
 ===========================================================

 Converged solution at iteration number =    5


 Displacement of structure from initial configuration
 ====================================================

 Node       X-Disp         Y-Disp
    1      0.00000        0.00000    
    2    -0.430012E-01    0.00000    
    3      0.00000       0.273787E-01
    4    -0.966619E-01   0.129102    
    5      0.00000       0.158764    
    6    -0.136069       0.293313    
    7    -0.120627       0.285565    
    8    -0.763652E-01   0.195569    
    9    -0.100073       0.277844    
   10    -0.134750       0.273572    
   11      0.00000       0.240771    
   12    -0.116272       0.274788    
   13    -0.478499E-01   0.250857    
   14    -0.957822E-01   0.274761    
   15    -0.715037E-01   0.276812    
   16      0.00000       0.279107    
   17    -0.135165       0.256428    
   18    -0.166007E-01   0.281416    
   19    -0.116114       0.255885    
   20    -0.744713E-01   0.275053    
   21    -0.958137E-01   0.256194    
   22    -0.294759E-01   0.285228    
   23      0.00000       0.291003    
   24    -0.135503       0.236841    
   25    -0.748893E-01   0.256918    
   26    -0.399826E-01   0.279828    
   27    -0.116021       0.236822    
   28    -0.512347E-02   0.291460    
   29    -0.962722E-01   0.236555    
   30    -0.836913E-02   0.290916    
   31    -0.487281E-01   0.261074    
   32    -0.752421E-01   0.237047    
   33    -0.107066E-01   0.286491    
   34      0.00000       0.294241    
   35    -0.219054E-02   0.293702    
   36    -0.364402E-02   0.291731    
   37    -0.543656E-01   0.239825    
   38    -0.197533E-01   0.272844    
   39    -0.433781E-02   0.288455    
   40      0.00000       0.294910    
   41    -0.654046E-03   0.294276    
   42    -0.364643E-01   0.252812    
   43    -0.628045E-02   0.284069    
   44    -0.126666E-02   0.292474    
   45    -0.203779E-02   0.290017    
   46    -0.169919E-01   0.272121    
   47      0.00000       0.295104    
   48    -0.147606E-03   0.294611    
   49    -0.299108E-02   0.287870    
   50    -0.449017E-03   0.293295    
   51    -0.994243E-03   0.291576    
   52    -0.564330E-02   0.284654    
   53    -0.178035E-02   0.290038    
   54      0.00000       0.295362    
   55    -0.305182E-04   0.295026    
   56    -0.200912E-03   0.294125    
   57    -0.278028E-02   0.288777    
   58    -0.601038E-03   0.292954    
   59    -0.120773E-02   0.291840    
   60      0.00000       0.295807    
   61    -0.442037E-04   0.295583    
   62    -0.197694E-03   0.294986    
   63    -0.196743E-02   0.291080    
   64    -0.522511E-03   0.294196    
   65    -0.103265E-02   0.293453    
   66      0.00000       0.296428    
   67    -0.105026E-03   0.296284    
   68    -0.171474E-02   0.293063    
   69    -0.289789E-03   0.295894    
   70    -0.610290E-03   0.295381    
   71    -0.108628E-02   0.294929    
   72      0.00000       0.297195    
   73    -0.174764E-03   0.297104    
   74    -0.168036E-02   0.294758    
   75    -0.410904E-03   0.296860    
   76    -0.752638E-03   0.296547    
   77    -0.121019E-02   0.296290    
   78      0.00000       0.298070    
   79    -0.175120E-02   0.296235    
   80    -0.235015E-03   0.298018    
   81    -0.518332E-03   0.297878    
   82    -0.882913E-03   0.297703    
   83    -0.133419E-02   0.297569    
   84    -0.183951E-02   0.297563    
   85      0.00000       0.299017    
   86    -0.274665E-03   0.298993    
   87    -0.589293E-03   0.298930    
   88    -0.970322E-03   0.298853    
   89    -0.141896E-02   0.298797    
   90    -0.190547E-02   0.298802    
   91      0.00000       0.300000    
   92    -0.288359E-03   0.300000    
   93    -0.613921E-03   0.300000    
   94    -0.100064E-02   0.300000    
   95    -0.144878E-02   0.300000    
   96    -0.192916E-02   0.300000    


 Reactions
 =========

 Node      X-Force          Y-Force
    1    -0.254891        -0.462896    
    2      0.00000        -0.818337    
    3    -0.413521          0.00000    
    5    -0.181051          0.00000    
   11     0.251943E-02      0.00000    
   16     0.161991          0.00000    
   23     0.338634          0.00000    
   34     0.397376          0.00000    
   40     0.204330          0.00000    
   47     0.297181E-01      0.00000    
   54    -0.337509E-01      0.00000    
   60    -0.526323E-01      0.00000    
   66    -0.540423E-01      0.00000    
   72    -0.486069E-01      0.00000    
   78    -0.418606E-01      0.00000    
   85    -0.367631E-01      0.00000    
   91    -0.174495E-01     0.119486    
   92      0.00000         0.242614    
   93      0.00000         0.252032    
   94      0.00000         0.263000    
   95      0.00000         0.269420    
   96      0.00000         0.134681    
       ---------------  ---------------
 Totals   0.154324E-12     0.122680E-12


 Averaged nodal stresses and other state variables for group number  1
 =====================================================================

 Node number     1    X-Coord=   0.000     Y-Coord=   0.000    
 S-xx  =   0.4353     S-yy  =   0.9711     S-xy  =   0.7400E-02 S-zz  =   0.7030    
 S-max =   0.9712     S-min =   0.4352     Angle =    89.21    
 S-eff =   0.4642     Eps.  =   0.3493E-01 dgama =   0.1729E-01

 Node number     2    X-Coord=  0.9570     Y-Coord=   0.000    
 S-xx  =   0.3701     S-yy  =   0.8084     S-xy  =   0.6590E-01 S-zz  =   0.5891    
 S-max =   0.8181     S-min =   0.3604     Angle =    81.63    
 S-eff =   0.3964     Eps.  =   0.1377     dgama =   0.4961E-01

 Node number     3    X-Coord=   0.000     Y-Coord=   1.027    
 S-xx  =   0.3786     S-yy  =   0.8396     S-xy  =   0.1279     S-zz  =   0.6091    
 S-max =   0.8726     S-min =   0.3455     Angle =    75.49    
 S-eff =   0.4565     Eps.  =   0.1147     dgama =   0.4002E-01

 Node number     4    X-Coord=  0.9033     Y-Coord=   1.129    
 S-xx  =   0.3097     S-yy  =   0.7333     S-xy  =   0.1429     S-zz  =   0.5214    
 S-max =   0.7770     S-min =   0.2660     Angle =    73.00    
 S-eff =   0.4426     Eps.  =   0.1111     dgama =   0.3950E-01

 Node number     5    X-Coord=   0.000     Y-Coord=   2.159    
 S-xx  =   0.1603     S-yy  =   0.6726     S-xy  =   0.5005E-01 S-zz  =   0.4166    
 S-max =   0.6775     S-min =   0.1555     Angle =    84.47    
 S-eff =   0.4520     Eps.  =   0.1038     dgama =   0.3756E-01

 Node number     6    X-Coord=   1.864     Y-Coord=  0.2933    
 S-xx  =   0.3163     S-yy  =   0.1295     S-xy  =   0.6515E-01 S-zz  =   0.2231    
 S-max =   0.3367     S-min =   0.1090     Angle =    17.45    
 S-eff =   0.1973     Eps.  =   0.9618E-01 dgama =   0.3590E-01

 Node number     7    X-Coord=   1.879     Y-Coord=   1.286    
 S-xx  =   0.3318     S-yy  =   0.1350     S-xy  =   0.1956     S-zz  =   0.2325    
 S-max =   0.4524     S-min =   0.1445E-01 Angle =    31.65    
 S-eff =   0.3793     Eps.  =   0.5120E-01 dgama =   0.1947E-01

 Node number     8    X-Coord=  0.9236     Y-Coord=   2.196    
 S-xx  =   0.1494     S-yy  =   0.5665     S-xy  =   0.1510     S-zz  =   0.3582    
 S-max =   0.6154     S-min =   0.1004     Angle =    72.05    
 S-eff =   0.4460     Eps.  =   0.7949E-01 dgama =   0.2792E-01

 Node number     9    X-Coord=   1.900     Y-Coord=   2.278    
 S-xx  =   0.2153     S-yy  =   0.1600     S-xy  =   0.2500     S-zz  =   0.1879    
 S-max =   0.4391     S-min =  -0.6389E-01 Angle =    41.85    
 S-eff =   0.4356     Eps.  =   0.3593E-01 dgama =   0.1284E-01

 Node number    10    X-Coord=   2.865     Y-Coord=  0.2736    
 S-xx  =   0.7692E-01 S-yy  =  -0.9209E-02 S-xy  =   0.2133E-01 S-zz  =   0.2274E-01
 S-max =   0.8191E-01 S-min =  -0.1420E-01 Angle =    13.17    
 S-eff =   0.8397E-01 Eps.  =  -0.9335E-03 dgama =  -0.8158E-03

 Node number    11    X-Coord=   0.000     Y-Coord=   3.241    
 S-xx  =  -0.2045E-01 S-yy  =   0.5047     S-xy  =   0.1030E-01 S-zz  =   0.2423    
 S-max =   0.5049     S-min =  -0.2066E-01 Angle =    88.88    
 S-eff =   0.4551     Eps.  =   0.5980E-01 dgama =   0.2097E-01

 Node number    12    X-Coord=   2.884     Y-Coord=   1.275    
 S-xx  =   0.1155     S-yy  =   0.2582E-01 S-xy  =   0.1614     S-zz  =   0.4676E-01
 S-max =   0.2382     S-min =  -0.9686E-01 Angle =    37.24    
 S-eff =   0.2911     Eps.  =   0.1564E-02 dgama =   0.1280E-02

 Node number    13    X-Coord=  0.9522     Y-Coord=   3.251    
 S-xx  =  -0.3594E-01 S-yy  =   0.4076     S-xy  =   0.1365     S-zz  =   0.1862    
 S-max =   0.4462     S-min =  -0.7459E-01 Angle =    74.19    
 S-eff =   0.4510     Eps.  =   0.5109E-01 dgama =   0.1771E-01

 Node number    14    X-Coord=   2.904     Y-Coord=   2.275    
 S-xx  =   0.1241     S-yy  =   0.7198E-01 S-xy  =   0.2215     S-zz  =   0.7257E-01
 S-max =   0.3211     S-min =  -0.1250     Angle =    41.64    
 S-eff =   0.3871     Eps.  =   0.4267E-02 dgama =   0.2098E-02

 Node number    15    X-Coord=   1.928     Y-Coord=   3.277    
 S-xx  =  -0.7253E-03 S-yy  =   0.1544     S-xy  =   0.2472     S-zz  =   0.7811E-01
 S-max =   0.3359     S-min =  -0.1822     Angle =    53.71    
 S-eff =   0.4487     Eps.  =   0.2710E-01 dgama =   0.1055E-01

 Node number    16    X-Coord=   0.000     Y-Coord=   4.279    
 S-xx  =  -0.1869     S-yy  =   0.3497     S-xy  =  -0.2048E-02 S-zz  =   0.8221E-01
 S-max =   0.3498     S-min =  -0.1869     Angle =   -89.78    
 S-eff =   0.4648     Eps.  =   0.2151E-01 dgama =   0.5095E-02

 Node number    17    X-Coord=   3.865     Y-Coord=  0.2564    
 S-xx  =   0.6345E-01 S-yy  =   0.3496E-01 S-xy  =   0.5471E-01 S-zz  =   0.2854E-01
 S-max =   0.1057     S-min =  -0.7333E-02 Angle =    37.70    
 S-eff =   0.1001     Eps.  =    0.000     dgama =    0.000    

 Node number    18    X-Coord=  0.9834     Y-Coord=   4.281    
 S-xx  =  -0.1708     S-yy  =   0.2547     S-xy  =   0.1585     S-zz  =   0.4326E-01
 S-max =   0.3072     S-min =  -0.2234     Angle =    71.66    
 S-eff =   0.4595     Eps.  =   0.2233E-01 dgama =   0.6704E-02

 Node number    19    X-Coord=   3.884     Y-Coord=   1.256    
 S-xx  =   0.8386E-01 S-yy  =   0.4281E-01 S-xy  =   0.5512E-01 S-zz  =   0.3674E-01
 S-max =   0.1222     S-min =   0.4516E-02 Angle =    34.79    
 S-eff =   0.1053     Eps.  =    0.000     dgama =    0.000    

 Node number    20    X-Coord=   2.926     Y-Coord=   3.275    
 S-xx  =   0.8434E-02 S-yy  =   0.1149     S-xy  =   0.2566     S-zz  =   0.4841E-01
 S-max =   0.3237     S-min =  -0.2004     Angle =    50.86    
 S-eff =   0.4541     Eps.  =   0.8679E-02 dgama =   0.4325E-02

 Node number    21    X-Coord=   3.904     Y-Coord=   2.256    
 S-xx  =   0.4153E-01 S-yy  =   0.1588     S-xy  =   0.1221     S-zz  =   0.5808E-01
 S-max =   0.2356     S-min =  -0.3529E-01 Angle =    57.82    
 S-eff =   0.2383     Eps.  =    0.000     dgama =    0.000    

 Node number    22    X-Coord=   1.971     Y-Coord=   4.285    
 S-xx  =  -0.1489     S-yy  =   0.1335     S-xy  =   0.2177     S-zz  =  -0.6035E-02
 S-max =   0.2518     S-min =  -0.2672     Angle =    61.48    
 S-eff =   0.4495     Eps.  =   0.1892E-01 dgama =   0.7707E-02

 Node number    23    X-Coord=   0.000     Y-Coord=   5.291    
 S-xx  =  -0.3514     S-yy  =   0.1848     S-xy  =   0.1773E-01 S-zz  =  -0.6661E-01
 S-max =   0.1853     S-min =  -0.3520     Angle =    88.11    
 S-eff =   0.4656     Eps.  =   0.5223E-02 dgama =   0.3477E-03

 Node number    24    X-Coord=   4.864     Y-Coord=  0.2368    
 S-xx  =  -0.3171E-01 S-yy  =   0.1986E-01 S-xy  =  -0.7899E-02 S-zz  =  -0.3435E-02
 S-max =   0.2104E-01 S-min =  -0.3289E-01 Angle =   -81.48    
 S-eff =   0.4677E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    25    X-Coord=   3.925     Y-Coord=   3.257    
 S-xx  =   0.5974E-02 S-yy  =   0.2353     S-xy  =   0.1924     S-zz  =   0.8539E-01
 S-max =   0.3446     S-min =  -0.1034     Angle =    60.39    
 S-eff =   0.3895     Eps.  =   0.1408E-02 dgama =   0.1167E-02

 Node number    26    X-Coord=   2.960     Y-Coord=   4.280    
 S-xx  =  -0.1248     S-yy  =   0.2012     S-xy  =   0.1992     S-zz  =   0.3688E-01
 S-max =   0.2956     S-min =  -0.2191     Angle =    64.65    
 S-eff =   0.4457     Eps.  =   0.1272E-01 dgama =   0.6289E-02

 Node number    27    X-Coord=   4.884     Y-Coord=   1.237    
 S-xx  =   0.3827E-01 S-yy  =  -0.1165E-02 S-xy  =   0.4389E-01 S-zz  =   0.1076E-01
 S-max =   0.6666E-01 S-min =  -0.2956E-01 Angle =    32.90    
 S-eff =   0.8370E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    28    X-Coord=  0.9949     Y-Coord=   5.291    
 S-xx  =  -0.2959     S-yy  =   0.1146     S-xy  =   0.1619     S-zz  =  -0.7143E-01
 S-max =   0.1707     S-min =  -0.3521     Angle =    70.86    
 S-eff =   0.4532     Eps.  =   0.5316E-02 dgama =   0.9486E-03

 Node number    29    X-Coord=   4.904     Y-Coord=   2.237    
 S-xx  =   0.3579E-01 S-yy  =   0.1249     S-xy  =   0.6106E-01 S-zz  =   0.4660E-01
 S-max =   0.1559     S-min =   0.4761E-02 Angle =    63.06    
 S-eff =   0.1352     Eps.  =    0.000     dgama =    0.000    

 Node number    30    X-Coord=   1.992     Y-Coord=   5.291    
 S-xx  =  -0.2182     S-yy  =   0.9606E-01 S-xy  =   0.1854     S-zz  =  -0.4724E-01
 S-max =   0.1820     S-min =  -0.3041     Angle =    65.14    
 S-eff =   0.4212     Eps.  =   0.5199E-02 dgama =   0.1823E-02

 Node number    31    X-Coord=   3.951     Y-Coord=   4.261    
 S-xx  =  -0.8708E-01 S-yy  =   0.3910     S-xy  =   0.1171     S-zz  =   0.1421    
 S-max =   0.4181     S-min =  -0.1142     Angle =    76.95    
 S-eff =   0.4612     Eps.  =   0.7717E-02 dgama =   0.4730E-02

 Node number    32    X-Coord=   4.925     Y-Coord=   3.237    
 S-xx  =  -0.1192E-01 S-yy  =   0.3059     S-xy  =   0.9509E-01 S-zz  =   0.9020E-01
 S-max =   0.3322     S-min =  -0.3819E-01 Angle =    74.55    
 S-eff =   0.3257     Eps.  =  -0.7837E-04 dgama =  -0.4879E-04

 Node number    33    X-Coord=   2.989     Y-Coord=   5.286    
 S-xx  =  -0.1147     S-yy  =   0.2473     S-xy  =   0.9107E-01 S-zz  =   0.6331E-01
 S-max =   0.2689     S-min =  -0.1363     Angle =    76.64    
 S-eff =   0.3509     Eps.  =   0.7564E-02 dgama =   0.3642E-02

 Node number    34    X-Coord=   0.000     Y-Coord=   6.294    
 S-xx  =  -0.4030     S-yy  =   0.8216E-01 S-xy  =  -0.3326E-01 S-zz  =  -0.1055    
 S-max =   0.8443E-01 S-min =  -0.4052     Angle =   -86.10    
 S-eff =   0.4276     Eps.  =   0.6376E-03 dgama =   0.5875E-06

 Node number    35    X-Coord=  0.9978     Y-Coord=   6.294    
 S-xx  =  -0.3510     S-yy  =   0.7803E-01 S-xy  =   0.5961E-01 S-zz  =  -0.8710E-01
 S-max =   0.8616E-01 S-min =  -0.3591     Angle =    82.23    
 S-eff =   0.3888     Eps.  =   0.3426E-03 dgama =  -0.1096E-05

 Node number    36    X-Coord=   1.996     Y-Coord=   6.292    
 S-xx  =  -0.1867     S-yy  =   0.1046     S-xy  =   0.7055E-01 S-zz  =  -0.2549E-01
 S-max =   0.1207     S-min =  -0.2029     Angle =    77.08    
 S-eff =   0.2807     Eps.  =   0.3393E-04 dgama =  -0.1580E-04

 Node number    37    X-Coord=   4.946     Y-Coord=   4.240    
 S-xx  =  -0.5499E-01 S-yy  =   0.4764     S-xy  =  -0.2447E-01 S-zz  =   0.1918    
 S-max =   0.4775     S-min =  -0.5612E-01 Angle =   -87.37    
 S-eff =   0.4625     Eps.  =   0.5772E-02 dgama =   0.4121E-02

 Node number    38    X-Coord=   3.980     Y-Coord=   5.273    
 S-xx  =  -0.4029E-01 S-yy  =   0.4559     S-xy  =   0.4186E-01 S-zz  =   0.2016    
 S-max =   0.4594     S-min =  -0.4380E-01 Angle =    85.21    
 S-eff =   0.4358     Eps.  =   0.1302E-01 dgama =   0.6654E-02

 Node number    39    X-Coord=   2.996     Y-Coord=   6.288    
 S-xx  =  -0.9315E-01 S-yy  =   0.3409     S-xy  =   0.2058E-01 S-zz  =   0.8549E-01
 S-max =   0.3419     S-min =  -0.9412E-01 Angle =    87.29    
 S-eff =   0.3795     Eps.  =   0.1910E-03 dgama =   0.2317E-03

 Node number    40    X-Coord=   0.000     Y-Coord=   7.295    
 S-xx  =  -0.1767     S-yy  =  -0.2462E-02 S-xy  =  -0.5088E-01 S-zz  =  -0.5196E-01
 S-max =   0.1131E-01 S-min =  -0.1905     Angle =   -74.86    
 S-eff =   0.1788     Eps.  =    0.000     dgama =    0.000    

 Node number    41    X-Coord=  0.9993     Y-Coord=   7.294    
 S-xx  =  -0.1440     S-yy  =   0.3059E-01 S-xy  =  -0.1564E-01 S-zz  =  -0.3290E-01
 S-max =   0.3198E-01 S-min =  -0.1454     Angle =   -84.92    
 S-eff =   0.1555     Eps.  =    0.000     dgama =    0.000    

 Node number    42    X-Coord=   4.964     Y-Coord=   5.253    
 S-xx  =  -0.2000E-02 S-yy  =   0.5224     S-xy  =  -0.2831E-02 S-zz  =   0.2560    
 S-max =   0.5224     S-min =  -0.2016E-02 Angle =   -89.69    
 S-eff =   0.4542     Eps.  =   0.1696E-01 dgama =   0.8600E-02

 Node number    43    X-Coord=   3.994     Y-Coord=   6.284    
 S-xx  =  -0.9870E-02 S-yy  =   0.4718     S-xy  =  -0.8987E-02 S-zz  =   0.2124    
 S-max =   0.4720     S-min =  -0.1004E-01 Angle =   -88.93    
 S-eff =   0.4179     Eps.  =   0.6676E-02 dgama =   0.2941E-02

 Node number    44    X-Coord=   1.999     Y-Coord=   7.292    
 S-xx  =  -0.8442E-01 S-yy  =   0.1520     S-xy  =  -0.4241E-01 S-zz  =   0.1960E-01
 S-max =   0.1594     S-min =  -0.9180E-01 Angle =   -80.13    
 S-eff =   0.2180     Eps.  =    0.000     dgama =    0.000    

 Node number    45    X-Coord=   2.998     Y-Coord=   7.290    
 S-xx  =  -0.5493E-01 S-yy  =   0.3622     S-xy  =  -0.5088E-01 S-zz  =   0.8519E-01
 S-max =   0.3683     S-min =  -0.6104E-01 Angle =   -83.15    
 S-eff =   0.3781     Eps.  =  -0.1092E-03 dgama =  -0.6175E-04

 Node number    46    X-Coord=   4.983     Y-Coord=   6.272    
 S-xx  =  -0.8280E-02 S-yy  =   0.5187     S-xy  =   0.3965E-01 S-zz  =   0.2503    
 S-max =   0.5217     S-min =  -0.1125E-01 Angle =    85.72    
 S-eff =   0.4615     Eps.  =   0.1345E-01 dgama =   0.5802E-02

 Node number    47    X-Coord=   0.000     Y-Coord=   8.295    
 S-xx  =  -0.1933E-01 S-yy  =   0.4058E-01 S-xy  =  -0.3956E-01 S-zz  =   0.6162E-02
 S-max =   0.6024E-01 S-min =  -0.3899E-01 Angle =   -63.57    
 S-eff =   0.8606E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    48    X-Coord=  0.9999     Y-Coord=   8.295    
 S-xx  =  -0.1855E-01 S-yy  =   0.7772E-01 S-xy  =  -0.4751E-01 S-zz  =   0.1716E-01
 S-max =   0.9722E-01 S-min =  -0.3805E-01 Angle =   -67.69    
 S-eff =   0.1178     Eps.  =    0.000     dgama =    0.000    

 Node number    49    X-Coord=   3.997     Y-Coord=   7.288    
 S-xx  =  -0.2888E-01 S-yy  =   0.4816     S-xy  =  -0.3024E-01 S-zz  =   0.1665    
 S-max =   0.4834     S-min =  -0.3066E-01 Angle =   -86.62    
 S-eff =   0.4492     Eps.  =   0.8642E-03 dgama =   0.2569E-03

 Node number    50    X-Coord=   2.000     Y-Coord=   8.293    
 S-xx  =  -0.2036E-01 S-yy  =   0.1800     S-xy  =  -0.7882E-01 S-zz  =   0.4628E-01
 S-max =   0.2072     S-min =  -0.4766E-01 Angle =   -70.90    
 S-eff =   0.2233     Eps.  =    0.000     dgama =    0.000    

 Node number    51    X-Coord=   2.999     Y-Coord=   8.292    
 S-xx  =  -0.2555E-01 S-yy  =   0.3165     S-xy  =  -0.7270E-01 S-zz  =   0.8438E-01
 S-max =   0.3313     S-min =  -0.4036E-01 Angle =   -78.48    
 S-eff =   0.3276     Eps.  =    0.000     dgama =    0.000    

 Node number    52    X-Coord=   4.994     Y-Coord=   7.285    
 S-xx  =  -0.7162E-02 S-yy  =   0.4831     S-xy  =   0.7473E-01 S-zz  =   0.2134    
 S-max =   0.4942     S-min =  -0.1830E-01 Angle =    81.52    
 S-eff =   0.4445     Eps.  =   0.4864E-02 dgama =   0.1765E-02

 Node number    53    X-Coord=   3.998     Y-Coord=   8.290    
 S-xx  =  -0.2369E-01 S-yy  =   0.4402     S-xy  =  -0.4079E-01 S-zz  =   0.1216    
 S-max =   0.4438     S-min =  -0.2725E-01 Angle =   -85.01    
 S-eff =   0.4170     Eps.  =  -0.1453E-04 dgama =  -0.5398E-05

 Node number    54    X-Coord=   0.000     Y-Coord=   9.295    
 S-xx  =   0.3722E-01 S-yy  =   0.9841E-01 S-xy  =  -0.2687E-01 S-zz  =   0.3933E-01
 S-max =   0.1085     S-min =   0.2710E-01 Angle =   -69.35    
 S-eff =   0.7605E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    55    X-Coord=  1.0000     Y-Coord=   9.295    
 S-xx  =   0.3141E-01 S-yy  =   0.1255     S-xy  =  -0.4539E-01 S-zz  =   0.4550E-01
 S-max =   0.1438     S-min =   0.1308E-01 Angle =   -68.01    
 S-eff =   0.1179     Eps.  =    0.000     dgama =    0.000    

 Node number    56    X-Coord=   2.000     Y-Coord=   9.294    
 S-xx  =   0.1685E-01 S-yy  =   0.1981     S-xy  =  -0.7292E-01 S-zz  =   0.6235E-01
 S-max =   0.2238     S-min =  -0.8837E-02 Angle =   -70.59    
 S-eff =   0.2065     Eps.  =    0.000     dgama =    0.000    

 Node number    57    X-Coord=   4.997     Y-Coord=   8.289    
 S-xx  =  -0.2694E-01 S-yy  =   0.4853     S-xy  =   0.2636E-01 S-zz  =   0.1538    
 S-max =   0.4867     S-min =  -0.2829E-01 Angle =    87.06    
 S-eff =   0.4523     Eps.  =   0.6026E-03 dgama =   0.1442E-03

 Node number    58    X-Coord=   2.999     Y-Coord=   9.293    
 S-xx  =   0.1636E-02 S-yy  =   0.2923     S-xy  =  -0.7254E-01 S-zz  =   0.8524E-01
 S-max =   0.3094     S-min =  -0.1546E-01 Angle =   -76.74    
 S-eff =   0.2880     Eps.  =    0.000     dgama =    0.000    

 Node number    59    X-Coord=   3.999     Y-Coord=   9.292    
 S-xx  =  -0.3555E-03 S-yy  =   0.3826     S-xy  =  -0.4494E-01 S-zz  =   0.1109    
 S-max =   0.3878     S-min =  -0.5558E-02 Angle =   -83.40    
 S-eff =   0.3500     Eps.  =   0.7268E-07 dgama =    0.000    

 Node number    60    X-Coord=   0.000     Y-Coord=   10.30    
 S-xx  =   0.5386E-01 S-yy  =   0.1464     S-xy  =  -0.1790E-01 S-zz  =   0.5808E-01
 S-max =   0.1497     S-min =   0.5052E-01 Angle =   -79.43    
 S-eff =   0.9567E-01 Eps.  =    0.000     dgama =    0.000    

 Node number    61    X-Coord=  1.0000     Y-Coord=   10.30    
 S-xx  =   0.4813E-01 S-yy  =   0.1647     S-xy  =  -0.3587E-01 S-zz  =   0.6172E-01
 S-max =   0.1749     S-min =   0.3798E-01 Angle =   -74.20    
 S-eff =   0.1267     Eps.  =    0.000     dgama =    0.000    

 Node number    62    X-Coord=   2.000     Y-Coord=   10.29    
 S-xx  =   0.3367E-01 S-yy  =   0.2137     S-xy  =  -0.5908E-01 S-zz  =   0.7175E-01
 S-max =   0.2314     S-min =   0.1601E-01 Angle =   -73.36    
 S-eff =   0.1936     Eps.  =    0.000     dgama =    0.000    

 Node number    63    X-Coord=   4.998     Y-Coord=   9.291    
 S-xx  =  -0.1819E-01 S-yy  =   0.4467     S-xy  =  -0.1798E-01 S-zz  =   0.1242    
 S-max =   0.4473     S-min =  -0.1889E-01 Angle =   -87.79    
 S-eff =   0.4137     Eps.  =  -0.5425E-06 dgama =    0.000    

 Node number    64    X-Coord=   2.999     Y-Coord=   10.29    
 S-xx  =   0.1799E-01 S-yy  =   0.2794     S-xy  =  -0.6168E-01 S-zz  =   0.8623E-01
 S-max =   0.2932     S-min =   0.4161E-02 Angle =   -77.37    
 S-eff =   0.2580     Eps.  =    0.000     dgama =    0.000    

 Node number    65    X-Coord=   3.999     Y-Coord=   10.29    
 S-xx  =   0.6259E-02 S-yy  =   0.3492     S-xy  =  -0.4047E-01 S-zz  =   0.1031    
 S-max =   0.3539     S-min =   0.1549E-02 Angle =   -83.36    
 S-eff =   0.3142     Eps.  =    0.000     dgama =    0.000    

 Node number    66    X-Coord=   0.000     Y-Coord=   11.30    
 S-xx  =   0.5424E-01 S-yy  =   0.1823     S-xy  =  -0.1158E-01 S-zz  =   0.6861E-01
 S-max =   0.1834     S-min =   0.5321E-01 Angle =   -84.87    
 S-eff =   0.1232     Eps.  =    0.000     dgama =    0.000    

 Node number    67    X-Coord=  0.9999     Y-Coord=   11.30    
 S-xx  =   0.4945E-01 S-yy  =   0.1945     S-xy  =  -0.2662E-01 S-zz  =   0.7076E-01
 S-max =   0.1993     S-min =   0.4472E-01 Angle =   -79.92    
 S-eff =   0.1433     Eps.  =    0.000     dgama =    0.000    

 Node number    68    X-Coord=   4.998     Y-Coord=   10.29    
 S-xx  =  -0.9042E-02 S-yy  =   0.3947     S-xy  =  -0.1971E-01 S-zz  =   0.1118    
 S-max =   0.3956     S-min =  -0.1000E-01 Angle =   -87.21    
 S-eff =   0.3605     Eps.  =    0.000     dgama =    0.000    

 Node number    69    X-Coord=   2.000     Y-Coord=   11.30    
 S-xx  =   0.3704E-01 S-yy  =   0.2277     S-xy  =  -0.4466E-01 S-zz  =   0.7678E-01
 S-max =   0.2377     S-min =   0.2710E-01 Angle =   -77.45    
 S-eff =   0.1906     Eps.  =    0.000     dgama =    0.000    

 Node number    70    X-Coord=   2.999     Y-Coord=   11.30    
 S-xx  =   0.2130E-01 S-yy  =   0.2734     S-xy  =  -0.4782E-01 S-zz  =   0.8547E-01
 S-max =   0.2822     S-min =   0.1253E-01 Angle =   -79.61    
 S-eff =   0.2416     Eps.  =    0.000     dgama =    0.000    

 Node number    71    X-Coord=   3.999     Y-Coord=   11.29    
 S-xx  =   0.7031E-02 S-yy  =   0.3199     S-xy  =  -0.3204E-01 S-zz  =   0.9481E-01
 S-max =   0.3231     S-min =   0.3782E-02 Angle =   -84.21    
 S-eff =   0.2850     Eps.  =    0.000     dgama =    0.000    

 Node number    72    X-Coord=   0.000     Y-Coord=   12.30    
 S-xx  =   0.4832E-01 S-yy  =   0.2079     S-xy  =  -0.7283E-02 S-zz  =   0.7430E-01
 S-max =   0.2082     S-min =   0.4798E-01 Angle =   -87.39    
 S-eff =   0.1488     Eps.  =    0.000     dgama =    0.000    

 Node number    73    X-Coord=  0.9998     Y-Coord=   12.30    
 S-xx  =   0.4433E-01 S-yy  =   0.2162     S-xy  =  -0.1861E-01 S-zz  =   0.7555E-01
 S-max =   0.2182     S-min =   0.4234E-01 Angle =   -83.89    
 S-eff =   0.1618     Eps.  =    0.000     dgama =    0.000    

 Node number    74    X-Coord=   4.998     Y-Coord=   11.29    
 S-xx  =  -0.3291E-02 S-yy  =   0.3458     S-xy  =  -0.1516E-01 S-zz  =   0.9934E-01
 S-max =   0.3465     S-min =  -0.3948E-02 Angle =   -87.52    
 S-eff =   0.3119     Eps.  =    0.000     dgama =    0.000    

 Node number    75    X-Coord=   2.000     Y-Coord=   12.30    
 S-xx  =   0.3357E-01 S-yy  =   0.2388     S-xy  =  -0.3145E-01 S-zz  =   0.7899E-01
 S-max =   0.2435     S-min =   0.2886E-01 Angle =   -81.48    
 S-eff =   0.1945     Eps.  =    0.000     dgama =    0.000    

 Node number    76    X-Coord=   2.999     Y-Coord=   12.30    
 S-xx  =   0.1927E-01 S-yy  =   0.2692     S-xy  =  -0.3377E-01 S-zz  =   0.8367E-01
 S-max =   0.2737     S-min =   0.1479E-01 Angle =   -82.44    
 S-eff =   0.2323     Eps.  =    0.000     dgama =    0.000    

 Node number    77    X-Coord=   3.999     Y-Coord=   12.30    
 S-xx  =   0.6292E-02 S-yy  =   0.2977     S-xy  =  -0.2245E-01 S-zz  =   0.8815E-01
 S-max =   0.2994     S-min =   0.4572E-02 Angle =   -85.62    
 S-eff =   0.2632     Eps.  =    0.000     dgama =    0.000    

 Node number    78    X-Coord=   0.000     Y-Coord=   13.30    
 S-xx  =   0.4127E-01 S-yy  =   0.2249     S-xy  =  -0.4220E-02 S-zz  =   0.7719E-01
 S-max =   0.2250     S-min =   0.4118E-01 Angle =   -88.68    
 S-eff =   0.1687     Eps.  =    0.000     dgama =    0.000    

 Node number    79    X-Coord=   4.998     Y-Coord=   12.30    
 S-xx  =  -0.2410E-03 S-yy  =   0.3111     S-xy  =  -0.1079E-01 S-zz  =   0.9014E-01
 S-max =   0.3114     S-min =  -0.6148E-03 Angle =   -88.02    
 S-eff =   0.2780     Eps.  =    0.000     dgama =    0.000    

 Node number    80    X-Coord=  0.9998     Y-Coord=   13.30    
 S-xx  =   0.3783E-01 S-yy  =   0.2307     S-xy  =  -0.1171E-01 S-zz  =   0.7788E-01
 S-max =   0.2314     S-min =   0.3713E-01 Angle =   -86.54    
 S-eff =   0.1775     Eps.  =    0.000     dgama =    0.000    

 Node number    81    X-Coord=   1.999     Y-Coord=   13.30    
 S-xx  =   0.2852E-01 S-yy  =   0.2462     S-xy  =  -0.1976E-01 S-zz  =   0.7968E-01
 S-max =   0.2480     S-min =   0.2674E-01 Angle =   -84.86    
 S-eff =   0.2001     Eps.  =    0.000     dgama =    0.000    

 Node number    82    X-Coord=   2.999     Y-Coord=   13.30    
 S-xx  =   0.1619E-01 S-yy  =   0.2662     S-xy  =  -0.2109E-01 S-zz  =   0.8190E-01
 S-max =   0.2680     S-min =   0.1443E-01 Angle =   -85.21    
 S-eff =   0.2274     Eps.  =    0.000     dgama =    0.000    

 Node number    83    X-Coord=   3.999     Y-Coord=   13.30    
 S-xx  =   0.5157E-02 S-yy  =   0.2826     S-xy  =  -0.1396E-01 S-zz  =   0.8345E-01
 S-max =   0.2833     S-min =   0.4456E-02 Angle =   -87.13    
 S-eff =   0.2489     Eps.  =    0.000     dgama =    0.000    

 Node number    84    X-Coord=   4.998     Y-Coord=   13.30    
 S-xx  =   0.1344E-02 S-yy  =   0.2880     S-xy  =  -0.6657E-02 S-zz  =   0.8390E-01
 S-max =   0.2881     S-min =   0.1189E-02 Angle =   -88.67    
 S-eff =   0.2558     Eps.  =    0.000     dgama =    0.000    

 Node number    85    X-Coord=   0.000     Y-Coord=   14.30    
 S-xx  =   0.3604E-01 S-yy  =   0.2346     S-xy  =  -0.1918E-02 S-zz  =   0.7849E-01
 S-max =   0.2346     S-min =   0.3602E-01 Angle =   -89.45    
 S-eff =   0.1812     Eps.  =    0.000     dgama =    0.000    

 Node number    86    X-Coord=  0.9997     Y-Coord=   14.30    
 S-xx  =   0.3296E-01 S-yy  =   0.2390     S-xy  =  -0.5627E-02 S-zz  =   0.7886E-01
 S-max =   0.2391     S-min =   0.3281E-01 Angle =   -88.44    
 S-eff =   0.1876     Eps.  =    0.000     dgama =    0.000    

 Node number    87    X-Coord=   1.999     Y-Coord=   14.30    
 S-xx  =   0.2468E-01 S-yy  =   0.2504     S-xy  =  -0.9469E-02 S-zz  =   0.7978E-01
 S-max =   0.2508     S-min =   0.2429E-01 Angle =   -87.60    
 S-eff =   0.2045     Eps.  =    0.000     dgama =    0.000    

 Node number    88    X-Coord=   2.999     Y-Coord=   14.30    
 S-xx  =   0.1384E-01 S-yy  =   0.2643     S-xy  =  -0.1006E-01 S-zz  =   0.8067E-01
 S-max =   0.2647     S-min =   0.1344E-01 Angle =   -87.70    
 S-eff =   0.2253     Eps.  =    0.000     dgama =    0.000    

 Node number    89    X-Coord=   3.999     Y-Coord=   14.30    
 S-xx  =   0.4323E-02 S-yy  =   0.2740     S-xy  =  -0.6613E-02 S-zz  =   0.8071E-01
 S-max =   0.2741     S-min =   0.4161E-02 Angle =   -88.60    
 S-eff =   0.2410     Eps.  =    0.000     dgama =    0.000    

 Node number    90    X-Coord=   4.998     Y-Coord=   14.30    
 S-xx  =   0.2030E-02 S-yy  =   0.2752     S-xy  =  -0.3161E-02 S-zz  =   0.8039E-01
 S-max =   0.2752     S-min =   0.1994E-02 Angle =   -89.34    
 S-eff =   0.2437     Eps.  =    0.000     dgama =    0.000    

 Node number    91    X-Coord=   0.000     Y-Coord=   15.30    
 S-xx  =   0.3413E-01 S-yy  =   0.2378     S-xy  =   0.3108E-12 S-zz  =   0.7885E-01
 S-max =   0.2378     S-min =   0.3413E-01 Angle =    90.00    
 S-eff =   0.1854     Eps.  =    0.000     dgama =    0.000    

 Node number    92    X-Coord=  0.9997     Y-Coord=   15.30    
 S-xx  =   0.3120E-01 S-yy  =   0.2416     S-xy  =  -0.1098E-02 S-zz  =   0.7912E-01
 S-max =   0.2416     S-min =   0.3119E-01 Angle =   -89.70    
 S-eff =   0.1911     Eps.  =    0.000     dgama =    0.000    

 Node number    93    X-Coord=   1.999     Y-Coord=   15.30    
 S-xx  =   0.2329E-01 S-yy  =   0.2517     S-xy  =  -0.1974E-02 S-zz  =   0.7976E-01
 S-max =   0.2518     S-min =   0.2327E-01 Angle =   -89.50    
 S-eff =   0.2061     Eps.  =    0.000     dgama =    0.000    

 Node number    94    X-Coord=   2.999     Y-Coord=   15.30    
 S-xx  =   0.1299E-01 S-yy  =   0.2637     S-xy  =  -0.2431E-02 S-zz  =   0.8024E-01
 S-max =   0.2637     S-min =   0.1297E-01 Angle =   -89.44    
 S-eff =   0.2248     Eps.  =    0.000     dgama =    0.000    

 Node number    95    X-Coord=   3.999     Y-Coord=   15.30    
 S-xx  =   0.4026E-02 S-yy  =   0.2712     S-xy  =  -0.2391E-02 S-zz  =   0.7981E-01
 S-max =   0.2712     S-min =   0.4004E-02 Angle =   -89.49    
 S-eff =   0.2385     Eps.  =    0.000     dgama =    0.000    

 Node number    96    X-Coord=   4.998     Y-Coord=   15.30    
 S-xx  =   0.2224E-02 S-yy  =   0.2711     S-xy  =  -0.1900E-02 S-zz  =   0.7926E-01
 S-max =   0.2711     S-min =   0.2211E-02 Angle =   -89.60    
 S-eff =   0.2398     Eps.  =    0.000     dgama =    0.000    
