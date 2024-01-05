//
//  MM4TinkerParameters.swift
//  MM4
//
//  Created by Philip Turner on 9/11/23.
//

class MM4TinkerParameters {
  static let global = MM4TinkerParameters()
  
  init() {
    
  }
}

extension MM4TinkerParameters {
  static let sourceString = """
// Originated from Tinker software.
// License at: https://github.com/TinkerTools/tinker/blob/release/LICENSE.pdf

      ##############################
      ##                          ##
      ##  Force Field Definition  ##
      ##                          ##
      ##############################


forcefield              MM3-2000

bondunit                71.94
bond-cubic              -2.55
bond-quartic            3.793125     !! (7/12)*bond-cubic^2
angleunit               0.02191418
angle-cubic             -0.014
angle-quartic           0.000056
angle-pentic            -0.0000007
angle-sextic            0.000000022
strbndunit              2.51118
angangunit              -0.02191418
opbendtype              ALLINGER
opbendunit              0.02191418
opbend-cubic            -0.014
opbend-quartic          0.000056
opbend-pentic           -0.0000007
opbend-sextic           0.000000022
torsionunit             0.5
strtorunit              -5.9975
vdwtype                 MM3-HBOND
radiusrule              ARITHMETIC
radiustype              R-MIN
radiussize              RADIUS
epsilonrule             GEOMETRIC
a-expterm               184000.0
b-expterm               12.0
c-expterm               2.25
vdw-14-scale            1.0
chg-14-scale            1.0
electric                332.0538
dielectric              1.5


      #############################
      ##                         ##
      ##  Literature References  ##
      ##                         ##
      #############################


N. L. Allinger, Y. H. Yuh and J.-H. Lii, "Molecular Mechanics.
The MM3 Force Field for Hydrocarbons. 1", J. Am. Chem. Soc.,
111, 8551-8566 (1989)

J.-H. Lii and N. L. Allinger, "Molecular Mechanics. The MM3 Force
Field for Hydrocarbons. 2. Vibrational Frequencies and Thermodynamics",
J. Am. Chem. Soc., 111, 8566-8575 (1989)

J.-H. Lii and N. L. Allinger, "Molecular Mechanics. The MM3 Force
Field for Hydrocarbons. 3. The van der Waals' Potentials and Crystal
Data for Aliphatic and Aromatic Hydrocarbons", J. Am. Chem. Soc.,
111, 8576-8582 (1989)

N. L. Allinger, H. J. Geise, W. Pyckhout, L. A. Paquette and J. C.
Gallucci, "Structures of Norbornane and Dodecahedrane by Molecular
Mechanics Calculations (MM3), X-ray Crystallography, and Electron
Diffraction", J. Am. Chem. Soc., 111, 1106-1114 (1989)  [torsion-stretch]

N. L. Allinger, F. Li and L. Yan, "Molecular Mechanics. The MM3 Force
Field for Alkenes", J. Comput. Chem., 11, 848-867 (1990)

N. L. Allinger, F. Li, L. Yan and J. C. Tai, "Molecular Mechanics
(MM3) Calculations on Conjugated Hydrocarbons", J. Comput. Chem.,
11, 868-895 (1990)

J.-H. Lii and N. L. Allinger, "Directional Hydrogen Bonding in the
MM3 Force Field. I", J. Phys. Org. Chem., 7, 591-609 (1994)

J.-H. Lii and N. L. Allinger, "Directional Hydrogen Bonding in the
MM3 Force Field. II", J. Comput. Chem., 19, 1001-1016 (1998)

All parameters in this file are from the "MM3 PARAMETERS (2000)",
as provided by Prof. N. L. Allinger, University of Georgia


      #############################
      ##                         ##
      ##  Atom Type Definitions  ##
      ##                         ##
      #############################


atom          1    C     "CSP3 ALKANE"                  6    12.000    4
atom          2    C     "CSP2 ALKENE"                  6    12.000    3
atom          3    C     "CSP2 CARBONYL"                6    12.000    3
atom          4    C     "CSP ALKYNE"                   6    12.000    2
atom          5    H     "EXCEPT ON N,O,S"              1     1.008    1
atom          6    O     "C-O-H, C-O-C, O-O"            8    15.995    2
atom          7    O     "O=C CARBONYL"                 8    15.995    1
atom          8    N     "NSP3"                         7    14.003    3
atom          9    N     "NSP2"                         7    14.003    3
atom         10    N     "NSP"                          7    14.003    1
atom         11    F     "FLUORIDE"                     9    18.998    1
atom         12    Cl    "CHLORIDE"                    17    34.969    1
atom         13    Br    "BROMIDE"                     35    78.918    1
atom         14    I     "IODIDE"                      53   126.900    1
atom         15    S     "-S- SULFIDE"                 16    31.972    2
atom         16    S+    ">S+ SULFONIUM"               16    31.972    2
atom         17    S     ">S=O SULFOXIDE"              16    31.972    3
atom         18    S     ">SO2 SULFONE"                16    31.972    4
atom         19    Si    "SILANE"                      14    27.977    4
atom         20    *     "NOT USED"                     0     0.000    0
atom         21    H     "-OH ALCOHOL"                  1     1.008    1
atom         22    C     "CYCLOPROPANE"                 6    12.000    4
atom         23    H     "NH AMINE/IMINE"               1     1.008    1
atom         24    H     "COOH CARBOXYL"                1     1.008    1
atom         25    P     ">P- PHOSPHINE"               15    30.994    3
atom         26    B     ">B- TRIGONAL"                 5    11.009    3
atom         27    B     ">B< TETRAHEDRAL"              5    11.009    4
atom         28    H     "H-N-C=O AMIDE"                1     1.008    1
atom         29    C*    "RADICAL"                      6    12.000    3
atom         30    C+    "CARBONIUM ION"                6    12.000    3
atom         31    Ge    "GERMANIUM"                   32    73.922    2
atom         32    Sn    "TIN"                         50   117.902    2
atom         33    Pb    "LEAD (IV)"                   82   207.977    4
atom         34    Se    "SELENIUM"                    34    79.917    2
atom         35    Te    "TELLURIUM"                   52   129.907    2
atom         36    D     "DEUTERIUM"                    1     2.014    1
atom         37    N     "-N=C-/PYR (DELOCLZD)"         7    14.003    2
atom         38    C     "CSP2 CYCLOPROPENE"            6    12.000    3
atom         39    N+    "NSP3 AMMONIUM"                7    14.003    4
atom         40    N     "NSP2 PYRROLE"                 7    14.003    3
atom         41    O     "OSP2 FURAN"                   8    15.995    2
atom         42    S     "SSP2 THIOPHENE"              16    31.972    2
atom         43    N     "=N-O AZOXY (LOCAL)"           7    14.003    2
atom         44    H     "SH THIOL"                     1     1.008    1
atom         45    N     "AZIDE (CENTER N)"             7    14.003    2
atom         46    N     "NITRO"                        7    14.003    3
atom         47    O     "CARBOXYLATE ION"              8    15.995    1
atom         48    H     "AMMONIUM"                     1     1.008    1
atom         49    O     "EPOXY"                        8    15.995    2
atom         50    C     "BENZENE (LOCALIZED)"          6    12.000    3
atom         51    He    "HELIUM"                       2     4.003    0
atom         52    Ne    "NEON"                        10    20.179    0
atom         53    Ar    "ARGON"                       18    39.948    0
atom         54    Kr    "KRYPTON"                     36    83.800    0
atom         55    Xe    "XENON"                       54   131.300    0
atom         56    C     "CSP3 CYCLOBUTANE"             6    12.000    4
atom         57    C     "CSP2 CYCLOBUTENE"             6    12.000    3
atom         58    C     "C=O CYCLOBUTANONE"            6    12.000    3
atom         59    Mg    "MAGNESIUM"                   12    24.301    2
atom         60    P     "PHOSPHORUS (V)"              15    30.994    4
atom         61    Fe    "IRON (II)"                   26    55.847    2
atom         62    Fe    "IRON (III)"                  26    55.847    3
atom         63    Ni    "NICKEL (II)"                 28    58.710    2
atom         64    Ni    "NICKEL (III)"                28    58.710    3
atom         65    Co    "COBALT (II)"                 27    58.933    2
atom         66    Co    "COBALT (III)"                27    58.933    3
atom         67    C     "C=O CYCLOPROPANONE"           6    12.000    3
atom         68    C     "ALLENE CSP =C="               6    12.000    2
atom         69    O     "AMINE OXIDE OXYGEN"           8    15.995    1
atom         70    O     "KETONIUM OXYGEN"              8    15.995    1
atom         71    C     "KETONIUM CARBON"              6    12.000    2
atom         72    N     "=N- IMINE (LOCALZD)"          7    14.003    2
atom         73    H     "H-O ENOL/PHENOL"              1     1.008    1
atom         74    S     "S=C"                         16    31.972    1
atom         75    O     "O-H, O-C (CARBOXYL)"          8    15.995    2
atom         76    O     "O=C-C=O"                      8    15.995    1
atom         77    O     "O=C-O-H (ACID)"               8    15.995    1
atom         78    O     "O=C-O-C (ESTER)"              8    15.995    1
atom         79    O     "O=C-N< (AMIDE)"               8    15.995    1
atom         80    O     "O=C-X (HALIDE)"               8    15.995    1
atom         81    O     "O=C-C=C<"                     8    15.995    1
atom         82    O     "O=C-O-C=O"                    8    15.995    1
atom         83    O     "O=C(OH)(OH)"                  8    15.995    1
atom         84    O     "O=C(OH)(OC)"                  8    15.995    1
atom         85    O     "O=C(OH)(N<)"                  8    15.995    1
atom         86    O     "O=C(OH)(X)"                   8    15.995    1
atom         87    O     "O=C(OH)(C=C<)"                8    15.995    1
atom         88    O     "O=C(OH)(O-C=O)"               8    15.995    1
atom         89    O     "O=C(O-C)(OC)"                 8    15.995    1
atom         90    O     "O=C(O-C)(N<)"                 8    15.995    1
atom         91    O     "O=C(O-C)(X)"                  8    15.995    1
atom         92    O     "O=C(O-C)(C=C<)"               8    15.995    1
atom         93    O     "O=C(O-C)(O-C=O)"              8    15.995    1
atom         94    O     "O=C(N<)(N<)"                  8    15.995    1
atom         95    O     "O=C(N<)(X)"                   8    15.995    1
atom         96    O     "O=C(N<)(C=C<)"                8    15.995    1
atom         97    O     "O=C(N<)(O-C=O)"               8    15.995    1
atom         98    O     "O=C(X)(X)"                    8    15.995    1
atom         99    O     "O=C(X)(C=C<)"                 8    15.995    1
atom        100    O     "O=C(X)(O-C=O)"                8    15.995    1
atom        101    O     "O=C(C=C)(C=C)"                8    15.995    1
atom        102    O     "O=C(C=C)(O-C=O)"              8    15.995    1
atom        103    O     "O=C(O-C=O)(O-C=O)"            8    15.995    1
atom        104    S     "-S-S- DISULFIDE"             16    31.972    2
atom        105    S     "-S- POLYSULFIDE"             16    31.972    2
atom        106    C     "=C=O KETENE"                  6    12.000    2
atom        107    N     "-N=N- AZO (LOCAL)"            7    14.003    2
atom        108    N     "=N-OH OXIME"                  7    14.003    2
atom        109    N     "-N= AZOXY (LOCAL)"            7    14.003    2
atom        110    N+    "-N(+)= IMMINIUM"              7    14.003    2
atom        111    N+    "-N(+)= PYRIDINIUM"            7    14.003    2
atom        112    *     "NOT USED"                     0     0.000    0
atom        113    CH    "C FERROCENE-H"                6    12.000    3
atom        114    CP    "C FERROCENE-C"                6    12.000    3
atom        115    O     "O=C(C=O)(C=O)"                8    15.995    1
atom        116    O     "O=C(C=O)(OH)"                 8    15.995    1
atom        117    O     "O=C(C=O)(OC)"                 8    15.995    1
atom        118    O     "O=C(C=O)(N<)"                 8    15.995    1
atom        119    O     "O=C(C=O)(X)"                  8    15.995    1
atom        120    O     "O=C(C=O)(C=C<)"               8    15.995    1
atom        121    O     "O=C(C=O)(O-C=O)"              8    15.995    1
atom        122    *     "NOT USED"                     0     0.000    0
atom        123    *     "NOT USED"                     0     0.000    0
atom        124    H     "H-C ACETYLENE"                1     1.008    1
atom        125    Ca    "CALCIUM"                     20    39.963    0
atom        126    Sr    "STRONTIUM"                   38    87.906    0
atom        127    Ba    "BARIUM"                      56   135.905    0
atom        128    La    "LANTHANUM"                   57   138.906    0
atom        129    Ce    "CERIUM"                      58   139.905    0
atom        130    Pr    "PRAESEODYMIUM"               59   140.907    0
atom        131    Nd    "NEODYMIUM"                   60   141.908    0
atom        132    Pm    "PROMETHIUM"                  61   145.000    0
atom        133    Sm    "SAMARIUM"                    62   151.920    0
atom        134    Eu    "EUROPIUM"                    63   152.921    0
atom        135    Gd    "GADOLINIUM"                  64   157.924    0
atom        136    Tb    "TERBIUM"                     65   159.925    0
atom        137    Dy    "DYSPROSIUM"                  66   163.929    0
atom        138    Ho    "HOLMIUM"                     67   164.930    0
atom        139    Er    "ERBIUM"                      68   165.930    0
atom        140    Tm    "THULIUM"                     69   168.934    0
atom        141    Yb    "YTTERBIUM"                   70   173.939    0
atom        142    Lu    "LUTETIUM"                    71   174.941    0
atom        143    N     "=N-O AXOXY (DELOC)"           7    14.003    2
atom        144    N     "-N= AZOXY (DELOC)"            7    14.003    2
atom        145    O     ">N-OH HYDROXYAMINE"           8    15.995    2
atom        146    N     ">N-OH HYDROXYAMINE"           7    14.003    3
atom        147    *     "NOT USED"                     0     0.000    0
atom        148    O     "-O- ANHYDRIDE (LOCL)"         8    15.995    2
atom        149    O     "-O- ANHYDRIDE (DELO)"         8    15.995    2
atom        150    N     "NSP3 HYDRAZINE"               7    14.003    3
atom        151    N     "NSP2 AMIDE (DELOC)"           7    14.003    3
atom        152    *     "NOT USED"                     0     0.000    0
atom        153    P     ">P=O PHOSPHATE"              15    30.994    4
atom        154    S     ">SO2 SULFONAMIDE"            16    31.972    4
atom        155    N     "NSP3 SULFONAMIDE"             7    14.003    3
atom        156    *     "NOT USED"                     0     0.000    0
atom        157    *     "NOT USED"                     0     0.000    0
atom        158    *     "NOT USED"                     0     0.000    0
atom        159    O     "O-P=O PHOSPHATE"              8    15.995    2
atom        160    C     "C=C NUCLEIC ACID"             6    12.000    3
atom        161    C     "C=C NUCLEIC ACID"             6    12.000    3
atom        162    C     "C=O NUCLEIC ACID"             6    12.000    3
atom        163    Li    "LITHIUM"                      3     6.941    1
atom        164    N     "NSP3 LI-AMIDE"                7    14.003    3


      ################################
      ##                            ##
      ##  Van der Waals Parameters  ##
      ##                            ##
      ################################


vdw           1               2.0400     0.0270
vdw           2               1.9600     0.0560
vdw           3               1.9400     0.0560
vdw           4               1.9400     0.0560
vdw           5               1.6200     0.0200      0.923
vdw           6               1.8200     0.0590
vdw           7               1.8200     0.0590
vdw           8               1.9300     0.0430
vdw           9               1.9300     0.0430
vdw          10               1.9300     0.0430
vdw          11               1.7100     0.0750
vdw          12               2.0700     0.2400
vdw          13               2.2200     0.3200
vdw          14               2.3600     0.4240
vdw          15               2.1500     0.2020
vdw          16               2.1500     0.2020
vdw          17               2.1500     0.2020
vdw          18               2.1500     0.2020
vdw          19               2.2900     0.1400
vdw          20               0.0000     0.0000
vdw          21               1.6000     0.0160      0.923
vdw          22               1.9400     0.0450
vdw          23               1.6000     0.0180      0.923
vdw          24               0.9000     0.0150      0.923
vdw          25               2.2200     0.1680
vdw          26               2.1500     0.0140
vdw          27               2.1500     0.0140
vdw          28               1.6000     0.0150      0.923
vdw          29               1.9400     0.0300
vdw          30               1.9400     0.0560
vdw          31               2.4400     0.2000
vdw          32               2.5900     0.2700
vdw          33               2.7400     0.3400
vdw          34               2.2900     0.2760
vdw          35               2.4400     0.3680
vdw          36               1.6170     0.0200      0.923
vdw          37               1.9300     0.0430
vdw          38               1.9600     0.0560
vdw          39               1.9300     0.0430
vdw          40               1.9300     0.0430
vdw          41               1.8200     0.0590
vdw          42               2.1500     0.2020
vdw          43               1.9300     0.0430
vdw          44               1.6200     0.0200      0.923
vdw          45               1.9300     0.0430
vdw          46               1.9300     0.0430
vdw          47               1.8200     0.0590
vdw          48               1.6000     0.0340      0.923
vdw          49               1.8200     0.0590
vdw          50               1.9600     0.0560
vdw          51               1.5300     0.0260
vdw          52               1.6000     0.0900
vdw          53               1.9900     0.2680
vdw          54               2.1500     0.3580
vdw          55               2.2800     0.4950
vdw          56               2.0400     0.0270
vdw          57               1.9600     0.0560
vdw          58               1.9400     0.0560
vdw          59               2.2000     0.0150
vdw          60               2.2000     0.1680
vdw          61               2.2000     0.0200
vdw          62               2.2000     0.0200
vdw          63               2.2000     0.0200
vdw          64               2.2000     0.0200
vdw          65               2.2000     0.0200
vdw          66               2.2000     0.0200
vdw          67               1.9400     0.0560
vdw          68               1.9400     0.0560
vdw          69               1.8200     0.0590
vdw          70               1.8200     0.0590
vdw          71               1.9400     0.0560
vdw          72               1.9300     0.0430
vdw          73               1.6000     0.0150      0.923
vdw          74               2.1500     0.2020
vdw          75               1.8200     0.0590
vdw          76               1.8200     0.0590
vdw          77               1.8200     0.0590
vdw          78               1.8200     0.0590
vdw          79               1.8200     0.0590
vdw          80               1.8200     0.0590
vdw          81               1.8200     0.0590
vdw          82               1.8200     0.0590
vdw          83               1.8200     0.0590
vdw          84               1.8200     0.0590
vdw          85               1.8200     0.0590
vdw          86               1.8200     0.0590
vdw          87               1.8200     0.0590
vdw          88               1.8200     0.0590
vdw          89               1.8200     0.0590
vdw          90               1.8200     0.0590
vdw          91               1.8200     0.0590
vdw          92               1.8200     0.0590
vdw          93               1.8200     0.0590
vdw          94               1.8200     0.0590
vdw          95               1.8200     0.0590
vdw          96               1.8200     0.0590
vdw          97               1.8200     0.0590
vdw          98               1.8200     0.0590
vdw          99               1.8200     0.0590
vdw         100               1.8200     0.0590
vdw         101               1.8200     0.0590
vdw         102               1.8200     0.0590
vdw         103               1.8200     0.0590
vdw         104               2.1500     0.2020
vdw         105               2.1500     0.2020
vdw         106               1.9400     0.0560
vdw         107               1.9300     0.0430
vdw         108               1.9300     0.0430
vdw         109               1.9300     0.0430
vdw         110               1.9400     0.0440
vdw         111               1.9300     0.0430
vdw         112               0.0000     0.0000
vdw         113               1.9600     0.0560
vdw         114               1.9600     0.0560
vdw         115               1.8200     0.0590
vdw         116               1.8200     0.0590
vdw         117               1.8200     0.0590
vdw         118               1.8200     0.0590
vdw         119               1.8200     0.0590
vdw         120               1.8200     0.0590
vdw         121               1.8200     0.0590
vdw         122               0.0000     0.0000
vdw         123               0.0000     0.0000
vdw         124               1.6200     0.0200      0.923
vdw         125               2.8100     0.1340
vdw         126               3.0000     0.1850
vdw         127               3.0700     0.2330
vdw         128               2.7800     0.3120
vdw         129               2.7400     0.3400
vdw         130               2.7300     0.3490
vdw         131               2.7300     0.3490
vdw         132               2.7200     0.3580
vdw         133               2.7100     0.3650
vdw         134               2.9400     0.2710
vdw         135               2.7100     0.3650
vdw         136               2.7000     0.3720
vdw         137               2.6900     0.3790
vdw         138               2.6700     0.3930
vdw         139               2.6700     0.3930
vdw         140               2.6700     0.3930
vdw         141               2.7900     0.2980
vdw         142               2.6500     0.4070
vdw         143               1.9300     0.0430
vdw         144               1.9300     0.0430
vdw         145               1.8200     0.0590
vdw         146               1.9300     0.0430
vdw         147               0.0000     0.0000
vdw         148               1.8200     0.0600
vdw         149               1.8200     0.0600
vdw         150               1.9300     0.0430
vdw         151               1.9300     0.0430
vdw         152               0.0000     0.0000
vdw         153               2.2200     0.1680
vdw         154               2.1500     0.2020
vdw         155               1.9300     0.0430
vdw         159               1.8200     0.0590
vdw         160               1.9600     0.0560
vdw         161               1.9600     0.0560
vdw         162               1.9400     0.0560
vdw         163               2.5500     0.0070
vdw         164               1.9300     0.0430


      #####################################
      ##                                 ##
      ##  Van der Waals Pair Parameters  ##
      ##                                 ##
      #####################################


vdwpair       1    5          3.5600     0.0230
vdwpair       1   36          3.5570     0.0230
vdwpair      19  113          2.4500    15.0000
vdwpair      19  114          2.4500    15.0000
vdwpair      31  113          2.5000    15.0000
vdwpair      31  114          2.5000    15.0000
vdwpair      32  113          2.7100    15.0000
vdwpair      32  114          2.7100    15.0000
vdwpair      33  113          2.7800    15.0000
vdwpair      33  114          2.7800    15.0000
vdwpair      61  113          2.0600    15.0000
vdwpair      61  114          2.0600    15.0000
vdwpair      63  113          2.2000    15.0000
vdwpair      63  114          2.2000    15.0000
vdwpair      65  113          2.1200    15.0000
vdwpair      65  114          2.1200    15.0000
vdwpair     113  125          2.6100    15.0000
vdwpair     113  126          2.7500    15.0000
vdwpair     113  127          2.9000    15.0000
vdwpair     113  133          2.7900    15.0000
vdwpair     113  134          2.7900    15.0000
vdwpair     113  141          2.6200    15.0000
vdwpair     114  125          2.6100    15.0000
vdwpair     114  126          2.7500    15.0000
vdwpair     114  127          2.9000    15.0000
vdwpair     114  133          2.7900    15.0000
vdwpair     114  134          2.7900    15.0000
vdwpair     114  141          2.6200    15.0000


      ###################################
      ##                               ##
      ##  Hydrogen Bonding Parameters  ##
      ##                               ##
      ###################################


hbond         2   21          2.6500     0.5500
hbond         2   23          3.0000     0.1000
hbond         2   28          2.6200     0.8600
hbond         2   44          2.8300     0.2000
hbond         2   73          3.0000     0.7500
hbond         2  124          2.9600     0.2500
hbond         4   21          2.6000     0.5100
hbond         4   23          2.8700     0.2600
hbond         4   28          2.5400     0.9300
hbond         4  124          2.8200     0.3400
hbond         6   21          2.1100     3.0000
hbond         6   23          2.3800     1.3000
hbond         6   24          2.1400     3.3000
hbond         6   28          2.0300     5.1400
hbond         6   44          2.6800     0.1500
hbond         6   48          1.7200    13.8000
hbond         6   73          2.2500     3.1500
hbond         6  124          2.3000     1.7000
hbond         7   21          2.0700     2.5500
hbond         7   23          2.3900     1.1000
hbond         7   24          2.0500     3.0000
hbond         7   28          2.0700     4.4400
hbond         7   48          2.0000     6.0000
hbond         7   73          2.0300     5.1000
hbond         7  124          2.3300     1.3900
hbond         8   21          2.1500     4.7000
hbond         8   23          2.4000     2.2800
hbond         8   24          2.2200     2.1000
hbond         8   28          2.1300     7.7800
hbond         8   48          1.6870    22.4220
hbond         8   73          2.2200     1.5000
hbond         8  124          2.3000     3.5300
hbond        11   21          2.0500     0.4500
hbond        11   23          2.0500     0.3000
hbond        11   24          2.0500     0.9000
hbond        11   28          2.0500     0.6000
hbond        11   73          2.0500     0.6000
hbond        12   21          2.8000     1.1000
hbond        12   23          3.1400     0.4400
hbond        12   24          2.4300     0.9000
hbond        12   28          2.7700     1.8200
hbond        12   73          2.4300     0.6000
hbond        12  124          3.0900     0.6700
hbond        13   21          2.5800     1.2000
hbond        13   23          2.5800     0.3000
hbond        13   24          2.5800     0.9000
hbond        13   28          2.5800     0.6000
hbond        13   73          2.5800     0.6000
hbond        14   21          2.7200     0.9000
hbond        14   23          2.7200     0.6000
hbond        14   24          2.7200     0.6000
hbond        14   28          2.7200     0.3000
hbond        14   73          2.7200     0.3000
hbond        15   21          2.6800     1.3500
hbond        15   23          2.5100     0.3000
hbond        15   24          2.5100     0.6000
hbond        15   28          2.5100     0.3000
hbond        15   44          2.9400     0.7000
hbond        15   73          2.5100     0.3000
hbond        17   21          2.5500     0.6000
hbond        17   23          2.5500     0.1500
hbond        17   24          2.5500     0.3000
hbond        17   28          2.5500     0.3000
hbond        17   73          2.5500     0.3000
hbond        21   22          2.4000     1.0600
hbond        21   37          1.7400     3.7200
hbond        21   47          2.0700     5.0000
hbond        21   50          2.6500     0.5500
hbond        21   79          1.9500     3.4600
hbond        22   23          2.6900     0.4270
hbond        22   28          2.3700     1.7560
hbond        22  124          2.6300     0.6580
hbond        23   37          2.2500     0.6750
hbond        23   47          2.3100     2.4300
hbond        23   50          3.0000     0.1000
hbond        23   79          2.1900     1.5900
hbond        23  150          2.4000     2.2800
hbond        24   37          2.2200     2.1000
hbond        24   75          2.1400     1.4500
hbond        24   77          1.8300     4.9500
hbond        28   37          2.2200     1.5000
hbond        28   47          2.0500     8.2800
hbond        28   50          3.0000     0.7500
hbond        28   79          1.9600     5.2400
hbond        37   73          2.2200     1.5000
hbond        44   50          2.8300     0.2000
hbond        47   48          1.7900    32.1000
hbond        47  124          2.2100     3.7600
hbond        50   73          3.0000     0.7500
hbond        79  124          2.1100     2.2800


      ##################################
      ##                              ##
      ##  Bond Stretching Parameters  ##
      ##                              ##
      ##################################


bond          1    1           4.490     1.5247
bond          1    2           6.300     1.4990
bond          1    3           4.800     1.5090
bond          1    4           5.500     1.4700
bond          1    5           4.740     1.1120
bond          1    6           5.700     1.4130
bond          1    8           5.300     1.4480
bond          1    9           5.210     1.4460
bond          1   11           5.900     1.3900
bond          1   12           3.100     1.7910
bond          1   13           2.300     1.9440
bond          1   14           2.150     2.1660
bond          1   15           3.000     1.8050
bond          1   16           3.213     1.8160
bond          1   17           2.950     1.8000
bond          1   18           3.100     1.7720
bond          1   19           3.050     1.8760
bond          1   22           5.000     1.5110
bond          1   25           2.940     1.8430
bond          1   26           4.5014    1.5769
bond          1   29           5.200     1.4990
bond          1   31           2.720     1.9490
bond          1   32           2.124     2.1470
bond          1   33           1.900     2.2420
bond          1   34           2.680     1.9480
bond          1   35           2.700     2.1400
bond          1   36           4.740     1.1070
bond          1   37           5.000     1.4340
bond          1   38           4.400     1.4970
bond          1   39           4.2741    1.5110
bond          1   40           4.230     1.4900
bond          1   41           5.400     1.4200
bond          1   43           5.200     1.4830
bond          1   46           5.500     1.4950
bond          1   50           6.300     1.4990
bond          1   56           4.490     1.5247
bond          1   57           6.300     1.4990
bond          1   70           7.400     1.4890
bond          1   71           4.800     1.5030
bond          1   72           5.000     1.4390
bond          1   75           5.700     1.4130
bond          1  109           4.480     1.4530
bond          1  110           6.420     1.4700
bond          1  111           5.500     1.4750
bond          1  114           6.300     1.5120
bond          1  145           5.850     1.3680
bond          1  146           4.800     1.4140
bond          1  150           3.800     1.4429
bond          1  153           3.300     1.8050
bond          1  154           3.104     1.7759
bond          1  155           4.4543    1.4540
bond          1  159           4.400     1.4240
bond          2    2           7.500     1.3320
bond          2    3           8.500     1.3540
bond          2    4          11.200     1.3120
bond          2    5           5.150     1.1010
bond          2    6           6.000     1.3536
bond          2    8           6.320     1.3690
bond          2    9           5.960     1.4100
bond          2   11           5.500     1.3535
bond          2   12           2.800     1.7270
bond          2   13           2.500     1.8900
bond          2   14           2.480     2.0750
bond          2   18           2.800     1.7720
bond          2   19           3.000     1.8540
bond          2   22           5.700     1.4600
bond          2   25           2.910     1.8280
bond          2   26           3.4602    1.5500
bond          2   31           3.580     1.9350
bond          2   36           5.150     1.0960
bond          2   37           9.000     1.2710
bond          2   38           9.600     1.3360
bond          2   39          11.090     1.2600
bond          2   40          11.090     1.2660
bond          2   41          12.200     1.2180
bond          2   42           7.171     1.5370
bond          2   43           4.000     1.2050
bond          2   46           5.050     1.4730
bond          2   50           5.280     1.4340
bond          2   56           6.300     1.4990
bond          2   57           7.500     1.3330
bond          2   72           9.000     1.2700
bond          2  106          11.900     1.3108
bond          2  108           8.7016    1.2836
bond          2  110          10.000     1.2800
bond          2  111           8.300     1.2739
bond          2  143           3.800     0.8270
bond          2  144           5.200     1.3950
bond          3    3          11.250     1.2170
bond          3    5           4.370     1.1180
bond          3    6           6.000     1.3538
bond          3    7          10.100     1.2080
bond          3    9           6.700     1.3770
bond          3   11           4.200     1.3810
bond          3   12           2.880     1.8160
bond          3   13           2.800     1.9900
bond          3   14           2.600     2.2280
bond          3   22           4.400     1.4470
bond          3   36           4.370     1.1130
bond          3   47           7.035     1.2760
bond          3   56           4.800     1.5090
bond          3   57           9.600     1.3510
bond          3   75           6.000     1.3538
bond          3   76          10.800     1.2090
bond          3   77           9.800     1.2140
bond          3   78           9.800     1.2140
bond          3   80          11.650     1.2040
bond          3   81           9.640     1.2080
bond          3   82          10.600     1.1980
bond          3  101           9.000     1.2130
bond          3  102           9.600     1.2040
bond          3  120          10.800     1.2090
bond          3  148           4.300     1.4050
bond          4    4          15.250     1.2100
bond          4   10          17.330     1.1580
bond          4   57          11.200     1.3120
bond          4  124           5.970     1.0800
bond          5   16           3.800     1.3460
bond          5   17           3.170     1.3720
bond          5   18           3.800     1.3460
bond          5   19           2.650     1.4830
bond          5   22           5.080     1.0860
bond          5   25           3.065     1.4200
bond          5   29           5.220     1.1010
bond          5   31           2.550     1.5290
bond          5   32           2.229     1.6960
bond          5   33           1.894     1.7750
bond          5   34           3.170     1.4720
bond          5   35           2.850     1.6700
bond          5   38           4.600     1.0720
bond          5   50           5.150     1.1010
bond          5   56           4.740     1.1120
bond          5   57           5.150     1.1010
bond          5   71           5.100     1.0920
bond          5  113           5.150     1.1010
bond          5  153           3.280     1.3980
bond          5  154           3.7259    1.3512
bond          6    6           3.950     1.4480
bond          6   19           5.050     1.6360
bond          6   21           7.630     0.9470
bond          6   24           7.150     0.9717
bond          6   25           2.900     1.6150
bond          6   26           4.6192    1.3619
bond          6   56           2.800     1.4150
bond          6   57           6.000     1.3550
bond          6   73           7.200     0.9720
bond          6  153           5.300     1.5990
bond          7   17           7.100     1.4870
bond          7   18           9.420     1.4420
bond          7   43          10.800     1.2680
bond          7   46           7.500     1.2225
bond          7   58          10.150     1.2020
bond          7   67          11.420     1.1960
bond          7  106          10.500     1.1650
bond          7  153           8.900     1.4870
bond          7  154           8.6767    1.4625
bond          8   23           6.420     1.0150
bond          8   50           6.320     1.3780
bond          8   56           5.300     1.4480
bond          9   18           6.100     1.6600
bond          9   28           6.770     1.0280
bond          9   30           6.830     1.3250
bond         15   15           2.620     2.0190
bond         15   44           3.870     1.3420
bond         19   19           1.650     2.3240
bond         19   22           3.500     1.8370
bond         19   56           1.300     1.8810
bond         21  145           7.500     0.9740
bond         21  159           7.780     0.9479
bond         22   22           5.000     1.4850
bond         22   31           2.700     1.9110
bond         22   38           4.400     1.4880
bond         22   46           4.350     1.4775
bond         22   56           4.400     1.5050
bond         23   37           5.700     1.0280
bond         23   40           6.500     1.0300
bond         23   43           5.520     1.0400
bond         23   72           5.970     1.0190
bond         23  107           5.350     1.0330
bond         23  109           5.950     1.0280
bond         23  110           6.520     1.0175
bond         23  111           6.520     1.0130
bond         23  146           6.150     1.0210
bond         23  150           6.360     1.0214
bond         23  155           6.3778    1.0196
bond         24   75           7.150     0.9737
bond         31   31           1.450     2.4040
bond         33   33           2.050     1.9440
bond         37   37           9.500     1.2500
bond         37   40          11.000     1.2300
bond         37   43          10.720     1.2570
bond         38   38           9.600     1.3030
bond         39   39          10.720     1.2480
bond         39   40          11.000     1.2300
bond         39   48           6.1402    1.0530
bond         39   69           4.600     1.3650
bond         41   73           7.200     0.9600
bond         41  108           4.320     1.4042
bond         42   44           3.890     1.3360
bond         43   69           8.800     1.2690
bond         43  109           7.100     1.2620
bond         50   50           6.560     1.3887
bond         56   56           4.490     1.5000
bond         57   57           7.500     1.3320
bond         58   78          10.500     1.1678
bond         58   79           7.000     1.2100
bond         69  143           9.000     1.2820
bond         70   71           8.500     1.2500
bond        143  144           8.800     1.2630
bond        145  146           4.500     1.4050
bond        150  150           3.000     1.5490
bond        153  159           5.700     1.6000
bond        154  155           3.9438    1.6965


      ###########################################
      ##                                       ##
      ##  Bond Stretching Parameters (5-Ring)  ##
      ##                                       ##
      ###########################################


bond5         1    1           4.490     1.5258
bond5         1    2           6.300     1.5120
bond5         1    3           4.800     1.5140
bond5         1    6           5.700     1.4160
bond5         1    8           5.300     1.4530
bond5         1    9           5.210     1.4700
bond5         1   15           3.000     1.8080
bond5         1   18           3.100     1.7800
bond5         1   19           2.850     1.8840
bond5         1   22           5.000     1.5100
bond5         1   31           2.950     1.9440
bond5         1   37           3.950     1.4700
bond5         1   40           4.230     1.4900
bond5         1   56           4.490     1.5258
bond5         1   57           6.300     1.5100
bond5         1   75           5.700     1.4160
bond5         2    2           7.700     1.3340
bond5         2    3           9.600     1.3510
bond5         2    6           6.000     1.3550
bond5         2   18           2.800     1.7720
bond5         2   19           3.000     1.8560
bond5         2   37          10.000     1.2580
bond5         2   40           9.700     1.2680
bond5         2   41          11.600     1.2250
bond5         2   42           7.171     1.5970
bond5         3    3           9.600     1.3340
bond5         3    6           5.800     1.3550
bond5         3    9           6.830     1.3770
bond5         3   57           9.600     1.3510
bond5         3   75           5.800     1.3550
bond5         3  148           3.600     1.3800
bond5         3  149           3.600     1.3800
bond5         6    6           3.950     1.4550
bond5         6   56           3.000     1.4180
bond5        15   15           2.620     2.0150
bond5        19   19           1.650     2.3360
bond5        22   22           4.400     1.5010
bond5        37   37           9.600     1.2500
bond5        37   40           9.600     1.2200
bond5        37   41          11.600     1.2680
bond5        37   42           7.471     1.4150
bond5        57   57           7.500     1.3320
bond5       113  113           7.500     1.3970
bond5       114  114           7.500     1.4170


      ###########################################
      ##                                       ##
      ##  Bond Stretching Parameters (4-Ring)  ##
      ##                                       ##
      ###########################################


bond4         6   56           5.700     1.4250
bond4         6   58           5.800     1.4178
bond4         8   56           5.300     1.4540
bond4         9   56           5.960     1.4930
bond4         9   58           6.830     1.3770
bond4        15   56           3.000     1.8140
bond4        19   56           3.000     1.8840
bond4        22   22           5.000     1.5520
bond4        22   56           4.400     1.5260
bond4        56   56           4.490     1.5371
bond4        56   57           6.300     1.5190
bond4        56   58           4.560     1.5430
bond4        56   75           5.700     1.4250
bond4        57   57           7.500     1.3380
bond4        57   58           9.600     1.3510
bond4        58   58           9.600     1.3340
bond4        58   75           5.800     1.4178


      ###########################################
      ##                                       ##
      ##  Bond Stretching Parameters (3-Ring)  ##
      ##                                       ##
      ###########################################


bond3        19   22           3.500     1.8250
bond3        22   22           5.000     1.5030
bond3        22   38           5.000     1.5030
bond3        22   49           5.360     1.4350
bond3        22   59           5.000     1.5030
bond3        22   67           4.200     1.4860


      ################################################
      ##                                            ##
      ##  Electronegativity Bond Length Parameters  ##
      ##                                            ##
      ################################################


electneg      1    1    3               -0.0070
electneg      1    1    6               -0.0070
electneg      1    1    8               -0.0050
electneg      1    1    9               -0.0150
electneg      1    1   11               -0.0225
electneg      1    1   12               -0.0085
electneg      1    1   13               -0.0120
electneg      1    1   14               -0.0050
electneg      1    1   15               -0.0010
electneg      1    1   17               -0.0100
electneg      1    1   19                0.0090
electneg      1    1   25                0.0000
electneg      1    1   26                0.0009
electneg      1    1   34                0.0030
electneg      1    1   35                0.0030
electneg      1    1   39               -0.0037
electneg      1    1   46               -0.0060
electneg      1    1   47                0.0110
electneg      1    1   70               -0.0300
electneg      1    1   71                0.0400
electneg      1    1  155               -0.0145
electneg      2    1   15               -0.0100
electneg      2    1   19                0.0130
electneg      3    1   39               -0.0340
electneg      4    1    4                0.0050
electneg      5    1    3               -0.0050
electneg      5    1    4               -0.0015
electneg      5    1    6               -0.0028
electneg      5    1    8               -0.0011
electneg      5    1   10               -0.0055
electneg      5    1   11               -0.0076
electneg      5    1   12               -0.0075
electneg      5    1   14               -0.0050
electneg      5    1   15               -0.0001
electneg      5    1   17               -0.0025
electneg      5    1   18               -0.0030
electneg      5    1   25               -0.0030
electneg      5    1   26                0.0016
electneg      5    1   39                0.0010
electneg      5    1   43               -0.0080
electneg      5    1   46               -0.0058
electneg      5    1   70               -0.0100
electneg      5    1   71               -0.0060
electneg      5    1   72                0.0068
electneg      5    1   75               -0.0035
electneg      5    1  109               -0.0020
electneg      5    1  146               -0.0070
electneg      5    1  153                0.0000
electneg      5    1  154               -0.0114
electneg      5    1  155               -0.0081
electneg      5    1  159               -0.0028
electneg      6    1   71               -0.0160
electneg     11    1    1                0.0100
electneg     11    1   11               -0.0305
electneg     11    1   12               -0.0200
electneg     11    1   13               -0.0040
electneg     12    1    1                0.0055
electneg     12    1   11               -0.0300
electneg     12    1   12               -0.0200
electneg     14    1    2                0.0090
electneg     14    1    5               -0.0090
electneg     19    1   19               -0.0040
electneg     25    1    1                0.0025
electneg     26    1    1               -0.0033
electneg     36    1    3               -0.0050
electneg     39    1   47               -0.0680
electneg     70    1    1                0.0150
electneg     71    1    6                0.0190
electneg    110    1    1                0.0154
electneg    111    1    1                0.0154
electneg      1    2   72               -0.0070
electneg      1    2  108               -0.0081
electneg      2    2   11               -0.0055
electneg      2    2   19                0.0110
electneg      2    2   31                0.0020
electneg      2    2  108               -0.0011
electneg      5    2   11               -0.0070
electneg      5    2   41               -0.0050
electneg      5    2  108                0.0117
electneg    108    2    2                0.0012
electneg    108    2    5               -0.0011
electneg      1    3   11               -0.0060
electneg      1    3   12               -0.0011
electneg      1    3   13                0.0038
electneg      1    3   14               -0.0194
electneg      1    3   47                0.0240
electneg      1    3   75               -0.0220
electneg      2    3    3               -0.0180
electneg      5    3   11               -0.0071
electneg      5    3   12               -0.0151
electneg      5    3   13               -0.0035
electneg      5    3   47                0.0190
electneg     11    3    1                0.0134
electneg     11    3   80               -0.0332
electneg     12    3    1                0.0122
electneg     12    3   80               -0.0316
electneg     13    3    1                0.0106
electneg     13    3   80               -0.0265
electneg     14    3    1                0.0095
electneg     14    3   80               -0.0199
electneg     47    3   39               -0.0630
electneg     75    3    5               -0.0220
electneg     80    3    5                0.0063
electneg     80    3   11               -0.0184
electneg     80    3   12               -0.0176
electneg     80    3   13               -0.0203
electneg     80    3   14               -0.0080
electneg    124    4   10                0.0010
electneg      1    6    3                0.0220
electneg      1    6    2                0.0068
electneg      1    6    6                0.0070
electneg      1    6   21                0.0150
electneg      6    6   21                0.0060
electneg     19    6   19                0.0020
electneg     19    6   21                0.0220
electneg     21    6    6                0.0170
electneg     21    6   26                0.0002
electneg     56    6   58               -0.0460
electneg      1    8   23                0.0060
electneg      2    8   23                0.0100
electneg     56    8   23                0.0060
electneg      1    9   28                0.0010
electneg     58    9   28               -0.0050
electneg      1   15   15                0.0100
electneg      1   15   44                0.0200
electneg     15   15   44                0.0230
electneg     44   15   15               -0.0050
electneg      1   17    5                0.0050
electneg      7   17    5                0.0080
electneg      1   19    6               -0.0190
electneg      1   19   19                0.0090
electneg      5   19    6               -0.0010
electneg      5   19   19                0.0030
electneg      6   19    6               -0.0100
electneg     19   19    5                0.0040
electneg     19   19   19               -0.0020
electneg     22   22   19                0.0080
electneg     22   22   46               -0.0400
electneg     22   22   49               -0.0200
electneg     22   22   67                0.0330
electneg      1   25    5                0.0070
electneg      6   26    1                0.0007
electneg      5   31    1                0.0080
electneg      5   31   31                0.0060
electneg      5   31   56                0.0000
electneg      1   34    5                0.0090
electneg      1   35    5                0.0070
electneg      1   39    1               -0.0096
electneg     48   39    1               -0.0061
electneg      1   41  108                0.0142
electneg      2   41    2                0.0120
electneg      2   41   73                0.0210
electneg      2   41  108                0.0326
electneg     73   41  108                0.0317
electneg    108   41    2                0.0060
electneg    108   41   73                0.0068
electneg      2   42   44                0.0200
electneg      5   56    8               -0.0030
electneg      5   56   58               -0.0060
electneg      5   56   75               -0.0022
electneg      9   56    9               -0.0200
electneg     56   56    6               -0.0070
electneg     56   56    8                0.0001
electneg     56   56    9                0.0140
electneg     56   56   15               -0.0100
electneg     56   56   19                0.0140
electneg     56   56   58               -0.0140
electneg     56   56   75               -0.0070
electneg     56   58    6                0.0040
electneg     56   58    9               -0.0380
electneg     56   58   75                0.0040
electneg      1   71   70               -0.0400
electneg     70   71    1                0.0060
electneg      1   75    3                0.0220
electneg      3   75   24                0.0150
electneg     56   75   58               -0.0460
electneg      2  108    1                0.0030
electneg      2  108    2                0.0030
electneg     41  108    1                0.0175
electneg    146  145    1                0.0080
electneg      1  146    1                0.0130
electneg    145  146    1                0.0300
electneg    150  150    1               -0.0050
electneg      1  153  159               -0.0110
electneg      5  153  159               -0.0110
electneg      7  153    5               -0.0030
electneg      7  153  159               -0.0160
electneg    159  153  159               -0.0150
electneg      7  154    1                0.0048
electneg    155  154    1                0.0121
electneg      1  155    1                0.0023
electneg     23  155    1                0.0008
electneg    154  155    1               -0.0266
electneg     21  159  159                0.0000


      ################################
      ##                            ##
      ##  Angle Bending Parameters  ##
      ##                            ##
      ################################


angle         1    1    1      0.670     109.50     110.20     111.00
angle         1    1    2      0.540     110.60     109.80     110.60
angle         1    1    3      0.800     110.60     110.60     110.60
angle         1    1    4      0.960     108.80     109.70     110.00
angle         1    1    5      0.590     109.80     109.31     110.70
angle         1    1    6      0.830     107.50     107.00     107.90
angle         1    1    8      0.780     109.47     108.00     111.00
angle         1    1    9      0.750     109.48     111.30     111.80
angle         1    1   11      0.920     107.30     108.30     107.40
angle         1    1   12      0.800     106.20     106.40     108.00
angle         1    1   13      0.740     108.20
angle         1    1   14      0.650     106.00     107.20     107.00
angle         1    1   15      0.740     108.00     109.50     110.10
angle         1    1   16      0.420     107.80
angle         1    1   17      0.650     107.50     104.70     106.00
angle         1    1   18      0.870     103.00
angle         1    1   19      0.400     109.00     112.70     111.50
angle         1    1   22      0.350     114.40     112.60     114.40
angle         1    1   25      0.600     107.50     109.60     108.00
angle         1    1   26      0.379     110.92
angle         1    1   29      0.450     110.00
angle         1    1   31      0.450     109.30
angle         1    1   32      0.560     110.20
angle         1    1   33      0.300     110.20
angle         1    1   34      0.500     108.20
angle         1    1   35      0.500     108.20
angle         1    1   36      0.590     110.10     109.31     110.70
angle         1    1   37      0.500     110.74
angle         1    1   39      0.543     103.50     109.299    100.90
angle         1    1   41      0.900     107.50
angle         1    1   43      0.450     104.50
angle         1    1   46      1.000     106.00     106.50     106.80
angle         1    1   50      0.540     110.60
angle         1    1   56      0.670     109.50     109.90     111.00
angle         1    1   57      0.540     110.60     110.60     110.60
angle         1    1   70      1.080     104.10
angle         1    1   71      0.360     109.00     111.00     101.60
angle         1    1  109      0.500     108.50
angle         1    1  110      0.455     105.00
angle         1    1  111      0.980     108.64     108.64     108.64
angle         1    1  150      0.780     109.14     109.14     109.14
angle         1    1  153      0.500     109.50
angle         1    1  154      1.238     108.154
angle         1    1  159      0.830     109.50
angle         2    1    2      0.450     113.20     115.50     113.00
angle         2    1    3      0.470     109.47     110.51     110.20
angle         2    1    4      0.570     109.47     110.51     110.20
angle         2    1    5      0.550     109.50     109.31     110.40
angle         2    1    6      0.700     107.00
angle         2    1    8      1.045     110.74
angle         2    1    9      0.500     109.80
angle         2    1   11      0.760     109.00
angle         2    1   12      0.650     109.50
angle         2    1   14      0.695     109.30
angle         2    1   15      0.650     107.80     107.80     113.90
angle         2    1   16      0.420     107.80
angle         2    1   19      0.500     109.50     105.00     109.50
angle         2    1   22      0.450     112.40
angle         2    1   36      0.550     109.50     109.31     110.40
angle         2    1   37      0.380     110.51
angle         2    1   39      1.045     110.74
angle         2    1   43      0.380     110.51
angle         3    1    3      0.470     109.47     110.51     110.20
angle         3    1    5      0.540     109.49     109.49     109.49
angle         3    1    6      0.700     109.50
angle         3    1    8      1.045     110.74
angle         3    1    9      0.850     109.50     110.60     112.30
angle         3    1   11      0.760     109.20
angle         3    1   12      0.650     109.80
angle         3    1   13      0.750     109.10
angle         3    1   14      0.600     108.90
angle         3    1   15      0.420     107.80
angle         3    1   16      0.420     107.80
angle         3    1   36      0.540     109.49
angle         3    1   39      1.045     110.74
angle         4    1    4      0.470     109.47     110.51     110.20
angle         4    1    5      0.680     109.39     109.41     108.80
angle         4    1    6      0.900     109.00     109.00     109.00
angle         4    1   11      1.280     110.70     110.70     110.70
angle         4    1   75      0.800     107.50
angle         5    1    5      0.550     107.60     107.80     109.47
angle         5    1    6      0.820     110.00     108.90     108.70
angle         5    1    8      0.820     109.30
angle         5    1    9      0.760     111.00     111.00     111.00
angle         5    1   11      0.720     108.50     109.30     107.00
angle         5    1   12      0.750     105.66     106.30     107.05
angle         5    1   13      0.510     106.50
angle         5    1   14      0.620     102.80     102.80     107.80
angle         5    1   15      0.740     110.80     110.80     108.00
angle         5    1   16      0.300     108.20
angle         5    1   17      0.715     105.00     105.00     107.70
angle         5    1   18      0.690     106.00
angle         5    1   19      0.540     109.50     110.00     108.90
angle         5    1   22      0.590     109.41     109.41     109.41
angle         5    1   25      0.570     111.00     108.40     108.60
angle         5    1   26      0.498     109.939
angle         5    1   29      0.580     110.00
angle         5    1   31      0.420     111.00     111.90     110.00
angle         5    1   32      0.350     112.00
angle         5    1   33      0.100     109.50
angle         5    1   34      0.330     110.50
angle         5    1   35      0.330     110.50
angle         5    1   36      0.550     107.60     107.80     109.47
angle         5    1   37      0.803     107.50
angle         5    1   39      0.900     104.70
angle         5    1   40      0.360     109.40
angle         5    1   41      0.920     110.00     108.90     108.70
angle         5    1   43      0.800     107.50
angle         5    1   46      0.760     109.00
angle         5    1   50      0.550     109.50     109.31     110.40
angle         5    1   56      0.590     110.10     109.31     110.70
angle         5    1   57      0.490     109.50     109.31     110.40
angle         5    1   70      1.010     101.00     100.70     102.80
angle         5    1   71      0.590     109.00     106.20     106.70
angle         5    1  109      0.835     108.50
angle         5    1  110      0.900     105.50
angle         5    1  111      0.950     104.50
angle         5    1  145      0.925     106.50     106.50     106.50
angle         5    1  146      0.900     107.00     107.00     107.00
angle         5    1  150      0.850     109.38     109.38     109.08
angle         5    1  153      0.520     109.60
angle         5    1  159      0.920     108.70     108.70     108.70
angle         6    1    6      0.540     103.10     101.20     107.00
angle         6    1   12      0.670     108.50
angle         6    1   22      0.830     107.50
angle         6    1   50      0.700     107.00
angle         6    1   71      1.200     104.10
angle         8    1    8      1.045     110.74
angle         8    1   22      0.600     109.50
angle         8    1   39      1.045     110.74
angle         9    1   15      0.580     107.00     108.00     114.80
angle         9    1   36      0.760     111.00
angle        11    1   11      1.950     106.10     108.00     108.60
angle        11    1   12      0.750     110.40
angle        11    1   13      0.720     109.40
angle        12    1   12      0.760     108.10     109.50     109.70
angle        12    1   13      0.720     110.70
angle        13    1   13      0.690     109.70
angle        14    1   14      0.695     104.80
angle        15    1   15      0.420     110.00
angle        19    1   19      0.350     109.50     119.50     117.00
angle        22    1   22      0.480     112.60     114.00       0.00
angle        22    1   37      0.380     110.20
angle        22    1   43      0.380     110.20
angle        36    1   36      0.550     107.60     107.80     109.47
angle        37    1   37      0.950     109.00
angle        46    1   46      0.640     109.50
angle        50    1   50      0.450     113.20     115.50     113.00
angle        57    1   57      0.450     113.20     115.50     113.00
anglep        1    2    1      0.540     117.00
anglep        1    2    2      0.470     122.30
anglep        1    2    3      0.500     117.00
anglep        1    2    4      0.470     116.60
anglep        1    2    5      0.490     117.50
anglep        1    2    6      0.500     120.00
anglep        1    2   19      0.400     120.00
anglep        1    2   36      0.490     117.50
anglep        1    2   37      0.720     115.10     121.30       0.00
anglep        1    2   40      0.450     120.00
anglep        1    2   41      0.500     120.00
anglep        1    2   42      0.700     120.00
anglep        1    2   72      0.720     123.00
anglep        1    2  106      0.470     117.40     118.70       0.00
anglep        1    2  108      0.870     117.83     118.70       0.00
anglep        2    2    2      0.760     122.00     121.70       0.00
anglep        2    2    3      0.500     115.50     116.70       0.00
anglep        2    2    5      0.490     120.00     120.50       0.00
anglep        2    2    6      0.600     121.90
anglep        2    2    8      0.600     122.00     125.00       0.00
anglep        2    2    9      0.500     118.00
anglep        2    2   11      0.810     115.50     119.00       0.00
anglep        2    2   12      0.650     118.80
anglep        2    2   13      0.450     118.10
anglep        2    2   14      0.410     118.80
anglep        2    2   18      1.000     116.00
anglep        2    2   19      0.320     122.00     122.00       0.00
anglep        2    2   22      0.470     127.80
anglep        2    2   25      0.380     120.00
anglep        2    2   26      0.705     121.457
anglep        2    2   31      0.250     119.10
anglep        2    2   36      0.490     120.00     120.50       0.00
anglep        2    2   37      0.970     121.00     121.00       0.00
anglep        2    2   40      0.660     119.00     119.00       0.00
anglep        2    2   41      1.050     119.50     120.80       0.00
anglep        2    2   42      0.580     117.00     126.00       0.00
anglep        2    2   43      1.350     124.20
anglep        2    2   46      1.000     115.20
anglep        2    2   57      0.760     121.00
anglep        2    2  108      1.000     120.59     121.90       0.00
anglep        2    2  111      0.750     118.00
anglep        2    2  143      0.700     119.70
anglep        2    2  144      0.630     120.00
anglep        3    2    5      0.500     117.00
anglep        3    2   40      0.500     120.00
anglep        4    2    5      0.300     119.50
anglep        5    2    5      0.450     119.00
anglep        5    2    6      0.540     116.40
anglep        5    2    8      0.540     117.00
anglep        5    2    9      0.300     109.00
anglep        5    2   11      0.710     113.00
anglep        5    2   12      0.550     112.60
anglep        5    2   13      0.560     112.10
anglep        5    2   14      0.450     112.60
anglep        5    2   18      0.780     106.00
anglep        5    2   19      0.525     119.50
anglep        5    2   22      0.490     120.00
anglep        5    2   31      0.510     120.00
anglep        5    2   36      0.450     119.00
anglep        5    2   37      0.530     119.00     121.50       0.00
anglep        5    2   38      0.360     120.00
anglep        5    2   40      0.500     110.00
anglep        5    2   41      0.800     108.00
anglep        5    2   42      0.400     120.10
anglep        5    2   43      0.360     116.50
anglep        5    2   46      0.434     116.00
anglep        5    2   50      0.490     120.00     120.50       0.00
anglep        5    2   57      0.490     120.00     120.50       0.00
anglep        5    2   72      0.800     121.70     121.70       0.00
anglep        5    2  106      0.370     114.00     121.50       0.00
anglep        5    2  108      0.500     115.83     116.78       0.00
anglep        5    2  110      0.720     118.10
anglep        5    2  111      0.550     110.50
anglep        5    2  143      0.400     116.50
anglep        8    2    8      0.850     118.50
anglep        8    2   22      0.600     119.00
anglep        9    2    9      0.400     120.00
anglep       11    2  106      0.950     120.20     120.20       0.00
anglep       12    2   12      1.570     119.20
anglep       12    2   13      1.570     110.70
anglep       12    2   41      0.500     105.00
anglep       12    2  106      0.570     119.80     114.20       0.00
anglep       13    2   41      0.500     104.00
anglep       13    2  106      0.530     111.20
anglep       14    2   41      0.500     107.00
anglep       19    2   19      0.400     120.00
anglep       36    2   36      0.450     119.00
anglep       37    2   37      1.200     120.00     122.00       0.00
anglep       37    2   40      0.400     126.00     126.00       0.00
anglep       42    2   42      0.580     117.00
anglep        1    3    1      1.250     116.80     116.80     116.80
anglep        1    3    2      0.500     116.00
anglep        1    3    3      1.000     114.60
anglep        1    3    5      0.464     116.10     117.30       0.00
anglep        1    3    6      0.650     107.10                         !! JWP
anglep        1    3    7      0.850     123.50     123.50       0.00
anglep        1    3    9      0.570     114.40
anglep        1    3   11      1.950     109.00
anglep        1    3   12      1.450     110.20
anglep        1    3   13      1.180     109.30
anglep        1    3   14      0.970     108.89
anglep        1    3   47      0.745     115.90
anglep        1    3   75      1.550     110.30
anglep        1    3   76      0.720     122.10
anglep        1    3   77      0.850     123.50     123.50       0.00   !! JWP
anglep        1    3   80      0.320     121.60
anglep        1    3   82      0.600     123.00
anglep        1    3  148      2.000     109.00
anglep        2    3    2      0.850     114.70
anglep        2    3    3      0.800     120.00
anglep        2    3    5      0.300     111.50
anglep        2    3    6      0.700     124.30
anglep        2    3    7      1.300     122.00     123.50       0.00
anglep        2    3   75      0.700     124.30
anglep        2    3   76      1.300     123.40
anglep        2    3  102      0.800     126.50
anglep        2    3  151      0.695     120.00
anglep        3    3    5      0.680     112.40
anglep        3    3   36      0.680     110.60
anglep        3    3   76      0.750     119.20
anglep        3    3  101      0.710     121.60
anglep        5    3    5      0.650     115.50
anglep        5    3    6      0.550     107.00
anglep        5    3    7      0.850     119.20     119.20       0.00
anglep        5    3    9      0.440     109.30
anglep        5    3   11      1.340     104.00
anglep        5    3   12      1.220     105.15
anglep        5    3   13      1.120     108.80
anglep        5    3   47      0.593     114.90
anglep        5    3   56      0.560     120.00
anglep        5    3   75      0.550     107.00
anglep        5    3   76      0.640     118.90
anglep        5    3   80      0.320     110.00
anglep        5    3   82      0.800     117.20
anglep        5    3  148      1.000     101.00
anglep        6    3    7      1.700     121.50     122.50       0.00
anglep        7    3    9      1.070     124.80
anglep        7    3   22      0.460     122.50
anglep        7    3   56      0.850     122.50
anglep        9    3    9      0.900     112.50
anglep       11    3   80      1.750     120.00
anglep       12    3   80      1.240     120.50     119.50       0.00
anglep       13    3   80      0.850     120.27     119.07       0.00
anglep       14    3   80      0.500     117.40
anglep       36    3   76      0.640     120.50
anglep       47    3   47      1.432     129.80
anglep       75    3   77      1.700     121.50     122.50       0.00
anglep       75    3   78      1.700     121.50     122.50       0.00
anglep       82    3  148      2.000     119.00
anglep      102    3  149      1.300     121.00
angle         1    4    4      0.380     180.00
angle         1    4   10      0.335     180.00
angle         2    4    2      0.400     180.00
angle         2    4    4      0.470     180.00
angle         4    4  124      0.250     180.00
angle        10    4   50      0.128     180.00
angle         1    6    1      0.820     107.20
angle         1    6    2      0.770     108.50
angle         1    6    3      1.250     112.80
angle         1    6    6      1.058     103.30
angle         1    6   19      0.630     117.10
angle         1    6   21      0.750     106.80
angle         1    6   25      0.770     116.00
angle         1    6   56      0.690     108.90
angle         1    6  153      1.380     119.60
angle         2    6   21      0.360     109.00
angle         2    6   25      0.800     118.00
angle         2    6   73      0.350     108.00
angle         3    6    3      0.770     106.80
angle         3    6   24      0.690     107.70
angle         3    6   56      1.250     110.80
angle         6    6   21      0.852      99.50
angle        19    6   19      0.250     142.90
angle        19    6   21      0.510     117.50
angle        21    6   21      0.630     105.00
angle        21    6   26      0.485     110.607
angle        21    6  153      0.380     110.20
angle         1    8    1      0.720     107.20     108.20       0.00
angle         1    8    2      0.598     106.80     103.30       0.00
angle         1    8   23      0.600     108.10     110.90       0.00
angle         1    8   50      0.598     102.50     103.00       0.00
angle         2    8   23      0.587     110.50     109.50       0.00
angle        23    8   23      0.605     106.40     107.10       0.00
angle        23    8   50      0.587     109.00     108.50       0.00
angle        23    8   56      0.600     108.10     110.90       0.00
anglep        1    9    1      0.760     122.50
anglep        1    9    2      0.630     119.90
anglep        1    9    3      1.620     121.10
anglep        1    9   18      0.300     110.00
anglep        1    9   28      0.190     122.40
anglep        1    9   30      0.730     120.40
anglep        1    9   56      0.420     111.20
anglep        1    9   58      0.600     110.00
anglep        2    9    2      0.400     107.00
anglep        2    9    3      0.600     115.00
anglep        2    9   28      0.500     110.00
anglep        3    9    3      0.900     124.00
anglep        3    9   28      0.580     118.50
anglep       18    9   28      0.300     122.00
anglep       28    9   28      0.410     123.00
anglep       28    9   30      0.580     120.50
anglep       28    9   56      1.150     118.30
anglep       28    9   58      1.000     119.20
angle         1   15    1      0.840      95.90
angle         1   15   15      1.000     101.80
angle         1   15   44      0.650      96.00
angle        15   15   44      0.773      92.20
angle        44   15   44      0.730      92.90
angle         1   16    1      0.500      94.30
angle         1   16    5      0.400      94.00
angle         1   17    1      1.200      94.40
angle         1   17    5      0.860      90.00
angle         1   17    7      0.800     105.60     107.80       0.00
angle         5   17    7      0.860     109.60
angle         1   18    1      0.850     101.60
angle         1   18    2      1.800     102.00
angle         1   18    5      0.740     106.00
angle         1   18    7      1.100     106.90
angle         1   18    9      0.800     103.00
angle         2   18    2      1.980     102.10
angle         2   18    7      1.970     108.10
angle         5   18    7      0.560     101.50
angle         5   18    9      0.600      98.00
angle         7   18    7      1.485     119.50
angle         7   18    9      1.700     108.00
angle         1   19    1      0.480     109.50     110.40     109.20
angle         1   19    2      0.400     110.20     110.20     108.50
angle         1   19    5      0.400     109.30     107.00     111.00
angle         1   19    6      0.550     108.00     108.90     108.00
angle         1   19   19      0.450     109.00
angle         1   19   22      0.530     110.20
angle         1   19   56      0.530     109.50
angle         2   19    2      0.600     104.50
angle         2   19    5      0.550     109.50
angle         2   19    6      0.500     109.50
angle         2   19   19      0.400     110.20
angle         5   19    5      0.460     106.50     108.70     109.50
angle         5   19    6      0.670     109.50     109.00     109.50
angle         5   19   19      0.350     109.40
angle         5   19   22      0.460     110.20
angle         5   19   56      0.450     109.30     107.00     111.00
angle         6   19    6      0.600     112.00     113.50     112.00
angle        19   19   19      0.250     118.00     110.80     111.20
angle        56   19   56      0.480     124.50
angle         1   22    1      0.670     120.00
angle         1   22    5      0.600     117.10
angle         1   22   22      0.600     112.00     116.30       0.00
angle         1   22   49      0.560     115.00
angle         2   22    2      0.450     120.00
angle         2   22    5      0.360     128.50
angle         2   22   22      0.600     122.00
angle         2   22   49      0.560     115.00
angle         3   22    5      0.360     123.50     123.50     123.50
angle         5   22    5      0.250     116.50
angle         5   22   19      0.240     124.50
angle         5   22   22      0.650     116.80     114.20       0.00
angle         5   22   31      0.400     119.00
angle         5   22   38      0.360     124.50     119.70       0.00
angle         5   22   46      0.050     112.50
angle         5   22   49      0.430     113.00
angle         5   22   56      0.360     113.00
angle         5   22   67      0.360     117.40
angle        19   22   22      0.530     118.00
angle        22   22   22      0.360     119.50     112.50       0.00
angle        22   22   31      0.500     117.00
angle        22   22   46      1.200     114.60     114.60       0.00
angle         1   25    1      0.770      95.60      98.10       0.00
angle         1   25    2      0.480      92.50
angle         1   25    5      0.705      94.70      96.40       0.00
angle         2   25    2      0.480      95.00
angle         5   25    5      0.680      92.20      93.50       0.00
angle         6   25    6      0.450      99.50
anglep        1   26    6      0.456     122.371
anglep        2   26    6      0.604     126.986
anglep        6   26    6      0.730     119.86
anglep        1   29    1      0.500     119.00
anglep        1   29    5      0.420     118.00
anglep        5   29    5      0.420     117.00     120.00       0.00
anglep        9   30    9      0.400     120.00
angle         1   31    1      0.500     109.50     109.80     110.50
angle         1   31    2      0.500     110.90
angle         1   31    5      0.390     110.20     110.50     111.50
angle         1   31   31      0.350     111.50
angle         2   31    2      0.500     109.50
angle         2   31    5      0.390     110.10
angle         2   31   31      0.500     109.50
angle         5   31    5      0.423     107.50     108.50     109.50
angle         5   31   22      0.400     108.80
angle         5   31   31      0.350     114.50
angle         5   31   56      0.510     105.20
angle        31   31   31      0.300     112.50
angle         1   32    1      0.320     107.00
angle         1   32    5      0.227     110.50
angle         5   32    5      0.132     109.50
angle         1   33    1      0.100     109.50
angle         1   33    5      0.100     109.50
angle         1   33   33      0.100     109.50
angle         5   33    5      0.100     109.50
angle         1   34    1      0.650      94.80
angle         1   34    5      0.430      94.50
angle         1   35    1      0.650      95.05
angle         1   35    5      0.430      94.60
angle         1   37    2      0.720     109.00
angle         1   37   37      0.690     106.50
angle         1   37   43      0.570      99.10
angle         2   37    2      1.200     112.60
angle         2   37   23      0.670     109.80
angle         2   37   37      1.300     107.50
angle         2   37   40      0.430     115.00
angle        23   37   37      0.900     106.40
anglep        1   38   22      0.450     117.20
anglep        2   38   22      0.550     137.00
anglep        5   38   22      0.360     146.00
anglep        5   38   38      0.360     146.00
angle         1   39    1      0.719     107.114    110.00     112.00
angle         1   39   48      0.521     105.949    107.425    108.524
angle         1   39   69      0.885     109.70
angle        48   39   48      0.609     106.367    106.966    108.563
anglep        1   40    2      0.490     120.50
anglep        2   40    2      0.430     124.00     124.00       0.00
anglep        2   40   23      0.490     118.50
anglep        2   40   37      0.430     124.00     124.00       0.00
anglep       23   40   37      0.490     116.00
angle         1   41    2      1.000     109.10
angle         1   41  108      0.900     110.51
angle         2   41    2      0.950     112.00
angle         2   41   73      0.850     107.00
angle         2   41  108      0.900     110.85
angle        73   41  108      1.000     101.884
angle         2   42    2      0.680      98.50
angle         2   42   44      0.750      94.00
angle         1   43    7      0.570     120.40
angle         1   43   37      0.380     114.00
angle         1   43   69      0.920     117.00
angle         1   43  109      0.970     118.00
angle         2   43    2      1.250     117.30
angle         2   43   69      1.730     117.00
angle         7   43   37      0.380     125.00
angle        23   43   69      0.780     108.00
angle        23   43  109      0.915     106.00
angle        69   43  109      1.820     124.20
anglep        1   46    7      1.000     115.90
anglep        2   46    7      1.420     116.10
anglep        7   46    7      1.000     127.70
anglep        7   46   22      1.020     114.50
anglep        1   50   50      0.470     122.30
anglep        2   50   50      0.760     121.70
anglep        4   50   50      0.430     121.20     123.30       0.00
anglep        5   50   50      0.490     120.00     120.50       0.00
anglep        8   50   50      0.600     123.00
angle         1   56    1      0.670     109.50     109.90     111.00
angle         1   56    5      0.590     110.10     109.31     110.70
angle         1   56    6      0.770     109.30     107.60     108.40
angle         1   56    9      1.030     110.70
angle         1   56   22      0.670       0.00     111.20       0.00
angle         1   56   56      0.670     109.50     113.00       0.00
angle         1   56   58      0.500     110.30
angle         1   56   75      0.770     109.30     107.60     108.40
angle         3   56    5      0.540     109.49     109.49     109.49
angle         3   56   56      0.650     109.50
angle         5   56    5      0.550     107.60     107.80     109.47
angle         5   56    6      0.450     108.70     108.70     108.70
angle         5   56    8      0.820     109.30
angle         5   56    9      0.760     111.00
angle         5   56   15      0.740     111.50     111.50       0.00
angle         5   56   19      0.680     110.00     110.00       0.00
angle         5   56   22      0.360     112.00     112.00       0.00
angle         5   56   31      0.400     110.20
angle         5   56   56      0.590     110.10     109.31       0.00
angle         5   56   57      0.490     110.00     109.81     110.90
angle         5   56   58      0.630     110.49
angle         5   56   75      0.450     108.70
angle         6   56    9      0.560     110.50
angle         6   56   56      1.080     109.10
angle         8   56   56      0.780     109.47     108.00     111.00
angle        19   56   56      0.480     111.00
angle        31   56   56      0.460     110.00
angle        56   56   56      0.670     109.50     109.70     111.00
angle        57   56   57      0.540     113.20     108.00     113.00
anglep        1   57   56      0.540     115.20
anglep        1   57   57      0.470     122.30
anglep        2   57   56      0.760     127.80
anglep        2   57   57      0.760     127.20
anglep        5   57   56      0.490     117.50
anglep        5   57   57      0.490     120.00     120.50       0.00
anglep       57   57   57      0.760     121.70
anglep        6   58    7      1.000     126.00
anglep        7   58   56      0.550     135.10
anglep        9   58   79      1.050     125.80
anglep       56   58   79      0.650     125.00
anglep       75   58   78      1.000     126.00
anglep        7   67   22      0.460     143.60
angle         1   70   71      0.730     113.90
angle         1   71    1      0.320     107.70
angle         1   71    5      0.080     116.90
angle         1   71   70      1.090     113.50     120.10       0.00
angle         5   71    5      0.400     124.50
angle         5   71   70      0.220     111.70     120.10       0.00
angle         1   72    2      0.720     109.60
angle         1   75    3      1.250     112.80
angle         3   75    3      0.770     106.80
angle         3   75   24      0.690     107.70
angle         3   75   56      1.250     110.80
angle         2  106    7      0.700     180.00
angle        23  107  107      0.900     106.20
angle         2  108   41      1.500     107.973
angle         1  109   43      1.200     105.20
angle        23  109   43      1.150     101.50
angle         1  110    1      0.900     117.50
angle         1  110    2      0.450     124.00
angle         1  110   23      0.750     116.70
angle         2  110   23      0.450     119.40
angle         1  111    2      0.800     119.00
angle         2  111    2      0.900     120.00
angle         2  111   23      0.750     109.80
angle         5  113  113      0.400     126.00
angle         1  114  114      0.470     126.00
angle         2  143    2      1.250     119.10
angle         2  143   69      1.730     121.70
angle         2  143  144      1.150     114.00
angle        69  143  144      1.880     136.00
angle         2  144  143      0.800     102.00
angle         1  145  146      1.100     107.50
angle        21  145  146      0.925     104.00
angle         1  146    1      0.460      98.50
angle         1  146   23      0.700     104.50
angle         1  146  145      1.275     102.50     104.50       0.00
angle        23  146   23      0.780     103.00
angle        23  146  145      0.725     101.50     103.50       0.00
angle         3  148    3      0.830     110.00
angle         1  150    1      1.100     106.98
angle         1  150   23      0.700     102.35
angle         1  150  150      0.800     102.47     103.66       0.00
angle        23  150   23      0.650     102.90
angle        23  150  150      0.870     104.58     105.85       0.00
angle         1  153    1      0.400     109.20
angle         1  153    5      0.500     105.50
angle         1  153    6      0.360     107.20
angle         1  153    7      0.800     117.50
angle         1  153  159      0.550     104.70
angle         5  153    5      0.420     104.50
angle         5  153    6      0.640     101.20     103.00       0.00
angle         5  153    7      0.830     116.70     116.40     119.30
angle         5  153  159      0.700     102.00
angle         6  153    6      1.100     102.90     103.60       0.00
angle         6  153    7      0.940     117.20     116.30     118.30
angle         7  153  159      1.180     116.20     115.40     116.80
angle       159  153  159      0.900     103.50     103.80       0.00
angle         1  154    7      0.747     108.728
angle         1  154  155      0.580     102.092
angle         5  154    7      0.734     107.614
angle         5  154  155      0.914     100.776
angle         7  154    7      0.660     122.966    123.785      0.00
angle         7  154  155      1.662     107.883    108.139      0.00
angle         1  155    1      1.296     111.163
angle         1  155   23      0.567     109.505
angle         1  155  154      1.190     109.551    112.917      0.00
angle        23  155   23      0.608     109.688
angle        23  155  154      0.579     103.248    107.770      0.00
angle         1  159  153      0.900     118.80
angle        21  159  153      0.380     112.00


      #########################################
      ##                                     ##
      ##  Angle Bending Parameters (5-Ring)  ##
      ##                                     ##
      #########################################


angle5        1    1    1      0.670     109.50     109.90     111.00
angle5        1    1    2      0.540     110.20     110.20     110.60
angle5        1    1    3      0.800     111.10     111.10     111.10
angle5        1    1    6      0.770     109.30     108.40     108.40
angle5        1    1    8      0.780     109.47     108.00     109.70
angle5        1    1    9      0.750     109.48     111.90     108.50
angle5        1    1   15      0.740     108.00     109.50     110.10
angle5        1    1   18      0.870     109.80
angle5        1    1   19      0.550     107.20
angle5        1    1   22      0.600       0.00       0.00     112.00
angle5        1    1   31      0.680     105.50
angle5        1    1   37      0.380     110.74
angle5        1    1   56      0.670     109.50     109.90     111.00
angle5        1    1   57      0.540     110.20     110.20     110.60
angle5        2    1    2      0.540     113.20     110.00     114.50
angle5        2    1   19      0.500     109.00
angle5        2    1   37      0.380     110.51
angle5        6    1    6      0.560     106.60
angle5       15    1   15      0.420     110.00
angle5       22    1   22      0.500       0.00       0.00     112.00
angle5       37    1   37      0.950     109.00
angle5       41    1   41      0.560     106.60
angle5       57    1   57      0.540     113.20     110.00     113.00
angle5        1    2    1      0.540     115.20
angle5        1    2    2      0.470     122.50
angle5        1    2   37      0.550     115.10     125.00       0.00
angle5        2    2    2      0.550     121.20     121.50       0.00
angle5        2    2    6      0.600     120.00
angle5        2    2   19      0.825     120.50
angle5        2    2   37      0.550     120.00     122.50       0.00
angle5        2    2   40      0.550     122.50     120.10       0.00
angle5        2    2   41      1.150     120.00     116.60       0.00
angle5        2    2   42      1.200     116.30
angle5       37    2   37      0.900     120.00     120.00       0.00
angle5       37    2   40      0.550     124.00     124.00       0.00
angle5       37    2   41      0.800     122.00
angle5       37    2   42      1.200     121.10
angle5        1    3    1      1.250     112.70
angle5        1    3    6      1.150     111.00
angle5        1    3    9      0.620     114.40
angle5        1    3   75      1.150     111.00
angle5        1    3  148      2.000     109.00
angle5        2    3  149      2.000     113.00
angle5        1    6    1      0.790     107.30
angle5        1    6    2      0.770     110.80
angle5        1    6    3      1.550     111.20
angle5        1    6    6      1.058     101.00
angle5        1    6   56      0.800     113.00
angle5        2    6   56      1.900     113.00
angle5        3    6    3      0.770     106.80
angle5        1    8    1      0.720     114.00     112.00       0.00
angle5        1    9    1      0.760     117.10
angle5        1    9    3      1.680     121.10
angle5        1    9   56      0.650     109.00
angle5        1   15    1      0.840      96.90
angle5        1   15   15      1.000     103.20
angle5        1   18    1      0.850     105.00
angle5        1   19    1      0.650     102.80     103.80      99.50
angle5        1   19    2      0.800      98.20
angle5       19   19   19      0.320     106.00
angle5        1   22    1      0.670     120.00
angle5        1   22   22      0.600     112.00     117.00       0.00
angle5       22   22   22      0.550     122.00     108.50       0.00
angle5       22   22   56      0.600       0.00     111.60       0.00
angle5        1   31    1      0.570     100.00
angle5        1   37    2      0.550     108.00
angle5        1   37   37      0.690     106.50
angle5        2   37    2      0.550     118.00
angle5        2   37   37      0.700     116.00
angle5        2   37   40      0.430     114.00
angle5        2   37   41      1.150     114.00
angle5        2   37   42      1.200     121.00
angle5       37   37   42      1.200     123.00
angle5        2   40    2      0.550     126.10     126.10       0.00
angle5        2   40   37      0.430     123.00
angle5        1   41    2      1.000     109.10
angle5        2   41    2      1.150     116.40
angle5        2   41   37      1.150     119.00
angle5       37   41   37      1.000     120.00
angle5        2   42    2      1.200      98.40
angle5        2   42   37      1.200     108.50
angle5       37   42   37      1.200     117.90
angle5        1   56    9      0.450     104.00
angle5        1   56   15      0.740     109.20     109.20       0.00
angle5        1   56   56      0.670     109.50     109.90     111.00
angle5        6   56    9      1.400     101.00
angle5       56   56   56      0.670     109.50     109.90     111.00
angle5        1   57    1      0.540     115.20
angle5        1   57   57      0.470     122.50
angle5       57   57   57      0.550     121.50
angle5        1   75    3      1.550     111.20
angle5        3   75    3      0.770     106.80
angle5      113  113  113      0.600     108.00
angle5      114  114  114      0.600     108.00
angle5        3  148    3      1.600     109.00
angle5        3  149    3      1.600     112.00


      #########################################
      ##                                     ##
      ##  Angle Bending Parameters (4-Ring)  ##
      ##                                     ##
      #########################################


angle4        1    1    9      0.550     106.50
angle4        1    3    9      0.660     113.00
angle4       56    6   56      0.424     107.00
angle4       56    6   58      1.100      99.30
angle4       56    8   56      0.580     107.20     108.20       0.00
angle4        1    9    3      0.600     119.85
angle4       56    9   56      0.760     122.50
angle4       56    9   58      0.430     121.10
angle4       56   15   56      0.470      94.30
angle4       56   19   56      0.175     109.50     109.50     109.50
angle4       22   22   22      0.700      96.50      96.50       0.00
angle4       22   22   56      0.200       0.00     112.00       0.00
angle4       56   31   56      0.490       0.00
angle4       37   37   56      0.690     106.50
angle4       43   37   56      0.480       0.00
angle4       56   39   56      0.380       0.00
angle4       37   43   56      0.350       0.00
angle4        6   56   56      0.340     109.30     109.20     108.40
angle4        8   56   56      0.300     109.47     108.00     111.00
angle4        9   56   56      0.870     109.50
angle4       15   56   56      0.500     100.50     100.50     100.50
angle4       19   56   56      0.105     109.00     111.50     112.80
angle4       22   56   56      0.200       0.00     114.00     114.00
angle4       31   56   56      0.640       0.00
angle4       37   56   56      0.380     110.74
angle4       39   56   56      0.450       0.00
angle4       43   56   56      0.380     105.14
angle4       56   56   56      0.192     109.50     110.30     110.60
angle4       56   56   57      0.230     114.00
angle4       56   56   58      0.900     101.30     101.30     101.30
angle4       56   56   75      0.340     108.40     108.40     109.00
angle4       57   56   57      0.200     109.47     109.51     109.50
angle4       56   57   56      0.140     115.20
angle4       56   57   57      0.140     124.00     123.00       0.00
angle4       57   57   57      0.250     122.00
angle4        6   58   56      0.600     112.50
angle4        9   58   56      0.550     109.70
angle4       56   58   56      0.900     113.70
angle4       56   58   75      0.600     112.50
angle4       56   75   58      1.100      99.30


      #########################################
      ##                                     ##
      ##  Angle Bending Parameters (3-Ring)  ##
      ##                                     ##
      #########################################


angle3       22   19   22      0.125      50.20
angle3       19   22   22      0.700      65.00
angle3       22   22   22      0.850      55.00      60.00      60.00
angle3       22   22   38      0.450      48.00
angle3       22   22   49      0.560      59.30
angle3       22   22   67      0.800      56.60
angle3       38   22   38      0.450      53.00
angle3       22   38   22      0.400      67.00
angle3       22   38   38      0.550      80.00
angle3       22   49   22      0.620      61.40
angle3       22   67   22      1.250      66.80


      ################################################
      ##                                            ##
      ##  Angle Bending Parameters (Square Planar)  ##
      ##                                            ##
      ################################################


#angle        1   59    1      0.200    180.000
#angle        1   59    1      1.500     90.000
#angle        1   59    5      0.200    180.000
#angle        1   59    5      1.500     90.000
#angle        1   59   40      0.500    180.000
#angle        1   59   40      1.500     90.000
#angle       40   59   40      0.500    180.000
#angle       40   59   40      1.500     90.000
#angle        1   62    1      0.200    180.000
#angle        1   62    1      1.500     90.000
#angle        1   62    5      0.200    180.000
#angle        1   62    5      1.500     90.000
#angle        1   62   40      0.500    180.000
#angle        1   62   40      1.500     90.000
#angle       40   62   40      0.500    180.000
#angle       40   62   40      1.500     90.000
#angle        1   64    1      0.200    180.000
#angle        1   64    1      1.500     90.000
#angle        1   64    5      0.200    180.000
#angle        1   64    5      1.500     90.000
#angle        1   64   40      0.500    180.000
#angle        1   64   40      1.500     90.000
#angle       40   64   40      0.500    180.000
#angle       40   64   40      1.500     90.000


      #####################################################
      ##                                                 ##
      ##  Angle Bending Parameters (Trigonal Bipyramid)  ##
      ##                                                 ##
      #####################################################


#angle        1   60    1      0.200    180.000
#angle        1   60    1      0.200    120.000
#angle        1   60    1      1.500     90.000
#angle        1   60    5      0.200    180.000
#angle        1   60    5      0.200    120.000
#angle        1   60    5      1.500     90.000
#angle        5   60    6      0.200    120.000
#angle        5   60    6      1.500     90.000
#angle        5   60    8      0.200    120.000
#angle        5   60    8      1.500     90.000
#angle        1   60   11      0.200    180.000
#angle        1   60   11      0.200    120.000
#angle        1   60   11      1.500     90.000
#angle        5   60   11      0.200    180.000
#angle        5   60   11      0.200    120.000
#angle        5   60   11      1.500     90.000
#angle       11   60   11      0.200    180.000
#angle       11   60   11      0.200    120.000
#angle       11   60   11      1.500     90.000


      #################################################
      ##                                             ##
      ##  Angle Bending Parameters (Square Pyramid)  ##
      ##                                             ##
      #################################################


#angle        1   60    1      0.200    152.000
#angle        1   60    1      0.200    104.000
#angle        1   60    1      1.500     86.000
#angle        1   60    5      0.200    152.000
#angle        1   60    5      0.200    104.000
#angle        1   60    5      1.500     86.000
#angle        1   60   11      0.200    152.000
#angle        1   60   11      0.200    104.000
#angle        1   60   11      1.500     86.000
#angle        5   60   11      0.200    152.000
#angle        5   60   11      0.200    104.000
#angle        5   60   11      1.500     86.000
#angle       11   60   11      0.200    152.000
#angle       11   60   11      0.200    104.000
#angle       11   60   11      1.500     86.000


      #######################################################
      ##                                                   ##
      ##  Angle Bending Parameters (Octahedral Bipyramid)  ##
      ##                                                   ##
      #######################################################


#angle        1   64    1      0.200    180.000
#angle        1   64    1      1.200     90.000
#angle        1   64    5      0.300    180.000
#angle        1   64    5      1.300     90.000
#angle        1   64   11      0.400    180.000
#angle        1   60   11      1.400     90.000
#angle        5   64   11      0.500    180.000
#angle        5   64   11      1.500     90.000
#angle       11   64   11      0.600    180.000
#angle       11   64   11      1.600     90.000


      ###############################
      ##                           ##
      ##  Stretch-Bend Parameters  ##
      ##                           ##
      ###############################


   #########################################################
   ##                                                     ##
   ##         Actual MM3 Stretch-Bend Parameters          ##
   ##                                                     ##
   ##                 X       R-X-R     R-X-H     H-X-H   ##
   ##                                                     ##
   ##   strbnd        C       0.130     0.080     0.000   ##
   ##   strbnd        N       0.050     0.030     0.000   ##
   ##   strbnd        O       0.100     0.090     0.000   ##
   ##   strbnd        Si      0.100     0.060     0.000   ##
   ##   strbnd        P       0.100     0.060     0.000   ##
   ##   strbnd        PO4     0.100     0.100     0.000   ##
   ##   strbnd        S      -0.040     0.010     0.000   ##
   ##   strbnd      3rd Row   0.450     0.000     0.000   ##
   ##   strbnd4       C       0.050     0.080     0.000   ##
   ##   strbnd4       N       0.100     0.030     0.000   ##
   ##   strbnd4       O       0.260     0.090     0.000   ##
   ##   strbnd4       S       0.290     0.010     0.000   ##
   ##   strbnd5       C       0.130     0.080     0.000   ##
   ##   strbnd5       N       0.100     0.030     0.000   ##
   ##   strbnd5       O       0.500     0.090     0.000   ##
   ##   strbnd5       S       0.280     0.010     0.000   ##
   ##                                                     ##
   ##   these force constants are used to couple both     ##
   ##   bond length deviations to the angle deviation     ##
   ##                                                     ##
   #########################################################


strbnd        1    1    1      0.130      0.130
strbnd        1    1    2      0.130      0.130
strbnd        1    1    3      0.130      0.130
strbnd        1    1    4      0.130      0.130
strbnd        1    1    5      0.080      0.080
strbnd        1    1    6      0.130      0.130
strbnd        1    1    8      0.130      0.130
strbnd        1    1    9      0.130      0.130
strbnd        1    1   11      0.130      0.130
strbnd        1    1   12      0.130      0.130
strbnd        1    1   13      0.130      0.130
strbnd        1    1   14      0.130      0.130
strbnd        1    1   15      0.130      0.130
strbnd        1    1   16      0.130      0.130
strbnd        1    1   17      0.130      0.130
strbnd        1    1   18      0.130      0.130
strbnd        1    1   19      0.130      0.130
strbnd        1    1   22      0.130      0.130
strbnd        1    1   25      0.130      0.130
strbnd        1    1   26      0.130      0.130
strbnd        1    1   29      0.130      0.130
strbnd        1    1   31      0.130      0.130
strbnd        1    1   32      0.130      0.130
strbnd        1    1   33      0.130      0.130
strbnd        1    1   34      0.130      0.130
strbnd        1    1   35      0.130      0.130
strbnd        1    1   36      0.080      0.080
strbnd        1    1   37      0.130      0.130
strbnd        1    1   39      0.130      0.130
strbnd        1    1   41      0.130      0.130
strbnd        1    1   43      0.130      0.130
strbnd        1    1   46      0.130      0.130
strbnd        1    1   50      0.130      0.130
strbnd        1    1   56      0.130      0.130
strbnd        1    1   57      0.130      0.130
strbnd        1    1   70      0.130      0.130
strbnd        1    1   71      0.130      0.130
strbnd        1    1  109      0.130      0.130
strbnd        1    1  110      0.130      0.130
strbnd        1    1  111      0.130      0.130
strbnd        1    1  150      0.130      0.130
strbnd        1    1  153      0.130      0.130
strbnd        1    1  154      0.130      0.130
strbnd        1    1  159      0.130      0.130
strbnd        2    1    2      0.130      0.130
strbnd        2    1    3      0.130      0.130
strbnd        2    1    4      0.130      0.130
strbnd        2    1    5      0.080      0.080
strbnd        2    1    6      0.130      0.130
strbnd        2    1    8      0.130      0.130
strbnd        2    1    9      0.130      0.130
strbnd        2    1   11      0.130      0.130
strbnd        2    1   12      0.130      0.130
strbnd        2    1   14      0.130      0.130
strbnd        2    1   15      0.130      0.130
strbnd        2    1   16      0.130      0.130
strbnd        2    1   19      0.130      0.130
strbnd        2    1   22      0.130      0.130
strbnd        2    1   36      0.080      0.080
strbnd        2    1   37      0.130      0.130
strbnd        2    1   39      0.130      0.130
strbnd        2    1   43      0.130      0.130
strbnd        3    1    3      0.130      0.130
strbnd        3    1    5      0.080      0.080
strbnd        3    1    6      0.130      0.130
strbnd        3    1    8      0.130      0.130
strbnd        3    1    9      0.130      0.130
strbnd        3    1   11      0.130      0.130
strbnd        3    1   12      0.130      0.130
strbnd        3    1   13      0.130      0.130
strbnd        3    1   14      0.130      0.130
strbnd        3    1   15      0.130      0.130
strbnd        3    1   16      0.130      0.130
strbnd        3    1   36      0.080      0.080
strbnd        3    1   39      0.130      0.130
strbnd        4    1    4      0.130      0.130
strbnd        4    1    5      0.080      0.080
strbnd        4    1    6      0.130      0.130
strbnd        4    1   11      0.130      0.130
strbnd        4    1   75      0.130      0.130
strbnd        5    1    6      0.080      0.080
strbnd        5    1    8      0.080      0.080
strbnd        5    1    9      0.080      0.080
strbnd        5    1   11      0.080      0.080
strbnd        5    1   12      0.080      0.080
strbnd        5    1   13      0.080      0.080
strbnd        5    1   14      0.080      0.080
strbnd        5    1   15      0.080      0.080
strbnd        5    1   16      0.080      0.080
strbnd        5    1   17      0.080      0.080
strbnd        5    1   18      0.080      0.080
strbnd        5    1   19      0.080      0.080
strbnd        5    1   22      0.080      0.080
strbnd        5    1   25      0.080      0.080
strbnd        5    1   26      0.080      0.080
strbnd        5    1   29      0.080      0.080
strbnd        5    1   31      0.080      0.080
strbnd        5    1   32      0.080      0.080
strbnd        5    1   33      0.080      0.080
strbnd        5    1   34      0.080      0.080
strbnd        5    1   35      0.080      0.080
strbnd        5    1   37      0.080      0.080
strbnd        5    1   39      0.080      0.080
strbnd        5    1   40      0.080      0.080
strbnd        5    1   41      0.080      0.080
strbnd        5    1   43      0.080      0.080
strbnd        5    1   46      0.080      0.080
strbnd        5    1   50      0.080      0.080
strbnd        5    1   56      0.080      0.080
strbnd        5    1   57      0.080      0.080
strbnd        5    1   70      0.080      0.080
strbnd        5    1   71      0.080      0.080
strbnd        5    1  109      0.080      0.080
strbnd        5    1  110      0.080      0.080
strbnd        5    1  111      0.080      0.080
strbnd        5    1  145      0.080      0.080
strbnd        5    1  146      0.080      0.080
strbnd        5    1  150      0.080      0.080
strbnd        5    1  153      0.080      0.080
strbnd        5    1  159      0.080      0.080
strbnd        6    1    6      0.130      0.130
strbnd        6    1   12      0.130      0.130
strbnd        6    1   22      0.130      0.130
strbnd        6    1   50      0.130      0.130
strbnd        6    1   71      0.130      0.130
strbnd        8    1    8      0.130      0.130
strbnd        8    1   22      0.130      0.130
strbnd        8    1   39      0.130      0.130
strbnd        9    1   15      0.130      0.130
strbnd        9    1   36      0.080      0.080
strbnd       11    1   11      0.130      0.130
strbnd       11    1   12      0.130      0.130
strbnd       11    1   13      0.130      0.130
strbnd       12    1   12      0.130      0.130
strbnd       12    1   13      0.130      0.130
strbnd       13    1   13      0.130      0.130
strbnd       14    1   14      0.130      0.130
strbnd       15    1   15      0.130      0.130
strbnd       19    1   19      0.130      0.130
strbnd       22    1   22      0.130      0.130
strbnd       22    1   37      0.130      0.130
strbnd       22    1   43      0.130      0.130
strbnd       37    1   37      0.130      0.130
strbnd       41    1   41      0.130      0.130
strbnd       46    1   46      0.130      0.130
strbnd       50    1   50      0.130      0.130
strbnd       57    1   57      0.130      0.130
strbnd        1    2    1      0.130      0.130
strbnd        1    2    2      0.130      0.130
strbnd        1    2    3      0.130      0.130
strbnd        1    2    4      0.130      0.130
strbnd        1    2    5      0.080      0.080
strbnd        1    2    6      0.130      0.130
strbnd        1    2   19      0.130      0.130
strbnd        1    2   36      0.080      0.080
strbnd        1    2   37      0.130      0.130
strbnd        1    2   40      0.130      0.130
strbnd        1    2   41      0.130      0.130
strbnd        1    2   42      0.130      0.130
strbnd        1    2   72      0.130      0.130
strbnd        1    2  106      0.130      0.130
strbnd        1    2  108      0.130      0.130
strbnd        2    2    2      0.130      0.130
strbnd        2    2    3      0.130      0.130
strbnd        2    2    5      0.080      0.080
strbnd        2    2    6      0.130      0.130
strbnd        2    2    8      0.130      0.130
strbnd        2    2    9      0.130      0.130
strbnd        2    2   11      0.130      0.130
strbnd        2    2   12      0.130      0.130
strbnd        2    2   13      0.130      0.130
strbnd        2    2   14      0.130      0.130
strbnd        2    2   18      0.130      0.130
strbnd        2    2   19      0.130      0.130
strbnd        2    2   22      0.130      0.130
strbnd        2    2   25      0.130      0.130
strbnd        2    2   26      0.130      0.130
strbnd        2    2   31      0.130      0.130
strbnd        2    2   36      0.080      0.080
strbnd        2    2   37      0.130      0.130
strbnd        2    2   40      0.130      0.130
strbnd        2    2   41      0.130      0.130
strbnd        2    2   42      0.130      0.130
strbnd        2    2   43      0.130      0.130
strbnd        2    2   46      0.130      0.130
strbnd        2    2   57      0.130      0.130
strbnd        2    2  108      0.130      0.130
strbnd        2    2  111      0.130      0.130
strbnd        2    2  143      0.130      0.130
strbnd        2    2  144      0.130      0.130
strbnd        3    2    5      0.080      0.080
strbnd        3    2   40      0.130      0.130
strbnd        4    2    5      0.080      0.080
strbnd        5    2    6      0.080      0.080
strbnd        5    2    8      0.080      0.080
strbnd        5    2    9      0.080      0.080
strbnd        5    2   11      0.080      0.080
strbnd        5    2   12      0.080      0.080
strbnd        5    2   13      0.080      0.080
strbnd        5    2   14      0.080      0.080
strbnd        5    2   18      0.080      0.080
strbnd        5    2   19      0.080      0.080
strbnd        5    2   22      0.080      0.080
strbnd        5    2   31      0.080      0.080
strbnd        5    2   37      0.080      0.080
strbnd        5    2   38      0.080      0.080
strbnd        5    2   40      0.080      0.080
strbnd        5    2   41      0.080      0.080
strbnd        5    2   42      0.080      0.080
strbnd        5    2   43      0.080      0.080
strbnd        5    2   46      0.080      0.080
strbnd        5    2   50      0.080      0.080
strbnd        5    2   57      0.080      0.080
strbnd        5    2   72      0.080      0.080
strbnd        5    2  106      0.080      0.080
strbnd        5    2  108      0.080      0.080
strbnd        5    2  110      0.080      0.080
strbnd        5    2  111      0.080      0.080
strbnd        5    2  143      0.080      0.080
strbnd        8    2    8      0.130      0.130
strbnd        8    2   22      0.130      0.130
strbnd        9    2    9      0.130      0.130
strbnd       11    2  106      0.130      0.130
strbnd       12    2   12      0.130      0.130
strbnd       12    2   13      0.130      0.130
strbnd       12    2   41      0.130      0.130
strbnd       12    2  106      0.130      0.130
strbnd       13    2   41      0.130      0.130
strbnd       13    2  106      0.130      0.130
strbnd       14    2   41      0.130      0.130
strbnd       19    2   19      0.130      0.130
strbnd       37    2   37      0.130      0.130
strbnd       37    2   40      0.130      0.130
strbnd       37    2   41      0.130      0.130
strbnd       37    2   42      0.130      0.130
strbnd       42    2   42      0.130      0.130
strbnd        1    3    1      0.130      0.130
strbnd        1    3    2      0.130      0.130
strbnd        1    3    3      0.130      0.130
strbnd        1    3    5      0.080      0.080
strbnd        1    3    6      0.130      0.130
strbnd        1    3    7      0.130      0.130
strbnd        1    3    9      0.130      0.130
strbnd        1    3   11      0.130      0.130
strbnd        1    3   12      0.130      0.130
strbnd        1    3   13      0.130      0.130
strbnd        1    3   14      0.130      0.130
strbnd        1    3   47      0.130      0.130
strbnd        1    3   75      0.130      0.130
strbnd        1    3   76      0.130      0.130
strbnd        1    3   77      0.130      0.130
strbnd        1    3   80      0.130      0.130
strbnd        1    3   82      0.130      0.130
strbnd        1    3  148      0.130      0.130
strbnd        2    3    2      0.130      0.130
strbnd        2    3    3      0.130      0.130
strbnd        2    3    5      0.080      0.080
strbnd        2    3    6      0.130      0.130
strbnd        2    3    7      0.130      0.130
strbnd        2    3   75      0.130      0.130
strbnd        2    3   76      0.130      0.130
strbnd        2    3  102      0.130      0.130
strbnd        2    3  149      0.130      0.130
strbnd        2    3  151      0.130      0.130
strbnd        3    3    5      0.080      0.080
strbnd        3    3   36      0.080      0.080
strbnd        3    3   76      0.130      0.130
strbnd        3    3  101      0.130      0.130
strbnd        5    3    6      0.080      0.080
strbnd        5    3    7      0.080      0.080
strbnd        5    3    9      0.080      0.080
strbnd        5    3   11      0.080      0.080
strbnd        5    3   12      0.080      0.080
strbnd        5    3   13      0.080      0.080
strbnd        5    3   47      0.080      0.080
strbnd        5    3   56      0.080      0.080
strbnd        5    3   75      0.080      0.080
strbnd        5    3   76      0.080      0.080
strbnd        5    3   80      0.080      0.080
strbnd        5    3   82      0.080      0.080
strbnd        5    3  148      0.080      0.080
strbnd        6    3    7      0.130      0.130
strbnd        7    3    9      0.130      0.130
strbnd        7    3   22      0.130      0.130
strbnd        7    3   56      0.130      0.130
strbnd        9    3    9      0.130      0.130
strbnd       11    3   80      0.130      0.130
strbnd       12    3   80      0.130      0.130
strbnd       13    3   80      0.130      0.130
strbnd       14    3   80      0.130      0.130
strbnd       36    3   76      0.080      0.080
strbnd       47    3   47      0.130      0.130
strbnd       75    3   77      0.130      0.130
strbnd       75    3   78      0.130      0.130
strbnd       82    3  148      0.130      0.130
strbnd      102    3  149      0.130      0.130
strbnd        1    4    4      0.130      0.130
strbnd        1    4   10      0.130      0.130
strbnd        2    4    2      0.130      0.130
strbnd        2    4    4      0.130      0.130
strbnd        4    4  124      0.080      0.080
strbnd       10    4   50      0.130      0.130
strbnd        1    6    1      0.100      0.100
strbnd        1    6    2      0.100      0.100
strbnd        1    6    3      0.100      0.100
strbnd        1    6    6      0.100      0.100
strbnd        1    6   19      0.100      0.100
strbnd        1    6   21      0.090      0.090
strbnd        1    6   25      0.100      0.100
strbnd        1    6   56      0.100      0.100
strbnd        1    6  153      0.100      0.100
strbnd        2    6   21      0.090      0.090
strbnd        2    6   25      0.100      0.100
strbnd        2    6   56      0.100      0.100
strbnd        2    6   73      0.090      0.090
strbnd        3    6    3      0.100      0.100
strbnd        3    6   24      0.090      0.090
strbnd        3    6   56      0.100      0.100
strbnd        6    6   21      0.090      0.090
strbnd       19    6   19      0.100      0.100
strbnd       19    6   21      0.090      0.090
strbnd       21    6   26      0.090      0.090
strbnd       21    6  153      0.090      0.090
strbnd       56    6   56      0.100      0.100
strbnd       56    6   58      0.100      0.100
strbnd        1    8    1      0.050      0.050
strbnd        1    8    2      0.050      0.050
strbnd        1    8   23      0.030      0.030
strbnd        1    8   50      0.050      0.050
strbnd        2    8   23      0.030      0.030
strbnd       23    8   50      0.030      0.030
strbnd       23    8   56      0.030      0.030
strbnd       56    8   56      0.050      0.050
strbnd        1    9    1      0.050      0.050
strbnd        1    9    2      0.050      0.050
strbnd        1    9    3      0.050      0.050
strbnd        1    9   18      0.050      0.050
strbnd        1    9   28      0.030      0.030
strbnd        1    9   30      0.050      0.050
strbnd        1    9   56      0.050      0.050
strbnd        1    9   58      0.050      0.050
strbnd        2    9    2      0.050      0.050
strbnd        2    9    3      0.050      0.050
strbnd        2    9   28      0.030      0.030
strbnd        3    9    3      0.050      0.050
strbnd        3    9   28      0.030      0.030
strbnd       18    9   28      0.030      0.030
strbnd       28    9   30      0.030      0.030
strbnd       28    9   56      0.030      0.030
strbnd       28    9   58      0.030      0.030
strbnd       56    9   56      0.050      0.050
strbnd       56    9   58      0.050      0.050
strbnd        1   15    1     -0.040     -0.040
strbnd        1   15   15     -0.040     -0.040
strbnd        1   15   44      0.010      0.010
strbnd       15   15   44      0.010      0.010
strbnd       56   15   56     -0.040     -0.040
strbnd        1   16    1     -0.040     -0.040
strbnd        1   16    5      0.010      0.010
strbnd        1   17    1     -0.040     -0.040
strbnd        1   17    5      0.010      0.010
strbnd        1   17    7     -0.040     -0.040
strbnd        5   17    7      0.010      0.010
strbnd        1   18    1     -0.040     -0.040
strbnd        1   18    2     -0.040     -0.040
strbnd        1   18    5      0.010      0.010
strbnd        1   18    7     -0.040     -0.040
strbnd        1   18    9     -0.040     -0.040
strbnd        2   18    2     -0.040     -0.040
strbnd        2   18    7     -0.040     -0.040
strbnd        5   18    7      0.010      0.010
strbnd        5   18    9      0.010      0.010
strbnd        7   18    7     -0.040     -0.040
strbnd        7   18    9     -0.040     -0.040
strbnd        1   19    1      0.100      0.100
strbnd        1   19    2      0.100      0.100
strbnd        1   19    5      0.060      0.060
strbnd        1   19    6      0.100      0.100
strbnd        1   19   19      0.100      0.100
strbnd        1   19   22      0.100      0.100
strbnd        1   19   56      0.100      0.100
strbnd        2   19    2      0.100      0.100
strbnd        2   19    5      0.060      0.060
strbnd        2   19    6      0.100      0.100
strbnd        2   19   19      0.100      0.100
strbnd        5   19    6      0.060      0.060
strbnd        5   19   19      0.060      0.060
strbnd        5   19   22      0.060      0.060
strbnd        5   19   56      0.060      0.060
strbnd        6   19    6      0.100      0.100
strbnd       19   19   19      0.100      0.100
strbnd       22   19   22      0.100      0.100
strbnd       56   19   56      0.100      0.100
strbnd        1   22    1      0.130      0.130
strbnd        1   22    5      0.080      0.080
strbnd        1   22   22      0.130      0.130
strbnd        1   22   49      0.130      0.130
strbnd        2   22    2      0.130      0.130
strbnd        2   22    5      0.080      0.080
strbnd        2   22   22      0.130      0.130
strbnd        2   22   49      0.130      0.130
strbnd        3   22    5      0.080      0.080
strbnd        5   22   19      0.080      0.080
strbnd        5   22   22      0.080      0.080
strbnd        5   22   31      0.080      0.080
strbnd        5   22   38      0.080      0.080
strbnd        5   22   46      0.080      0.080
strbnd        5   22   49      0.080      0.080
strbnd        5   22   56      0.080      0.080
strbnd        5   22   67      0.080      0.080
strbnd       19   22   22      0.130      0.130
strbnd       22   22   22      0.130      0.130
strbnd       22   22   31      0.130      0.130
strbnd       22   22   38      0.130      0.130
strbnd       22   22   46      0.130      0.130
strbnd       22   22   49      0.130      0.130
strbnd       22   22   56      0.130      0.130
strbnd       22   22   67      0.130      0.130
strbnd       38   22   38      0.130      0.130
strbnd        1   25    1      0.100      0.100
strbnd        1   25    2      0.100      0.100
strbnd        1   25    5      0.060      0.060
strbnd        2   25    2      0.100      0.100
strbnd        6   25    6      0.100      0.100
strbnd        1   29    1      0.130      0.130
strbnd        1   29    5      0.080      0.080
strbnd        9   30    9      0.130      0.130
strbnd        1   31    1      0.450      0.450
strbnd        1   31    2      0.450      0.450
strbnd        1   31   31      0.450      0.450
strbnd        2   31    2      0.450      0.450
strbnd        2   31   31      0.450      0.450
strbnd       31   31   31      0.450      0.450
strbnd       56   31   56      0.450      0.450
strbnd        1   34    1      0.450      0.450
strbnd        1   37    2      0.050      0.050
strbnd        1   37   37      0.050      0.050
strbnd        1   37   43      0.050      0.050
strbnd        2   37    2      0.050      0.050
strbnd        2   37   23      0.030      0.030
strbnd        2   37   37      0.050      0.050
strbnd        2   37   40      0.050      0.050
strbnd        2   37   41      0.050      0.050
strbnd        2   37   42      0.050      0.050
strbnd       23   37   37      0.030      0.030
strbnd       37   37   42      0.050      0.050
strbnd       37   37   56      0.050      0.050
strbnd       43   37   56      0.050      0.050
strbnd        1   38   22      0.130      0.130
strbnd        2   38   22      0.130      0.130
strbnd        5   38   22      0.080      0.080
strbnd        5   38   38      0.080      0.080
strbnd       22   38   22      0.130      0.130
strbnd       22   38   38      0.130      0.130
strbnd        1   39    1      0.050      0.050
strbnd        1   39   48      0.030      0.030
strbnd        1   39   69      0.050      0.050
strbnd       56   39   56      0.050      0.050
strbnd        1   40    2      0.100      0.100
strbnd        2   40    2      0.100      0.100
strbnd        2   40   23      0.030      0.030
strbnd        2   40   37      0.100      0.100
strbnd       23   40   37      0.030      0.030
strbnd        1   41    2      0.500      0.500
strbnd        1   41  108      0.500      0.500
strbnd        2   41    2      0.500      0.500
strbnd        2   41   37      0.500      0.500
strbnd        2   41   73      0.090      0.090
strbnd        2   41  108      0.500      0.500
strbnd       37   41   37      0.500      0.500
strbnd       73   41  108      0.090      0.090
strbnd        2   42    2      0.280      0.280
strbnd        2   42   37      0.280      0.280
strbnd        2   42   44      0.010      0.010
strbnd       37   42   37      0.280      0.280
strbnd        1   43    7      0.050      0.050
strbnd        1   43   37      0.050      0.050
strbnd        1   43   69      0.050      0.050
strbnd        1   43  109      0.050      0.050
strbnd        2   43    2      0.050      0.050
strbnd        2   43   69      0.050      0.050
strbnd        7   43   37      0.050      0.050
strbnd       23   43   69      0.030      0.030
strbnd       23   43  109      0.030      0.030
strbnd       37   43   56      0.050      0.050
strbnd       69   43  109      0.050      0.050
strbnd        1   46    7      0.050      0.050
strbnd        2   46    7      0.050      0.050
strbnd        7   46    7      0.050      0.050
strbnd        7   46   22      0.050      0.050
strbnd       22   49   22      0.100      0.100
strbnd        1   50   50      0.130      0.130
strbnd        2   50   50      0.130      0.130
strbnd        4   50   50      0.130      0.130
strbnd        5   50   50      0.080      0.080
strbnd        8   50   50      0.130      0.130
strbnd        1   56    1      0.050      0.050
strbnd        1   56    5      0.080      0.080
strbnd        1   56    6      0.050      0.050
strbnd        1   56    9      0.050      0.050
strbnd        1   56   15      0.050      0.050
strbnd        1   56   22      0.050      0.050
strbnd        1   56   56      0.050      0.050
strbnd        1   56   58      0.050      0.050
strbnd        1   56   75      0.050      0.050
strbnd        3   56    5      0.080      0.080
strbnd        3   56   56      0.050      0.050
strbnd        5   56    6      0.080      0.080
strbnd        5   56    8      0.080      0.080
strbnd        5   56    9      0.080      0.080
strbnd        5   56   15      0.080      0.080
strbnd        5   56   19      0.080      0.080
strbnd        5   56   22      0.080      0.080
strbnd        5   56   31      0.080      0.080
strbnd        5   56   56      0.080      0.080
strbnd        5   56   57      0.080      0.080
strbnd        5   56   58      0.080      0.080
strbnd        5   56   75      0.080      0.080
strbnd        6   56    9      0.050      0.050
strbnd        6   56   56      0.050      0.050
strbnd        8   56   56      0.050      0.050
strbnd        9   56   56      0.050      0.050
strbnd       15   56   56      0.050      0.050
strbnd       19   56   56      0.050      0.050
strbnd       22   56   56      0.050      0.050
strbnd       31   56   56      0.050      0.050
strbnd       37   56   56      0.050      0.050
strbnd       39   56   56      0.050      0.050
strbnd       43   56   56      0.050      0.050
strbnd       56   56   56      0.050      0.050
strbnd       56   56   57      0.050      0.050
strbnd       56   56   58      0.050      0.050
strbnd       56   56   75      0.050      0.050
strbnd       57   56   57      0.050      0.050
strbnd        1   57    1      0.050      0.050
strbnd        1   57   56      0.050      0.050
strbnd        1   57   57      0.050      0.050
strbnd        2   57   56      0.050      0.050
strbnd        2   57   57      0.050      0.050
strbnd        5   57   56      0.080      0.080
strbnd        5   57   57      0.080      0.080
strbnd       56   57   56      0.050      0.050
strbnd       56   57   57      0.050      0.050
strbnd       57   57   57      0.050      0.050
strbnd        6   58    7      0.050      0.050
strbnd        6   58   56      0.050      0.050
strbnd        7   58   56      0.050      0.050
strbnd        9   58   56      0.050      0.050
strbnd        9   58   79      0.050      0.050
strbnd       56   58   56      0.050      0.050
strbnd       56   58   75      0.050      0.050
strbnd       56   58   79      0.050      0.050
strbnd       75   58   78      0.050      0.050
strbnd        7   67   22      0.130      0.130
strbnd       22   67   22      0.130      0.130
strbnd        1   71    1      0.130      0.130
strbnd        1   71    5      0.080      0.080
strbnd        1   71   70      0.130      0.130
strbnd        5   71   70      0.080      0.080
strbnd        1   72    2      0.050      0.050
strbnd        1   75    3      0.100      0.100
strbnd        3   75    3      0.100      0.100
strbnd        3   75   24      0.090      0.090
strbnd        3   75   56      0.100      0.100
strbnd       56   75   58      0.100      0.100
strbnd        2  106    7      0.130      0.130
strbnd       23  107  107      0.030      0.030
strbnd        2  108   41      0.050      0.050
strbnd        1  109   43      0.050      0.050
strbnd       23  109   43      0.030      0.030
strbnd        1  110    1      0.050      0.050
strbnd        1  110    2      0.050      0.050
strbnd        1  110   23      0.030      0.030
strbnd        2  110   23      0.030      0.030
strbnd        1  111    2      0.050      0.050
strbnd        2  111    2      0.050      0.050
strbnd        2  111   23      0.030      0.030
strbnd        5  113  113      0.080      0.080
strbnd      113  113  113      0.130      0.130
strbnd        1  114  114      0.130      0.130
strbnd      114  114  114      0.130      0.130
strbnd        2  143    2      0.050      0.050
strbnd        2  143   69      0.050      0.050
strbnd        2  143  144      0.050      0.050
strbnd       69  143  144      0.050      0.050
strbnd        2  144  143      0.050      0.050
strbnd        1  145  146      0.100      0.100
strbnd       21  145  146      0.090      0.090
strbnd        1  146    1      0.050      0.050
strbnd        1  146   23      0.030      0.030
strbnd        1  146  145      0.050      0.050
strbnd       23  146  145      0.030      0.030
strbnd        3  148    3      0.100      0.100
strbnd        3  149    3      0.100      0.100
strbnd        1  150    1      0.050      0.050
strbnd        1  150   23      0.030      0.030
strbnd        1  150  150      0.050      0.050
strbnd       23  150  150      0.030      0.030
strbnd        1  153    1      0.100      0.100
strbnd        1  153    5      0.060      0.060
strbnd        1  153    6      0.100      0.100
strbnd        1  153    7      0.100      0.100
strbnd        1  153  159      0.100      0.100
strbnd        5  153    6      0.060      0.060
strbnd        5  153    7      0.060      0.060
strbnd        5  153  159      0.060      0.060
strbnd        6  153    6      0.100      0.100
strbnd        6  153    7      0.100      0.100
strbnd        7  153  159      0.100      0.100
strbnd      159  153  159      0.100      0.100
strbnd        1  154    7     -0.040     -0.040
strbnd        1  154  155     -0.040     -0.040
strbnd        5  154    7      0.010      0.010
strbnd        5  154  155      0.010      0.010
strbnd        7  154    7     -0.040     -0.040
strbnd        7  154  155     -0.040     -0.040
strbnd        1  155    1      0.050      0.050
strbnd        1  155   23      0.030      0.030
strbnd        1  155  154      0.050      0.050
strbnd       23  155  154      0.030      0.030
strbnd        1  159  153      0.100      0.100
strbnd       21  159  153      0.100      0.100


      ##############################
      ##                          ##
      ##  Angle-Angle Parameters  ##
      ##                          ##
      ##############################


angang        1                0.240      0.300      0.000
angang        2                0.240      0.300      0.000
angang        3                0.240      0.300      0.000
angang        8                0.240      0.300      0.000
angang        9                0.240      0.300      0.000
angang       17                0.240      0.300      0.000
angang       18                0.240      0.300      0.000
angang       19                0.240      0.300      0.000
angang       22                0.240      0.300      0.000
angang       25                0.240      0.300      0.000
angang       26                0.240      0.300      0.000
angang       27                0.240      0.300      0.000
angang       29                0.240      0.300      0.000
angang       30                0.240      0.300      0.000
angang       33                0.240      0.300      0.000
angang       38                0.240      0.300      0.000
angang       39                0.240      0.300      0.000
angang       40                0.240      0.300      0.000
angang       46                0.240      0.300      0.000
angang       50                0.240      0.300      0.000
angang       56                0.240      0.300      0.000
angang       57                0.240      0.300      0.000
angang       58                0.240      0.300      0.000
angang       60                0.240      0.300      0.000
angang       62                0.240      0.300      0.000
angang       64                0.240      0.300      0.000
angang       66                0.240      0.300      0.000
angang       67                0.240      0.300      0.000
angang      113                0.240      0.300      0.000
angang      114                0.240      0.300      0.000
angang      146                0.240      0.300      0.000
angang      150                0.240      0.300      0.000
angang      151                0.240      0.300      0.000
angang      153                0.240      0.300      0.000
angang      154                0.240      0.300      0.000
angang      155                0.240      0.300      0.000
angang      159                0.240      0.300      0.000
angang      160                0.240      0.300      0.000
angang      161                0.240      0.300      0.000
angang      162                0.240      0.300      0.000


      ####################################
      ##                                ##
      ##  Out-of-Plane Bend Parameters  ##
      ##                                ##
      ####################################


opbend        1    2    0    0            0.100
opbend        2    2    0    0            0.200
opbend        3    2    0    0            0.050
opbend        4    2    0    0            0.050
opbend        5    2    0    0            0.110
opbend        6    2    0    0            0.150
opbend        8    2    0    0            0.100
opbend        9    2    0    0            0.100
opbend       11    2    0    0            0.200
opbend       12    2    0    0            0.400
opbend       13    2    0    0            0.100
opbend       18    2    0    0            0.100
opbend       19    2    0    0            0.100
opbend       22    2    0    0            0.100
opbend       25    2    0    0            0.500
opbend       26    2    0    0            0.105
opbend       31    2    0    0            0.100
opbend       36    2    0    0            0.110
opbend       37    2    0    0            0.250
opbend       38    2    0    0            0.100
opbend       40    2    0    0            0.050
opbend       41    2    0    0            0.150
opbend       42    2    0    0            0.500
opbend       43    2    0    0            0.050
opbend       46    2    0    0            0.300
opbend       56    2    0    0            0.110
opbend       57    2    0    0            0.200
opbend       68    2    0    0            0.050
opbend       72    2    0    0            1.500
opbend      108    2    0    0            0.010
opbend      110    2    0    0            0.800
opbend      111    2    0    0            0.250
opbend        1    3    0    0            0.590
opbend        2    3    0    0            0.800
opbend        3    3    0    0            1.000
opbend        4    3    0    0            0.800
opbend        5    3    0    0            1.180
opbend        6    3    0    0            1.700
opbend        7    3    0    0            0.650
opbend        9    3    0    0            1.500
opbend       11    3    0    0            1.600
opbend       12    3    0    0            1.350
opbend       13    3    0    0            1.050
opbend       14    3    0    0            1.300
opbend       22    3    0    0            0.800
opbend       36    3    0    0            1.180
opbend       47    3    0    0            1.439
opbend       56    3    0    0            0.590
opbend       75    3    0    0            1.700
opbend       76    3    0    0            1.200
opbend       77    3    0    0            0.650   !! JWP
opbend       80    3    0    0            1.100
opbend      101    3    0    0            1.300
opbend      148    3    0    0            2.500
opbend      149    3    0    0            2.500
opbend        1    9    0    0            0.010
opbend        2    9    0    0            0.050
opbend        3    9    0    0            0.050
opbend        4    9    0    0            0.050
opbend        6    9    0    0            0.050
opbend        7    9    0    0            0.050
opbend        8    9    0    0            0.050
opbend        9    9    0    0            0.050
opbend       28    9    0    0            0.020
opbend       30    9    0    0            0.050
opbend       56    9    0    0            0.010
opbend       58    9    0    0            0.050
opbend        1   26    0    0            0.116
opbend        2   26    0    0            0.107
opbend        6   26    0    0            0.113
opbend        1   29    0    0            0.130
opbend        5   29    0    0            0.210
opbend        1   30    0    0            0.050
opbend        5   30    0    0            0.050
opbend        9   30    0    0            0.150
opbend        1   37    0    0            0.150
opbend        2   37    0    0            0.150
opbend       23   37    0    0            0.150
opbend       37   37    0    0            0.150
opbend       40   37    0    0            0.150
opbend       43   37    0    0            0.150
opbend        2   38    0    0            0.050
opbend        5   38    0    0            0.050
opbend       22   38    0    0            0.050
opbend       38   38    0    0            0.050
opbend        1   40    0    0            0.050
opbend        2   40    0    0            0.700
opbend       23   40    0    0            0.050
opbend       37   40    0    0            0.150
opbend        1   43    0    0            1.200
opbend        2   43    0    0            0.050
opbend        7   43    0    0            0.050
opbend       23   43    0    0            0.050
opbend       37   43    0    0            0.450
opbend       69   43    0    0            0.050
opbend      109   43    0    0            0.550
opbend        1   46    0    0            1.500
opbend        2   46    0    0            1.800
opbend        7   46    0    0            1.800
opbend       22   46    0    0            0.200
opbend        1   50    0    0            0.100
opbend        5   50    0    0            0.110
opbend       50   50    0    0            0.200
opbend        1   57    0    0            0.110
opbend        2   57    0    0            0.200
opbend        5   57    0    0            0.110
opbend       56   57    0    0            0.110
opbend       57   57    0    0            0.200
opbend        6   58    0    0            0.800
opbend        7   58    0    0            0.850
opbend        9   58    0    0            0.350
opbend       56   58    0    0            0.700
opbend       75   58    0    0            0.800
opbend       78   58    0    0            0.850
opbend       79   58    0    0            1.450
opbend        7   67    0    0            0.650
opbend       22   67    0    0            0.800
opbend        1   71    0    0            2.250
opbend        5   71    0    0            1.180
opbend       70   71    0    0            1.550
opbend        2  110    0    0            0.250
opbend       23  110    0    0            0.050
opbend        2  111    0    0            0.950
opbend       23  111    0    0            0.150
opbend        2  143    0    0            0.950
opbend       69  143    0    0            0.655
opbend      144  143    0    0            0.655


      ############################
      ##                        ##
      ##  Torsional Parameters  ##
      ##                        ##
      ############################


torsion       1    1    1    1      0.185 0.0 1   0.170 180.0 2   0.520 0.0 3
torsion       1    1    1    2      0.200 0.0 1  -0.200 180.0 2   1.300 0.0 3
torsion       1    1    1    3      0.000 0.0 1   0.400 180.0 2   0.010 0.0 3
torsion       1    1    1    4      0.200 0.0 1  -0.260 180.0 2   0.093 0.0 3
torsion       1    1    1    5      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       1    1    1    6      0.200 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       1    1    1    8     -0.302 0.0 1   0.696 180.0 2   0.499 0.0 3
torsion       1    1    1    9      0.450 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       1    1    1   11      0.200 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       1    1    1   12     -0.006 0.0 1  -0.463 180.0 2   1.145 0.0 3
torsion       1    1    1   13      0.000 0.0 1  -0.410 180.0 2   1.060 0.0 3
torsion       1    1    1   14     -1.309 0.0 1   0.440 180.0 2   0.597 0.0 3
torsion       1    1    1   15      0.000 0.0 1   0.200 180.0 2   0.400 0.0 3
torsion       1    1    1   16      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       1    1    1   17      1.500 0.0 1  -0.800 180.0 2   0.100 0.0 3
torsion       1    1    1   18     -1.500 0.0 1   0.000 180.0 2  -1.400 0.0 3
torsion       1    1    1   19      0.000 0.0 1   0.050 180.0 2   0.240 0.0 3
torsion       1    1    1   22     -0.600 0.0 1  -0.400 180.0 2   0.650 0.0 3
torsion       1    1    1   25      0.200 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       1    1    1   26     -1.237 0.0 1   0.781 180.0 2   0.201 0.0 3
torsion       1    1    1   29      0.500 0.0 1  -0.200 180.0 2   0.100 0.0 3
torsion       1    1    1   31     -0.200 0.0 1   0.000 180.0 2   0.112 0.0 3
torsion       1    1    1   32     -0.083 0.0 1  -0.083 180.0 2   0.050 0.0 3
torsion       1    1    1   33      0.000 0.0 1  -0.008 180.0 2   0.110 0.0 3
torsion       1    1    1   34      0.140 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       1    1    1   35      0.000 0.0 1   0.200 180.0 2   0.400 0.0 3
torsion       1    1    1   36      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       1    1    1   37      0.200 0.0 1   0.600 180.0 2   0.100 0.0 3
torsion       1    1    1   39     -1.168 0.0 1   0.082 180.0 2   0.992 0.0 3
torsion       1    1    1   41      0.000 0.0 1   0.000 180.0 2   0.700 0.0 3
torsion       1    1    1   43     -1.000 0.0 1   0.000 180.0 2  -1.400 0.0 3
torsion       1    1    1   46      0.000 0.0 1   0.000 180.0 2   0.800 0.0 3
torsion       1    1    1   50      0.225 0.0 1   0.410 180.0 2   0.436 0.0 3
torsion       1    1    1   56      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion       1    1    1   57      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion       1    1    1   70     -0.234 0.0 1  -0.385 180.0 2   0.994 0.0 3
torsion       1    1    1   71      0.050 0.0 1   0.370 180.0 2   0.000 0.0 3
torsion       1    1    1  109     -1.000 0.0 1   0.000 180.0 2  -1.200 0.0 3
torsion       1    1    1  110     -0.400 0.0 1   0.000 180.0 2   1.000 0.0 3
torsion       2    1    1    2      1.100 0.0 1   0.000 180.0 2   1.500 0.0 3
torsion       2    1    1    3      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       2    1    1    4      0.000 0.0 1   0.000 180.0 2   0.093 0.0 3
torsion       2    1    1    5      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       2    1    1    6      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       2    1    1    8      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       2    1    1    9      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    1    1   15      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       2    1    1   16      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       2    1    1   19      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion       2    1    1   36      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       2    1    1   39      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       3    1    1    3      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       3    1    1    4      1.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       3    1    1    5      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       3    1    1    6     -2.000 0.0 1  -1.400 180.0 2   1.000 0.0 3
torsion       3    1    1    8      2.700 0.0 1  -1.600 180.0 2   0.000 0.0 3
torsion       3    1    1    9      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       3    1    1   11     -2.500 0.0 1   1.000 180.0 2   0.200 0.0 3
torsion       3    1    1   12      0.300 0.0 1  -1.300 180.0 2   0.300 0.0 3
torsion       3    1    1   13     -0.200 0.0 1  -0.650 180.0 2  -0.200 0.0 3
torsion       3    1    1   14     -0.200 0.0 1  -0.500 180.0 2  -0.200 0.0 3
torsion       3    1    1   15     -2.000 0.0 1  -1.700 180.0 2   0.300 0.0 3
torsion       3    1    1   16      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       3    1    1   25      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       3    1    1   36      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       3    1    1   39      0.000 0.0 1   0.400 180.0 2   0.500 0.0 3
torsion       4    1    1    4      1.000 0.0 1   0.000 180.0 2   0.093 0.0 3
torsion       4    1    1    5      0.000 0.0 1   0.000 180.0 2   0.560 0.0 3
torsion       4    1    1    6      0.000 0.0 1  -0.400 180.0 2   0.180 0.0 3
torsion       5    1    1    5      0.000 0.0 1   0.000 180.0 2   0.238 0.0 3
torsion       5    1    1    6      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       5    1    1    8      0.000 0.0 1   0.000 180.0 2   0.374 0.0 3
torsion       5    1    1    9      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       5    1    1   11     -0.460 0.0 1   1.190 180.0 2   0.327 0.0 3
torsion       5    1    1   12      0.000 0.0 1   0.000 180.0 2   0.520 0.0 3
torsion       5    1    1   13      0.000 0.0 1   0.000 180.0 2   0.385 0.0 3
torsion       5    1    1   14      0.000 0.0 1   0.000 180.0 2   0.333 0.0 3
torsion       5    1    1   15      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5    1    1   16      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       5    1    1   17      0.000 0.0 1   0.000 180.0 2   0.125 0.0 3
torsion       5    1    1   18      0.000 0.0 1   0.000 180.0 2   0.650 0.0 3
torsion       5    1    1   19      0.000 0.0 1   0.000 180.0 2   0.220 0.0 3
torsion       5    1    1   22      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion       5    1    1   25      0.000 0.0 1   0.000 180.0 2   0.305 0.0 3
torsion       5    1    1   26      0.000 0.0 1   0.000 180.0 2   0.050 0.0 3
torsion       5    1    1   29      0.000 0.0 1   0.000 180.0 2   0.200 0.0 3
torsion       5    1    1   31      0.000 0.0 1   0.000 180.0 2   0.185 0.0 3
torsion       5    1    1   32      0.000 0.0 1   0.000 180.0 2  -0.155 0.0 3
torsion       5    1    1   33      0.000 0.0 1   0.000 180.0 2   0.040 0.0 3
torsion       5    1    1   34      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       5    1    1   35      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5    1    1   36      0.000 0.0 1   0.000 180.0 2   0.238 0.0 3
torsion       5    1    1   37     -1.000 0.0 1  -1.000 180.0 2   0.000 0.0 3
torsion       5    1    1   39      0.000 0.0 1   0.000 180.0 2   0.428 0.0 3
torsion       5    1    1   41     -1.200 0.0 1  -0.900 180.0 2   0.600 0.0 3
torsion       5    1    1   43      0.000 0.0 1   0.000 180.0 2  -0.600 0.0 3
torsion       5    1    1   46      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       5    1    1   50      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       5    1    1   56      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       5    1    1   57      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       5    1    1   70      0.000 0.0 1   0.000 180.0 2   0.535 0.0 3
torsion       5    1    1   71      0.000 0.0 1   0.000 180.0 2   0.306 0.0 3
torsion       5    1    1  109      0.000 0.0 1   0.000 180.0 2  -0.400 0.0 3
torsion       5    1    1  111      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       5    1    1  146      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       5    1    1  150      0.000 0.0 1   0.000 180.0 2   0.374 0.0 3
torsion       5    1    1  154      0.000 0.0 1   0.000 180.0 2   0.351 0.0 3
torsion       6    1    1    6      0.500 0.0 1  -2.000 180.0 2   1.900 0.0 3
torsion       6    1    1    8      0.000 0.0 1  -1.050 180.0 2   1.850 0.0 3
torsion       6    1    1    9      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       6    1    1   11      0.000 0.0 1  -1.400 180.0 2   0.180 0.0 3
torsion       6    1    1   12      0.000 0.0 1   0.200 180.0 2   0.180 0.0 3
torsion       6    1    1   13      0.000 0.0 1  -1.400 180.0 2   0.180 0.0 3
torsion       6    1    1   14      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       6    1    1   15     -0.700 0.0 1   0.800 180.0 2  -0.100 0.0 3
torsion       6    1    1   17     -0.800 0.0 1  -1.200 180.0 2  -0.700 0.0 3
torsion       6    1    1   18     -0.800 0.0 1   0.000 180.0 2  -0.300 0.0 3
torsion       6    1    1   22      0.000 0.0 1   0.000 180.0 2   0.270 0.0 3
torsion       6    1    1   39      0.000 0.0 1  -0.600 180.0 2   0.300 0.0 3
torsion       6    1    1   70      4.000 0.0 1  -3.000 180.0 2   1.200 0.0 3
torsion       6    1    1   71      1.000 0.0 1  -1.500 180.0 2   1.000 0.0 3
torsion       8    1    1    8      0.000 0.0 1  -0.900 180.0 2   1.700 0.0 3
torsion       8    1    1    9      1.170 0.0 1  -1.263 180.0 2   2.064 0.0 3
torsion       8    1    1   39      1.000 0.0 1  -3.500 180.0 2   3.000 0.0 3
torsion       9    1    1    9      0.000 0.0 1   0.000 180.0 2  -0.500 0.0 3
torsion       9    1    1   15      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion      11    1    1   11      0.000 0.0 1   0.000 180.0 2   0.225 0.0 3
torsion      11    1    1   12      0.000 0.0 1   0.000 180.0 2   0.253 0.0 3
torsion      11    1    1   13      0.000 0.0 1   0.000 180.0 2   0.253 0.0 3
torsion      12    1    1   12     -0.700 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion      12    1    1   13      0.000 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion      13    1    1   13      0.900 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion      15    1    1   15      1.250 0.0 1  -0.300 180.0 2   0.000 0.0 3
torsion      15    1    1   17      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      15    1    1   39      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion      17    1    1   17      0.000 0.0 1   0.000 180.0 2   0.125 0.0 3
torsion      18    1    1   18      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion      19    1    1   19      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion      22    1    1   22      0.500 0.0 1   0.200 180.0 2   0.300 0.0 3
torsion      29    1    1   29      0.210 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion      36    1    1   36      0.000 0.0 1   0.000 180.0 2   0.238 0.0 3
torsion      37    1    1   37      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      39    1    1   39      4.800 0.0 1  -3.800 180.0 2   0.637 0.0 3
torsion      41    1    1   41      0.000 0.0 1   0.000 180.0 2   1.910 0.0 3
torsion      50    1    1   50      0.800 0.0 1   0.800 180.0 2   2.560 0.0 3
torsion       1    1    2    1      0.100 0.0 1   0.200 180.0 2   0.800 0.0 3
torsion       1    1    2    2     -0.700 0.0 1  -0.200 180.0 2  -0.550 0.0 3
torsion       1    1    2    3      0.000 0.0 1   0.000 180.0 2   0.457 0.0 3
torsion       1    1    2    4     -0.440 0.0 1   0.240 180.0 2   0.060 0.0 3
torsion       1    1    2    5      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion       1    1    2    6      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1    2   19      0.000 0.0 1   0.000 180.0 2   0.350 0.0 3
torsion       1    1    2   36      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion       1    1    2   37      0.000 0.0 1   0.000 180.0 2  -0.250 0.0 3
torsion       1    1    2  108     -0.951 0.0 1   1.226 180.0 2  -0.108 0.0 3
torsion       2    1    2    1     -0.900 0.0 1   0.000 180.0 2  -0.300 0.0 3
torsion       2    1    2    2      0.250 0.0 1  -0.650 180.0 2   0.600 0.0 3
torsion       2    1    2    5      0.000 0.0 1   0.000 180.0 2   0.800 0.0 3
torsion       2    1    2    6      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    1    2   36      0.000 0.0 1   0.000 180.0 2   0.800 0.0 3
torsion       2    1    2   37      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       3    1    2    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       3    1    2    2      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       3    1    2    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       4    1    2    1      0.000 0.0 1   0.000 180.0 2   0.780 0.0 3
torsion       4    1    2    2     -1.900 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       4    1    2    5      0.000 0.0 1   0.000 180.0 2   0.780 0.0 3
torsion       5    1    2    1      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5    1    2    2      0.000 0.0 1   0.000 180.0 2  -0.090 0.0 3
torsion       5    1    2    3      0.000 0.0 1   0.000 180.0 2   0.274 0.0 3
torsion       5    1    2    4      0.000 0.0 1   0.000 180.0 2  -0.240 0.0 3
torsion       5    1    2    5      0.000 0.0 1   0.000 180.0 2   0.580 0.0 3
torsion       5    1    2    6      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5    1    2   37      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    1    2   39      0.000 0.0 1   0.000 180.0 2  -0.240 0.0 3
torsion       5    1    2   40      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    1    2   41      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5    1    2   42      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       5    1    2   72      0.000 0.0 1   0.000 180.0 2   0.050 0.0 3
torsion       5    1    2  108      0.191 0.0 1   1.049 180.0 2   0.107 0.0 3
torsion       6    1    2    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       6    1    2    2     -0.500 0.0 1   1.000 180.0 2  -0.985 0.0 3
torsion       6    1    2    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       8    1    2    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       8    1    2    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       8    1    2    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      11    1    2    2      1.243 0.0 1   1.445 180.0 2  -1.243 0.0 3
torsion      11    1    2    5      0.848 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      12    1    2    2      0.500 0.0 1   0.300 180.0 2  -0.500 0.0 3
torsion      12    1    2    5      1.500 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      14    1    2    2     -0.700 0.0 1  -1.400 180.0 2  -1.400 0.0 3
torsion      14    1    2    5      0.000 0.0 1   0.160 180.0 2   0.090 0.0 3
torsion      15    1    2    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      15    1    2    2      0.000 0.0 1   0.000 180.0 2  -0.300 0.0 3
torsion      15    1    2    5      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion      16    1    2    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      16    1    2    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      16    1    2    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      19    1    2    2     -0.750 0.0 1   0.000 180.0 2   0.505 0.0 3
torsion      19    1    2    5      0.000 0.0 1   0.000 180.0 2   0.717 0.0 3
torsion      22    1    2    1      0.400 0.0 1   0.030 180.0 2   0.500 0.0 3
torsion      22    1    2    2     -0.440 0.0 1   0.240 180.0 2   0.060 0.0 3
torsion      22    1    2    5      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion      36    1    2    1      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion      36    1    2    2      0.000 0.0 1   0.000 180.0 2  -0.090 0.0 3
torsion      37    1    2    2      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion      37    1    2    5      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion      37    1    2   37      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      39    1    2    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      43    1    2    2      0.000 0.0 1   0.000 180.0 2  -0.300 0.0 3
torsion      43    1    2    5      0.000 0.0 1   0.000 180.0 2  -0.600 0.0 3
torsion      75    1    2    3     -0.724 0.0 1  -0.910 180.0 2   0.416 0.0 3
torsion     109    1    2    2      0.000 0.0 1   0.000 180.0 2  -0.200 0.0 3
torsion     109    1    2    5      0.000 0.0 1   0.000 180.0 2  -0.500 0.0 3
torsion     151    1    2    2     -0.328 0.0 1   0.015 180.0 2  -1.199 0.0 3
torsion     151    1    2    5      0.000 0.0 1   0.015 180.0 2   0.100 0.0 3
torsion       1    1    3    1      0.406 0.0 1   0.292 180.0 2   0.014 0.0 3
torsion       1    1    3    2      0.000 0.0 1   0.000 180.0 2  -0.110 0.0 3
torsion       1    1    3    5      0.655 0.0 1   0.266 180.0 2   0.474 0.0 3
torsion       1    1    3    6      0.550 0.0 1   1.550 180.0 2   0.100 0.0 3
torsion       1    1    3    7     -0.457 0.0 1   1.106 180.0 2  -0.160 0.0 3
torsion       1    1    3    9      0.700 0.0 1  -1.100 180.0 2   0.300 0.0 3
torsion       1    1    3   11      0.195 0.0 1   0.363 180.0 2   0.143 0.0 3
torsion       1    1    3   12      0.977 0.0 1  -0.330 180.0 2   0.321 0.0 3
torsion       1    1    3   13     -0.550 0.0 1  -0.146 180.0 2   0.686 0.0 3
torsion       1    1    3   14      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1    3   47     13.852 0.0 1   0.048 180.0 2   4.643 0.0 3
torsion       1    1    3   75      0.550 0.0 1   1.550 180.0 2   0.100 0.0 3
torsion       1    1    3   77     -0.457 0.0 1   1.106 180.0 2  -0.016 0.0 3
torsion       1    1    3   78     -0.457 0.0 1   1.106 180.0 2  -0.016 0.0 3
torsion       1    1    3  148      0.550 0.0 1   1.550 180.0 2   0.100 0.0 3
torsion       2    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    1    3    2      2.100 0.0 1   1.200 180.0 2  -0.900 0.0 3
torsion       2    1    3    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    1    3    6      0.000 0.0 1   0.000 180.0 2  -0.417 0.0 3
torsion       2    1    3    7      0.000 0.0 1   0.000 180.0 2  -0.350 0.0 3
torsion       2    1    3    9      3.410 0.0 1   0.663 180.0 2  -0.150 0.0 3
torsion       3    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       3    1    3    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       3    1    3    7      0.000 0.0 1   0.000 180.0 2  -0.350 0.0 3
torsion       3    1    3    9      3.299 0.0 1  -1.450 180.0 2  -2.300 0.0 3
torsion       5    1    3    1      0.000 0.0 1   0.000 180.0 2   0.150 0.0 3
torsion       5    1    3    2      0.000 0.0 1   0.000 180.0 2  -0.140 0.0 3
torsion       5    1    3    3      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       5    1    3    5      0.115 0.0 1   0.027 180.0 2   0.285 0.0 3
torsion       5    1    3    6      0.250 0.0 1   0.850 180.0 2   0.000 0.0 3
torsion       5    1    3    7     -0.154 0.0 1   0.044 180.0 2  -0.086 0.0 3
torsion       5    1    3    9      0.000 0.0 1   0.000 180.0 2   0.230 0.0 3
torsion       5    1    3   11      0.000 0.0 1   0.000 180.0 2   0.192 0.0 3
torsion       5    1    3   12      0.000 0.0 1   0.000 180.0 2   0.219 0.0 3
torsion       5    1    3   13      0.000 0.0 1   0.000 180.0 2   0.195 0.0 3
torsion       5    1    3   14      0.000 0.0 1   0.000 180.0 2   0.160 0.0 3
torsion       5    1    3   47      0.000 0.0 1   0.119 180.0 2   0.322 0.0 3
torsion       5    1    3   75      0.250 0.0 1   0.850 180.0 2   0.000 0.0 3
torsion       5    1    3   76     -0.150 0.0 1   0.000 180.0 2  -0.200 0.0 3
torsion       5    1    3   77     -0.154 0.0 1   0.044 180.0 2  -0.086 0.0 3
torsion       5    1    3   78     -0.154 0.0 1   0.044 180.0 2  -0.086 0.0 3
torsion       5    1    3  148      0.250 0.0 1   0.850 180.0 2   0.200 0.0 3
torsion       6    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       6    1    3    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       6    1    3    6      3.550 0.0 1  -0.020 180.0 2  -2.090 0.0 3
torsion       6    1    3    7      0.500 0.0 1   3.650 180.0 2   0.000 0.0 3
torsion       8    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       8    1    3    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       8    1    3    7      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       8    1    3    9      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       9    1    3    6      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       9    1    3    7      0.100 0.0 1   0.700 180.0 2   2.100 0.0 3
torsion       9    1    3    9     -0.700 0.0 1   0.700 180.0 2   0.200 0.0 3
torsion       9    1    3   47      0.000 0.0 1   0.800 180.0 2   1.500 0.0 3
torsion      11    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      11    1    3    7      0.800 0.0 1   4.400 180.0 2   0.000 0.0 3
torsion      12    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      12    1    3    7      0.000 0.0 1   2.500 180.0 2  -0.400 0.0 3
torsion      13    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      13    1    3    7      1.100 0.0 1   1.200 180.0 2  -0.300 0.0 3
torsion      14    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      14    1    3    7      0.000 0.0 1  -0.300 180.0 2   0.000 0.0 3
torsion      15    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      15    1    3    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      15    1    3    7     -1.800 0.0 1   2.400 180.0 2  -0.500 0.0 3
torsion      16    1    3    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      16    1    3    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      16    1    3    7      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      36    1    3    1      0.000 0.0 1   0.000 180.0 2   0.130 0.0 3
torsion      36    1    3    3      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion      36    1    3    7     -0.167 0.0 1   0.000 180.0 2  -0.100 0.0 3
torsion      36    1    3   76     -0.150 0.0 1   0.000 180.0 2  -0.200 0.0 3
torsion      39    1    3    7      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion      39    1    3    9      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion      39    1    3   47      0.546 0.0 1   0.374 180.0 2  -3.393 0.0 3
torsion      39    1    3   75      6.664 0.0 1   9.094 180.0 2  -0.130 0.0 3
torsion      39    1    3   77      0.522 0.0 1  -5.755 180.0 2  -1.737 0.0 3
torsion       1    1    4    4      0.000 0.0 1   0.001 180.0 2   0.000 0.0 3
torsion       5    1    4    4      0.000 0.0 1   0.001 180.0 2   0.000 0.0 3
torsion       6    1    4    4      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      11    1    4    4      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      75    1    4    4      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1    6    1      0.450 0.0 1   0.050 180.0 2   0.757 0.0 3
torsion       1    1    6    2      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       1    1    6    3     -2.280 0.0 1   1.000 180.0 2   0.000 0.0 3
torsion       1    1    6    6      0.000 0.0 1   0.000 180.0 2   0.355 0.0 3
torsion       1    1    6   19      0.000 0.0 1   0.000 180.0 2   0.210 0.0 3
torsion       1    1    6   21      0.400 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       1    1    6   25     -0.200 0.0 1   4.600 180.0 2   0.450 0.0 3
torsion       1    1    6   56      0.000 0.0 1  -0.700 180.0 2   0.000 0.0 3
torsion       1    1    6  153      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    1    6    1      0.000 0.0 1   0.000 180.0 2   0.403 0.0 3
torsion       2    1    6   21      0.800 0.0 1   0.000 180.0 2   0.090 0.0 3
torsion       3    1    6    1      0.000 0.0 1   0.000 180.0 2   0.403 0.0 3
torsion       3    1    6   21     -1.000 0.0 1  -0.200 180.0 2   0.400 0.0 3
torsion       4    1    6    1      0.100 0.0 1  -1.000 180.0 2   0.900 0.0 3
torsion       4    1    6   21      0.150 0.0 1  -0.750 180.0 2   0.708 0.0 3
torsion       5    1    6    1      0.000 0.0 1   0.000 180.0 2   0.680 0.0 3
torsion       5    1    6    2      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion       5    1    6    3      0.010 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    1    6    6      0.500 0.0 1   0.000 180.0 2   0.775 0.0 3
torsion       5    1    6   19      0.000 0.0 1   0.000 180.0 2   0.210 0.0 3
torsion       5    1    6   21      0.000 0.0 1   0.000 180.0 2   0.200 0.0 3
torsion       5    1    6   25      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion       5    1    6  153      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       6    1    6    1      1.250 0.0 1  -3.000 180.0 2   0.850 0.0 3
torsion       6    1    6    5      0.700 0.0 1  -2.350 180.0 2   0.200 0.0 3
torsion       6    1    6    6      0.000 0.0 1   0.000 180.0 2   0.403 0.0 3
torsion       6    1    6   21     -1.832 0.0 1  -2.208 180.0 2   0.547 0.0 3
torsion      12    1    6    1      0.500 0.0 1  -0.420 180.0 2   0.000 0.0 3
torsion      22    1    6   21      0.000 0.0 1   0.000 180.0 2   0.200 0.0 3
torsion      50    1    6    1      0.000 0.0 1   0.000 180.0 2   0.403 0.0 3
torsion      71    1    6   21      0.000 0.0 1   0.000 180.0 2   0.090 0.0 3
torsion       1    1    8    1      0.958 0.0 1  -0.155 180.0 2   0.766 0.0 3
torsion       1    1    8    2      0.000 0.0 1   0.000 180.0 2   0.450 0.0 3
torsion       1    1    8   23      0.073 0.0 1  -0.422 180.0 2   0.327 0.0 3
torsion       2    1    8    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    1    8   23      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       3    1    8    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       3    1    8   23      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    1    8    1      0.072 0.0 1  -0.012 180.0 2   0.563 0.0 3
torsion       5    1    8    2      0.000 0.0 1   0.000 180.0 2   0.650 0.0 3
torsion       5    1    8   23      0.121 0.0 1  -0.648 180.0 2   0.199 0.0 3
torsion       5    1    8   50      0.000 0.0 1   0.000 180.0 2   0.580 0.0 3
torsion       8    1    8    1      0.000 0.0 1   0.000 180.0 2   0.350 0.0 3
torsion       8    1    8   23      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      22    1    8    2      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion      22    1    8   23      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       1    1    9    1      0.000 0.0 1   0.000 180.0 2   0.910 0.0 3
torsion       1    1    9    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1    9    3     -0.300 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       1    1    9   28      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion       1    1    9   30      0.000 0.0 1   0.000 180.0 2   0.600 0.0 3
torsion       1    1    9   56     -0.300 0.0 1   1.100 180.0 2   0.100 0.0 3
torsion       1    1    9   58     -0.300 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       2    1    9   58      0.000 0.0 1   0.200 180.0 2  -0.300 0.0 3
torsion       3    1    9    1      0.000 0.0 1   0.000 180.0 2   0.457 0.0 3
torsion       3    1    9    3      2.300 0.0 1  -1.200 180.0 2   0.800 0.0 3
torsion       3    1    9   28      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       5    1    9    1      0.000 0.0 1   0.000 180.0 2   0.460 0.0 3
torsion       5    1    9    2      0.000 0.0 1   0.000 180.0 2   0.650 0.0 3
torsion       5    1    9    3      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion       5    1    9   18      0.000 0.0 1   0.000 180.0 2   0.125 0.0 3
torsion       5    1    9   28      0.000 0.0 1   0.000 180.0 2   0.080 0.0 3
torsion       5    1    9   30      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       5    1    9   58      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion      15    1    9    1      1.200 0.0 1   0.300 180.0 2   1.634 0.0 3
torsion      15    1    9    3     -2.700 0.0 1  -3.400 180.0 2  -1.200 0.0 3
torsion      36    1    9    3      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      36    1    9   28      0.000 0.0 1   0.000 180.0 2   0.160 0.0 3
torsion       1    1   15    1     -0.440 0.0 1  -0.260 180.0 2   0.600 0.0 3
torsion       1    1   15   15     -0.200 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1   15   44     -0.500 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion       2    1   15    1      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       2    1   15   15     -0.300 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       2    1   15   44      0.000 0.0 1   0.000 180.0 2   0.270 0.0 3
torsion       3    1   15    1      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       3    1   15   44     -1.500 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       5    1   15    1      0.000 0.0 1   0.000 180.0 2   0.660 0.0 3
torsion       5    1   15   15      0.300 0.0 1   0.000 180.0 2   0.600 0.0 3
torsion       5    1   15   44      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       9    1   15    1      0.734 0.0 1   0.153 180.0 2   0.601 0.0 3
torsion      15    1   15    1      0.000 0.0 1  -0.900 180.0 2   0.300 0.0 3
torsion      15    1   15   15      0.200 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion      17    1   15    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1   16    1      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       1    1   16    5      0.000 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion       2    1   16    1      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       2    1   16    5      0.000 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion       3    1   16    1      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       3    1   16    5      0.000 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion       5    1   16    1      0.000 0.0 1   0.000 180.0 2   0.483 0.0 3
torsion       5    1   16    5      0.000 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion       1    1   17    1     -0.800 0.0 1   0.000 180.0 2   1.200 0.0 3
torsion       1    1   17    5     -0.800 0.0 1  -0.700 180.0 2   0.100 0.0 3
torsion       1    1   17    7     -1.100 0.0 1  -0.150 180.0 2   0.175 0.0 3
torsion       5    1   17    1      0.000 0.0 1   0.000 180.0 2   0.600 0.0 3
torsion       5    1   17    5      0.000 0.0 1   0.000 180.0 2   0.700 0.0 3
torsion       5    1   17    7      0.000 0.0 1   0.000 180.0 2   0.175 0.0 3
torsion      15    1   17    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      15    1   17    7      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      17    1   17    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      17    1   17    7      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1   18    1     -0.880 0.0 1   0.000 180.0 2   0.200 0.0 3
torsion       1    1   18    7     -0.500 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       5    1   18    1      0.000 0.0 1   0.000 180.0 2   0.315 0.0 3
torsion       5    1   18    2      0.000 0.0 1   0.000 180.0 2   0.800 0.0 3
torsion       5    1   18    5      0.000 0.0 1   0.000 180.0 2   0.820 0.0 3
torsion       5    1   18    7      0.000 0.0 1   0.000 180.0 2   0.320 0.0 3
torsion       5    1   18    9      0.000 0.0 1   0.000 180.0 2   0.125 0.0 3
torsion       1    1   19    1      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion       1    1   19    2      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion       1    1   19    5      0.000 0.0 1   0.000 180.0 2   0.295 0.0 3
torsion       1    1   19    6      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion       1    1   19   19      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       2    1   19    1      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion       2    1   19    2      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       2    1   19    5      0.000 0.0 1   0.000 180.0 2   0.320 0.0 3
torsion       5    1   19    1      0.000 0.0 1   0.000 180.0 2   0.195 0.0 3
torsion       5    1   19    2      0.000 0.0 1   0.000 180.0 2   0.117 0.0 3
torsion       5    1   19    5      0.000 0.0 1   0.000 180.0 2   0.177 0.0 3
torsion       5    1   19    6      0.000 0.0 1   0.000 180.0 2   0.210 0.0 3
torsion       5    1   19   19      0.000 0.0 1   0.000 180.0 2   0.270 0.0 3
torsion       5    1   19   22      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       5    1   19   56      0.000 0.0 1   0.000 180.0 2   0.330 0.0 3
torsion      19    1   19    1      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion      19    1   19    5      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion       1    1   22    1      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       1    1   22    5      0.000 0.0 1   0.000 180.0 2   0.170 0.0 3
torsion       1    1   22   22      0.000 0.0 1   0.000 180.0 2   0.250 0.0 3
torsion       1    1   22   49      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion       2    1   22    5      0.000 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion       2    1   22   22      0.300 0.0 1   0.000 180.0 2   0.450 0.0 3
torsion       5    1   22    1      0.000 0.0 1   0.000 180.0 2   0.690 0.0 3
torsion       5    1   22    5      0.000 0.0 1   0.000 180.0 2   0.700 0.0 3
torsion       5    1   22   22      0.000 0.0 1   0.000 180.0 2   0.350 0.0 3
torsion       5    1   22   49      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion       6    1   22    5      0.000 0.0 1   0.000 180.0 2   0.270 0.0 3
torsion       6    1   22   22      0.000 0.0 1   0.000 180.0 2   0.370 0.0 3
torsion       8    1   22    5      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       8    1   22   22      0.300 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion      22    1   22    1      0.185 0.0 1   0.170 180.0 2   0.520 0.0 3
torsion      22    1   22    5      0.000 0.0 1   0.000 180.0 2   0.120 0.0 3
torsion      22    1   22   22     -0.060 0.0 1   0.000 180.0 2   0.220 0.0 3
torsion      37    1   22    5      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion      37    1   22   22      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      43    1   22    5      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion      43    1   22   22      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1   25    1     -1.430 0.0 1   0.000 180.0 2   0.589 0.0 3
torsion       1    1   25    2     -0.120 0.0 1  -0.250 180.0 2   0.300 0.0 3
torsion       1    1   25    5     -0.447 0.0 1  -2.612 180.0 2   0.560 0.0 3
torsion       5    1   25    1      0.000 0.0 1   0.000 180.0 2   0.410 0.0 3
torsion       5    1   25    2      0.050 0.0 1   0.000 180.0 2   0.200 0.0 3
torsion       5    1   25    5      0.000 0.0 1   0.000 180.0 2   0.290 0.0 3
torsion       1    1   26    6      0.000 0.0 1   2.916 180.0 2   0.000 0.0 3
torsion       5    1   26    6      0.000 0.0 1   0.000 180.0 2   0.325 0.0 3
torsion       1    1   29    1      0.400 0.0 1   0.150 180.0 2   0.500 0.0 3
torsion       1    1   29    5      0.000 0.0 1   0.200 180.0 2   0.300 0.0 3
torsion       5    1   29    1      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       5    1   29    5      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       1    1   31    1     -0.200 0.0 1   0.085 180.0 2   0.112 0.0 3
torsion       1    1   31    5      0.000 0.0 1   0.000 180.0 2   0.172 0.0 3
torsion       1    1   31   31     -0.200 0.0 1   0.000 180.0 2   0.112 0.0 3
torsion       5    1   31    1      0.000 0.0 1   0.000 180.0 2   0.127 0.0 3
torsion       5    1   31    2      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       5    1   31    5      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       5    1   31   31      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       1    1   32    1      0.000 0.0 1  -0.050 180.0 2   0.160 0.0 3
torsion       1    1   32    5      0.000 0.0 1   0.000 180.0 2   0.070 0.0 3
torsion       5    1   32    1      0.000 0.0 1   0.000 180.0 2   0.089 0.0 3
torsion       5    1   32    5      0.000 0.0 1   0.000 180.0 2   0.071 0.0 3
torsion       1    1   33    1      0.000 0.0 1   0.000 180.0 2   0.021 0.0 3
torsion       1    1   33    5      0.000 0.0 1   0.000 180.0 2   0.021 0.0 3
torsion       5    1   33    1      0.000 0.0 1   0.000 180.0 2   0.021 0.0 3
torsion       5    1   33    5      0.000 0.0 1   0.000 180.0 2   0.021 0.0 3
torsion       5    1   33   33      0.000 0.0 1   0.000 180.0 2   0.021 0.0 3
torsion       1    1   34    1     -0.620 0.0 1   0.300 180.0 2   0.350 0.0 3
torsion       1    1   34    5      0.000 0.0 1  -0.200 180.0 2   0.300 0.0 3
torsion       5    1   34    1      0.000 0.0 1   0.000 180.0 2   0.360 0.0 3
torsion       5    1   34    5      0.000 0.0 1   0.000 180.0 2   0.270 0.0 3
torsion       1    1   35    1     -0.440 0.0 1  -0.330 180.0 2   0.600 0.0 3
torsion       1    1   35    5      0.000 0.0 1  -0.200 180.0 2   0.300 0.0 3
torsion       5    1   35    1      0.000 0.0 1   0.000 180.0 2   0.360 0.0 3
torsion       5    1   35    5      0.000 0.0 1   0.000 180.0 2   0.270 0.0 3
torsion       1    1   37    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1   37   37     -0.440 0.0 1   0.240 180.0 2   0.060 0.0 3
torsion       1    1   37   43     -0.440 0.0 1   0.240 180.0 2   0.060 0.0 3
torsion       2    1   37    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    1   37   43      0.000 0.0 1   0.000 180.0 2   0.700 0.0 3
torsion       5    1   37    2      0.000 0.0 1   0.000 180.0 2  -0.980 0.0 3
torsion       5    1   37   37      0.000 0.0 1   0.000 180.0 2  -0.316 0.0 3
torsion       5    1   37   43      0.000 0.0 1   0.000 180.0 2  -0.316 0.0 3
torsion      22    1   37   43      0.000 0.0 1   0.000 180.0 2   0.700 0.0 3
torsion      37    1   37    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    1   38   22      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       1    1   39    1     -0.983 0.0 1  -0.240 180.0 2   0.380 0.0 3
torsion       1    1   39   48     -1.732 0.0 1   0.369 180.0 2   0.159 0.0 3
torsion       2    1   39    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       3    1   39   48     -1.909 0.0 1  -7.045 180.0 2  -0.043 0.0 3
torsion       5    1   39    1      0.000 0.0 1   0.000 180.0 2   0.261 0.0 3
torsion       5    1   39    2      0.000 0.0 1   0.000 180.0 2  -0.240 0.0 3
torsion       5    1   39   48      0.000 0.0 1   0.000 180.0 2   0.212 0.0 3
torsion       5    1   39   69      0.000 0.0 1   0.000 180.0 2  -0.320 0.0 3
torsion       8    1   39    1      0.000 0.0 1   0.000 180.0 2   0.350 0.0 3
torsion       5    1   40    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1   41    2      0.000 0.0 1   0.000 180.0 2   0.450 0.0 3
torsion       1    1   41  108      0.000 0.0 1   0.000 180.0 2   0.200 0.0 3
torsion       5    1   41    2      0.000 0.0 1   0.000 180.0 2   0.450 0.0 3
torsion       5    1   41  108     -0.688 0.0 1   1.430 180.0 2   0.517 0.0 3
torsion       1    1   43    7      0.000 0.0 1   0.000 180.0 2  -1.750 0.0 3
torsion       1    1   43   37     -0.440 0.0 1   0.240 180.0 2   0.060 0.0 3
torsion       1    1   43   69     -0.500 0.0 1   0.000 180.0 2  -1.800 0.0 3
torsion       1    1   43  109     -0.440 0.0 1   0.000 180.0 2  -0.400 0.0 3
torsion       2    1   43    7      0.000 0.0 1   0.000 180.0 2  -1.750 0.0 3
torsion       2    1   43   37      0.000 0.0 1   0.000 180.0 2   0.700 0.0 3
torsion       2    1   43   69      0.000 0.0 1   0.000 180.0 2  -0.800 0.0 3
torsion       2    1   43  109     -0.440 0.0 1   0.000 180.0 2  -0.100 0.0 3
torsion       5    1   43    7      0.000 0.0 1   0.000 180.0 2  -0.730 0.0 3
torsion       5    1   43   37      0.000 0.0 1   0.000 180.0 2  -0.316 0.0 3
torsion       5    1   43   69      0.000 0.0 1   0.000 180.0 2  -0.200 0.0 3
torsion       5    1   43  109      0.000 0.0 1   0.000 180.0 2  -0.500 0.0 3
torsion      22    1   43    7      0.000 0.0 1   0.000 180.0 2  -1.750 0.0 3
torsion      22    1   43   37      0.000 0.0 1   0.000 180.0 2   0.700 0.0 3
torsion       1    1   46    7      0.000 0.0 1   0.610 180.0 2   0.000 0.0 3
torsion       5    1   46    7      0.000 0.0 1   0.000 180.0 2   0.060 0.0 3
torsion      46    1   46    7      0.000 0.0 1   0.000 180.0 2   1.700 0.0 3
torsion       1    1   50   50     -0.800 0.0 1  -0.100 180.0 2  -0.550 0.0 3
torsion       5    1   50   50      0.000 0.0 1   0.000 180.0 2  -0.090 0.0 3
torsion       6    1   50   50      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      50    1   50   50      0.300 0.0 1  -0.650 180.0 2   0.500 0.0 3
torsion       1    1   56    5      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       1    1   56    9      0.000 0.0 1  -0.700 180.0 2   0.000 0.0 3
torsion       1    1   56   56      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion       5    1   56    1      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       5    1   56    5      0.000 0.0 1   0.000 180.0 2   0.238 0.0 3
torsion       5    1   56    6      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       5    1   56   15      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5    1   56   22      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       5    1   56   56      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       5    1   56   75      0.000 0.0 1   0.006 180.0 2   0.300 0.0 3
torsion       1    1   57   57      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion       5    1   57   56      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5    1   57   57      0.000 0.0 1   0.000 180.0 2  -0.090 0.0 3
torsion       1    1   70   71     -0.427 0.0 1   0.605 180.0 2  -0.694 0.0 3
torsion       5    1   70   71      0.000 0.0 1   0.000 180.0 2  -0.465 0.0 3
torsion       1    1   71    1      1.200 0.0 1   0.200 180.0 2   0.150 0.0 3
torsion       1    1   71    5      0.730 0.0 1   0.270 180.0 2   0.680 0.0 3
torsion       1    1   71   70      0.116 0.0 1   0.495 180.0 2  -0.084 0.0 3
torsion       5    1   71    1      0.000 0.0 1   0.000 180.0 2   0.130 0.0 3
torsion       5    1   71    5      0.180 0.0 1   0.000 180.0 2   0.275 0.0 3
torsion       5    1   71   70      0.000 0.0 1   0.000 180.0 2  -0.064 0.0 3
torsion       6    1   71    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       6    1   71    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       6    1   71   70      1.000 0.0 1   5.100 180.0 2   0.000 0.0 3
torsion       5    1   72    2      0.000 0.0 1   0.000 180.0 2  -0.870 0.0 3
torsion       1    1   75    3     -2.280 0.0 1   1.000 180.0 2   0.000 0.0 3
torsion       2    1   75    3      0.724 0.0 1  -0.603 180.0 2   0.258 0.0 3
torsion       4    1   75    3     -2.100 0.0 1  -0.100 180.0 2   1.800 0.0 3
torsion       5    1   75    3      0.010 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1  109   43     -0.440 0.0 1   0.000 180.0 2  -0.400 0.0 3
torsion       2    1  109   43     -0.440 0.0 1   0.000 180.0 2  -0.200 0.0 3
torsion       5    1  109   43      0.980 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1  110    1      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       1    1  110    2     -1.282 0.0 1   0.008 180.0 2  -0.936 0.0 3
torsion       5    1  110    1      0.000 0.0 1   0.000 180.0 2   0.250 0.0 3
torsion       5    1  110    2      0.000 0.0 1   0.000 180.0 2  -0.438 0.0 3
torsion       5    1  110   23      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1  111    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    1  111    1      0.000 0.0 1   0.000 180.0 2   0.600 0.0 3
torsion       5    1  111    2      0.000 0.0 1   0.500 180.0 2   0.000 0.0 3
torsion       5    1  145  146     -1.200 0.0 1   0.100 180.0 2   0.600 0.0 3
torsion       1    1  146   23      0.073 0.0 1  -0.422 180.0 2   0.000 0.0 3
torsion       1    1  146  145      2.800 0.0 1  -0.800 180.0 2   1.400 0.0 3
torsion       5    1  146    1      0.072 0.0 1  -0.012 180.0 2   1.000 0.0 3
torsion       5    1  146   23      0.121 0.0 1  -0.648 180.0 2   0.400 0.0 3
torsion       5    1  146  145      2.800 0.0 1  -0.500 180.0 2   0.600 0.0 3
torsion       1    1  150   23     -7.000 0.0 1   1.822 180.0 2   3.127 0.0 3
torsion       1    1  150  150      2.000 0.0 1  -1.786 180.0 2   2.378 0.0 3
torsion       2    1  150  150      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    1  150    1     -3.600 0.0 1   1.000 180.0 2   1.000 0.0 3
torsion       5    1  150   23     -2.000 0.0 1  -4.000 180.0 2   1.400 0.0 3
torsion       5    1  150  150      0.000 0.0 1   0.000 180.0 2   0.800 0.0 3
torsion       8    1  150  150      0.000 0.0 1   0.000 180.0 2   0.350 0.0 3
torsion       2    1  151    2      0.000 0.0 1  -1.246 180.0 2   0.100 0.0 3
torsion       2    1  151    3      2.316 0.0 1  -1.246 180.0 2   2.102 0.0 3
torsion       1    1  153    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1  153    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    1  153    7      0.000 0.0 1   0.000 180.0 2   0.270 0.0 3
torsion       1    1  153  159      0.000 0.0 1   0.000 180.0 2   0.270 0.0 3
torsion       5    1  153    1      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       5    1  153    6      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       5    1  153    7      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       5    1  153  159      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       1    1  154  155      0.981 0.0 1  -1.181 180.0 2   1.598 0.0 3
torsion       5    1  154  155      0.000 0.0 1   0.000 180.0 2   0.378 0.0 3
torsion       1    1  155  154      5.117 0.0 1  -3.407 180.0 2   1.561 0.0 3
torsion       5    1  155  154      0.000 0.0 1   0.000 180.0 2  -0.183 0.0 3
torsion       1    1  159  153      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    1  159  153      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       1    2    2    1     -0.300 0.0 1   9.500 180.0 2   0.000 0.0 3
torsion       1    2    2    2     -0.610 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion       1    2    2    3      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       1    2    2    5      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1    2    2    6     -1.200 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion       1    2    2    8      0.000 0.0 1   9.000 180.0 2   0.000 0.0 3
torsion       1    2    2   12      0.320 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion       1    2    2   14     -1.320 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion       1    2    2   18      0.000 0.0 1   8.100 180.0 2   0.300 0.0 3
torsion       1    2    2   19      0.000 0.0 1   6.450 180.0 2   0.000 0.0 3
torsion       1    2    2   22      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       1    2    2   36      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1    2    2   37      0.000 0.0 1   7.500 180.0 2   0.000 0.0 3
torsion       1    2    2   39      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       1    2    2   40      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       1    2    2   41      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1    2    2   42      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1    2    2  111      0.000 0.0 1   7.500 180.0 2   1.000 0.0 3
torsion       2    2    2    2     -0.670 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2    2    3      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2    2    4      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       2    2    2    5      0.250 0.0 1   9.000 180.0 2  -0.550 0.0 3
torsion       2    2    2    6      0.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion       2    2    2    8      0.000 0.0 1   9.000 180.0 2   0.000 0.0 3
torsion       2    2    2    9      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       2    2    2   11      0.000 0.0 1  14.500 180.0 2   0.000 0.0 3
torsion       2    2    2   12      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       2    2    2   13      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       2    2    2   14      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       2    2    2   18      0.000 0.0 1   8.100 180.0 2   0.300 0.0 3
torsion       2    2    2   19      0.000 0.0 1   6.450 180.0 2   0.000 0.0 3
torsion       2    2    2   22     -0.270 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       2    2    2   25      0.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion       2    2    2   26      0.000 0.0 1  11.600 180.0 2   0.000 0.0 3
torsion       2    2    2   31      0.000 0.0 1   6.450 180.0 2   0.000 0.0 3
torsion       2    2    2   36      0.250 0.0 1   9.000 180.0 2  -0.550 0.0 3
torsion       2    2    2   37      1.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2    2   39      1.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       2    2    2   40      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       2    2    2   41     -0.450 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2    2   42      0.000 0.0 1  10.000 180.0 2   4.200 0.0 3
torsion       2    2    2   43      0.000 0.0 1  12.200 180.0 2   0.000 0.0 3
torsion       2    2    2   46      0.000 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion       2    2    2   57     -0.670 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion       2    2    2  108      0.853 0.0 1  -2.618 180.0 2   0.986 0.0 3
torsion       2    2    2  111      1.000 0.0 1  15.000 180.0 2   1.500 0.0 3
torsion       2    2    2  143      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       2    2    2  144      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       2    2    2  151      0.000 0.0 1  11.945 180.0 2   0.000 0.0 3
torsion       3    2    2    3      0.000 0.0 1   8.700 180.0 2   0.000 0.0 3
torsion       3    2    2    5      0.000 0.0 1  10.400 180.0 2   0.000 0.0 3
torsion       3    2    2    8      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       3    2    2   14     -0.500 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion       3    2    2   22      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       3    2    2   41     -0.450 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       4    2    2    5      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2    2    5      0.000 0.0 1  11.500 180.0 2   0.000 0.0 3
torsion       5    2    2    6      0.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion       5    2    2    8      0.000 0.0 1   9.000 180.0 2   0.000 0.0 3
torsion       5    2    2    9      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       5    2    2   11      0.000 0.0 1  14.500 180.0 2   0.000 0.0 3
torsion       5    2    2   12      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2    2   13      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2    2   14     -1.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2    2   18      0.000 0.0 1   8.380 180.0 2   0.300 0.0 3
torsion       5    2    2   19      0.000 0.0 1   6.450 180.0 2   0.000 0.0 3
torsion       5    2    2   22      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2    2   25      0.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion       5    2    2   26      0.000 0.0 1  11.600 180.0 2   0.000 0.0 3
torsion       5    2    2   31      0.000 0.0 1   6.450 180.0 2   0.000 0.0 3
torsion       5    2    2   37      0.755 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2    2   39      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2    2   40     -3.150 0.0 1   3.000 180.0 2   0.000 0.0 3
torsion       5    2    2   41     -0.250 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2    2   42     -4.242 0.0 1   7.400 180.0 2   0.000 0.0 3
torsion       5    2    2   43      0.000 0.0 1  14.000 180.0 2  -1.060 0.0 3
torsion       5    2    2   46      0.000 0.0 1   8.500 180.0 2   0.000 0.0 3
torsion       5    2    2   57      0.250 0.0 1   9.000 180.0 2  -0.550 0.0 3
torsion       5    2    2  111      0.000 0.0 1  12.620 180.0 2  -1.100 0.0 3
torsion       5    2    2  143      0.000 0.0 1  12.800 180.0 2  -1.060 0.0 3
torsion       5    2    2  144      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       6    2    2    6     -2.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion       6    2    2   12     -0.500 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion       6    2    2   13      0.000 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion       6    2    2   14      0.000 0.0 1   5.250 180.0 2   0.000 0.0 3
torsion       8    2    2    8      0.000 0.0 1   9.000 180.0 2   0.000 0.0 3
torsion      11    2    2   11     -2.300 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion      12    2    2   12     -1.600 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion      13    2    2   13     -0.800 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion      14    2    2   14     -3.840 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion      14    2    2   41     -1.000 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion      19    2    2   19      0.000 0.0 1   6.450 180.0 2   0.000 0.0 3
torsion      22    2    2   40      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion      31    2    2   31      0.000 0.0 1   6.450 180.0 2   0.000 0.0 3
torsion      36    2    2   36      0.000 0.0 1  11.500 180.0 2   0.000 0.0 3
torsion      37    2    2   37      2.500 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion      37    2    2   40      0.900 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion      37    2    2  151      0.239 0.0 1  11.945 180.0 2   0.142 0.0 3
torsion      40    2    2   40      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion      41    2    2   41      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion      42    2    2   42      0.000 0.0 1  10.000 180.0 2   4.500 0.0 3
torsion      46    2    2   46      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1    2    3    1      0.980 0.0 1  10.379 180.0 2   0.000 0.0 3
torsion       1    2    3    2      0.000 0.0 1   9.820 180.0 2   0.000 0.0 3
torsion       1    2    3    5      3.250 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       1    2    3    7      2.020 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       1    2    3  151      3.804 0.0 1   9.139 180.0 2  -1.199 0.0 3
torsion       2    2    3    1     -3.250 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion       2    2    3    2      0.000 0.0 1   9.820 180.0 2   0.000 0.0 3
torsion       2    2    3    3     -1.380 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       2    2    3    5     -0.300 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion       2    2    3    6      0.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion       2    2    3    7      0.000 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion       2    2    3    9      0.000 0.0 1   1.500 180.0 2   0.000 0.0 3
torsion       2    2    3   75      0.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion       2    2    3   76      1.550 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       2    2    3  149      0.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion       2    2    3  151      0.000 0.0 1   9.139 180.0 2   0.000 0.0 3
torsion       5    2    3    1      0.000 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion       5    2    3    2      0.400 0.0 1   9.820 180.0 2   0.000 0.0 3
torsion       5    2    3    3      0.000 0.0 1   9.800 180.0 2   0.000 0.0 3
torsion       5    2    3    5      2.750 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2    3    7      2.100 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2    3  149      0.000 0.0 1  11.600 180.0 2   0.000 0.0 3
torsion       5    2    3  151      0.000 0.0 1   9.139 180.0 2   0.000 0.0 3
torsion      40    2    3    2      0.000 0.0 1  11.000 180.0 2   0.000 0.0 3
torsion      40    2    3    7      0.800 0.0 1  11.000 180.0 2   0.800 0.0 3
torsion       2    2    4    4      0.000 0.0 1   0.001 180.0 2   0.000 0.0 3
torsion       1    2    6    1      2.300 0.0 1   4.000 180.0 2   0.000 0.0 3
torsion       1    2    6    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    2    6    1      1.500 0.0 1   3.300 180.0 2  -3.530 0.0 3
torsion       2    2    6    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    2    6    3      0.000 0.0 1   2.300 180.0 2   0.000 0.0 3
torsion       2    2    6   21      0.000 0.0 1   2.300 180.0 2   0.000 0.0 3
torsion       2    2    6   25      0.100 0.0 1   4.600 180.0 2   0.000 0.0 3
torsion       2    2    6   73      2.000 0.0 1   1.700 180.0 2  -2.000 0.0 3
torsion       5    2    6    1      3.000 0.0 1   3.100 180.0 2   0.000 0.0 3
torsion       5    2    6    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    2    6   25     -0.100 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       5    2    6   73      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    2    8    1     -1.450 0.0 1   3.100 180.0 2   0.000 0.0 3
torsion       2    2    8   23      0.000 0.0 1   2.500 180.0 2   0.000 0.0 3
torsion       5    2    8    1      1.670 0.0 1   1.600 180.0 2   0.000 0.0 3
torsion       5    2    8   23      0.000 0.0 1   3.300 180.0 2   0.000 0.0 3
torsion       8    2    8    1     -2.500 0.0 1   3.700 180.0 2   0.000 0.0 3
torsion      22    2    8    1      0.000 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion      22    2    8   23      0.000 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       2    2    9    1      0.000 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       2    2    9    2      0.000 0.0 1   0.000 180.0 2   1.490 0.0 3
torsion       2    2    9    3      0.000 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       2    2    9   28      0.000 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       5    2    9    3      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    2    9   28      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       9    2    9    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       9    2    9   28      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    2   18    1      0.000 0.0 1   0.000 180.0 2   3.000 0.0 3
torsion       2    2   18    2      0.000 0.0 1   0.000 180.0 2   3.000 0.0 3
torsion       2    2   18    7      0.000 0.0 1   0.000 180.0 2   3.000 0.0 3
torsion       5    2   18    1      0.000 0.0 1   0.000 180.0 2   0.765 0.0 3
torsion       5    2   18    2      0.000 0.0 1   0.000 180.0 2   0.765 0.0 3
torsion       5    2   18    7      0.000 0.0 1   0.000 180.0 2   0.820 0.0 3
torsion       1    2   19    1      0.000 0.0 1   0.000 180.0 2   0.350 0.0 3
torsion       1    2   19    2     -0.440 0.0 1  -0.240 180.0 2   0.060 0.0 3
torsion       2    2   19    1     -0.300 0.0 1   0.300 180.0 2   0.000 0.0 3
torsion       2    2   19    2      0.000 0.0 1   0.000 180.0 2   0.232 0.0 3
torsion       2    2   19    5      0.300 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       2    2   19    6      0.000 0.0 1   0.000 180.0 2   0.200 0.0 3
torsion       2    2   19   19     -0.440 0.0 1  -0.240 180.0 2   0.060 0.0 3
torsion       5    2   19    1      0.000 0.0 1   0.000 180.0 2   0.717 0.0 3
torsion       5    2   19    2      0.000 0.0 1   0.000 180.0 2   0.600 0.0 3
torsion       5    2   19    5      0.000 0.0 1   0.000 180.0 2   0.520 0.0 3
torsion       2    2   22    2      0.100 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       2    2   22    5     -0.300 0.0 1   1.600 180.0 2  -0.500 0.0 3
torsion       2    2   22   22     -0.440 0.0 1   0.240 180.0 2   0.060 0.0 3
torsion       2    2   22   49      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    2   22    2      0.000 0.0 1   0.000 180.0 2   0.600 0.0 3
torsion       5    2   22    5      0.000 0.0 1   0.000 180.0 2   0.520 0.0 3
torsion       5    2   22   22      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion       8    2   22    2      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       8    2   22   22      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       2    2   25    1      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       2    2   25    2      0.000 0.0 1   0.200 180.0 2   0.000 0.0 3
torsion       2    2   26    6      0.000 0.0 1   1.670 180.0 2   0.000 0.0 3
torsion       2    2   31    1      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       2    2   31    2      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       2    2   31    5      0.000 0.0 1   0.000 180.0 2  -0.245 0.0 3
torsion       2    2   31   31      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       5    2   31    1      0.000 0.0 1   0.000 180.0 2   0.175 0.0 3
torsion       5    2   31    2      0.000 0.0 1   0.000 180.0 2   0.175 0.0 3
torsion       5    2   31    5      0.000 0.0 1   0.000 180.0 2   0.175 0.0 3
torsion       1    2   37    1      0.880 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1    2   37    2      0.000 0.0 1   6.000 180.0 2   0.000 0.0 3
torsion       1    2   37   23      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       1    2   37   41      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2   37    1      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2   37    2      1.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       2    2   37   23      0.779 0.0 1   6.000 180.0 2   0.000 0.0 3
torsion       2    2   37   37      0.000 0.0 1  20.000 180.0 2   0.000 0.0 3
torsion       2    2   37   40      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2   37   41      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2   37    1      0.000 0.0 1  12.200 180.0 2   0.000 0.0 3
torsion       5    2   37    2     -6.650 0.0 1  20.000 180.0 2   0.000 0.0 3
torsion       5    2   37   23      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2   37   37      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       5    2   37   40      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2   37   41      0.000 0.0 1  16.000 180.0 2   0.000 0.0 3
torsion       5    2   37   42      0.000 0.0 1  18.000 180.0 2   0.000 0.0 3
torsion      37    2   37    1      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion      37    2   37    2      0.000 0.0 1  13.000 180.0 2   0.000 0.0 3
torsion      37    2   37   23      0.000 0.0 1   6.000 180.0 2   0.000 0.0 3
torsion      37    2   37   37      0.000 0.0 1   6.000 180.0 2   0.000 0.0 3
torsion      37    2   37   40      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion      40    2   37    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2   38   22      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       1    2   39    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2   39    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2   39    1      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2   39    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1    2   40    2      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       1    2   40   23      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       2    2   40    1      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       2    2   40    2      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       2    2   40   23     -3.150 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion       2    2   40   37      1.500 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       3    2   40    2      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       3    2   40   23      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2   40    1      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       5    2   40    2      0.000 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion       5    2   40   23     -0.530 0.0 1   3.000 180.0 2   0.000 0.0 3
torsion       5    2   40   37      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion      37    2   40    2      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion      37    2   40   23     -2.744 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion      37    2   40   37      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       1    2   41    1      0.000 0.0 1  10.110 180.0 2   0.000 0.0 3
torsion       1    2   41    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1    2   41   37      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1    2   41  108      0.813 0.0 1   0.437 180.0 2   0.853 0.0 3
torsion       2    2   41    1      0.000 0.0 1  12.000 180.0 2  -2.100 0.0 3
torsion       2    2   41    2      0.200 0.0 1   6.000 180.0 2  -0.800 0.0 3
torsion       2    2   41   37      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2   41   73     -0.100 0.0 1  10.800 180.0 2   0.000 0.0 3
torsion       2    2   41  108      0.134 0.0 1  19.253 180.0 2  -0.879 0.0 3
torsion       5    2   41    1     -0.800 0.0 1  11.000 180.0 2   2.100 0.0 3
torsion       5    2   41    2      0.000 0.0 1   9.000 180.0 2   0.400 0.0 3
torsion       5    2   41   37      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2   41   73      0.740 0.0 1   9.000 180.0 2   0.000 0.0 3
torsion       5    2   41  108      0.000 0.0 1   2.470 180.0 2  -0.600 0.0 3
torsion      12    2   41    2      0.000 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion      13    2   41    2      0.000 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion      14    2   41    2      0.000 0.0 1  15.500 180.0 2   0.000 0.0 3
torsion       1    2   42    2      0.000 0.0 1   1.700 180.0 2   0.000 0.0 3
torsion       2    2   42    2      0.000 0.0 1   1.700 180.0 2   0.400 0.0 3
torsion       2    2   42   44      0.000 0.0 1   1.600 180.0 2  -0.510 0.0 3
torsion       5    2   42    2      0.000 0.0 1   2.080 180.0 2   0.000 0.0 3
torsion       5    2   42   37      0.000 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       5    2   42   44      0.000 0.0 1   2.000 180.0 2   0.100 0.0 3
torsion       2    2   43    2      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       2    2   43   69      0.000 0.0 1  13.200 180.0 2   0.000 0.0 3
torsion       5    2   43    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2   43   69      0.000 0.0 1   7.500 180.0 2   0.000 0.0 3
torsion       2    2   46    7      0.000 0.0 1   1.300 180.0 2   0.000 0.0 3
torsion       5    2   46    7      0.000 0.0 1   1.300 180.0 2   0.000 0.0 3
torsion       2    2   57   57     -0.670 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion       5    2   57   56      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5    2   57   57      0.250 0.0 1   9.000 180.0 2  -0.550 0.0 3
torsion       5    2   72    1      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2    2   75    3      0.000 0.0 1   2.300 180.0 2   0.000 0.0 3
torsion       1    2  108   41      4.172 0.0 1  35.385 180.0 2   0.165 0.0 3
torsion       2    2  108   41      3.138 0.0 1  19.353 180.0 2   1.542 0.0 3
torsion       5    2  108   41      5.258 0.0 1  18.551 180.0 2   0.579 0.0 3
torsion       5    2  110    1     -0.481 0.0 1  11.368 180.0 2  -1.519 0.0 3
torsion       5    2  110   23      0.000 0.0 1   9.500 180.0 2   0.000 0.0 3
torsion       2    2  111    1      0.000 0.0 1   1.000 180.0 2   0.000 0.0 3
torsion       2    2  111    2     -0.750 0.0 1  15.000 180.0 2  -0.500 0.0 3
torsion       2    2  111   23      0.820 0.0 1   6.000 180.0 2   0.000 0.0 3
torsion       5    2  111    1      0.000 0.0 1  12.200 180.0 2   0.000 0.0 3
torsion       5    2  111    2      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2  111   23      0.000 0.0 1   9.000 180.0 2   0.000 0.0 3
torsion       2    2  113  113      0.000 0.0 1   1.500 180.0 2   0.000 0.0 3
torsion       2    2  114  114      0.000 0.0 1   1.500 180.0 2   0.000 0.0 3
torsion       2    2  143    2      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       2    2  143   69      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion       2    2  143  144      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5    2  143    2      0.000 0.0 1  12.500 180.0 2   0.000 0.0 3
torsion       5    2  143   69      0.000 0.0 1  12.500 180.0 2   0.000 0.0 3
torsion       2    2  144  143      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       2    2  151    1      0.000 0.0 1   5.096 180.0 2   0.000 0.0 3
torsion       2    2  151    3      0.000 0.0 1   3.857 180.0 2  -0.631 0.0 3
torsion       2    2  151   28      0.000 0.0 1   3.857 180.0 2   0.000 0.0 3
torsion       5    2  151    1      1.798 0.0 1   5.096 180.0 2   0.889 0.0 3
torsion       5    2  151    3      0.000 0.0 1   3.857 180.0 2   0.000 0.0 3
torsion       5    2  151   28      0.000 0.0 1   3.857 180.0 2   0.000 0.0 3
torsion       1    3    3    1      1.000 0.0 1   6.500 180.0 2   0.000 0.0 3
torsion       1    3    3    5      0.000 0.0 1   5.200 180.0 2   0.000 0.0 3
torsion       1    3    3   76     -1.000 0.0 1   6.500 180.0 2   0.000 0.0 3
torsion       2    3    3    2      0.900 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion       2    3    3    5      0.000 0.0 1   5.000 180.0 2   0.000 0.0 3
torsion       2    3    3   76     -1.500 0.0 1   3.000 180.0 2   0.000 0.0 3
torsion       5    3    3    5     -0.700 0.0 1   9.800 180.0 2   0.000 0.0 3
torsion       5    3    3   36      0.000 0.0 1   7.500 180.0 2   0.000 0.0 3
torsion       5    3    3   76     -0.530 0.0 1   7.500 180.0 2   0.000 0.0 3
torsion      36    3    3   36      0.000 0.0 1   7.500 180.0 2   0.000 0.0 3
torsion      36    3    3   76     -0.530 0.0 1   7.500 180.0 2   0.000 0.0 3
torsion      76    3    3   76      0.000 0.0 1   7.500 180.0 2   0.000 0.0 3
torsion       1    3    6    1      1.050 0.0 1   7.500 180.0 2  -0.200 0.0 3
torsion       1    3    6    3     -2.500 0.0 1   1.390 180.0 2   0.000 0.0 3
torsion       1    3    6   24      0.000 0.0 1   5.390 180.0 2   1.230 0.0 3
torsion       2    3    6    1      3.530 0.0 1   2.300 180.0 2  -3.530 0.0 3
torsion       5    3    6    1     -0.300 0.0 1   7.500 180.0 2   0.000 0.0 3
torsion       5    3    6   24     -0.300 0.0 1   5.390 180.0 2   0.000 0.0 3
torsion       7    3    6    1     -2.660 0.0 1   7.500 180.0 2   0.200 0.0 3
torsion       7    3    6    3     -1.660 0.0 1   8.980 180.0 2   0.000 0.0 3
torsion       7    3    6   24     -1.200 0.0 1   5.390 180.0 2   0.400 0.0 3
torsion       1    3    9    1      1.100 0.0 1   3.800 180.0 2   0.000 0.0 3
torsion       1    3    9    2     -4.000 0.0 1   2.700 180.0 2   0.500 0.0 3
torsion       1    3    9    3      0.800 0.0 1   1.700 180.0 2   0.800 0.0 3
torsion       1    3    9   28      0.000 0.0 1   3.800 180.0 2   0.000 0.0 3
torsion       2    3    9    1      0.000 0.0 1   5.000 180.0 2   0.000 0.0 3
torsion       5    3    9    1      1.000 0.0 1   3.900 180.0 2   0.000 0.0 3
torsion       5    3    9    3      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5    3    9   28      0.000 0.0 1   4.600 180.0 2   0.000 0.0 3
torsion       5    3    9   56      1.100 0.0 1   3.800 180.0 2   0.000 0.0 3
torsion       7    3    9    1     -0.600 0.0 1   4.200 180.0 2   0.000 0.0 3
torsion       7    3    9    2     -0.600 0.0 1   4.200 180.0 2   0.000 0.0 3
torsion       7    3    9    3      1.200 0.0 1   1.700 180.0 2   0.800 0.0 3
torsion       7    3    9   28      1.000 0.0 1   4.100 180.0 2   0.000 0.0 3
torsion       7    3    9   56     -0.500 0.0 1   4.000 180.0 2   0.000 0.0 3
torsion       9    3    9    1      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion       9    3    9    2      2.400 0.0 1   2.500 180.0 2   0.000 0.0 3
torsion       9    3    9    3      0.800 0.0 1   1.300 180.0 2   0.000 0.0 3
torsion       9    3    9   28      0.800 0.0 1   4.100 180.0 2   0.000 0.0 3
torsion       7    3   22    5     -0.167 0.0 1   0.000 180.0 2  -0.100 0.0 3
torsion       7    3   22   22     -0.300 0.0 1   1.200 180.0 2  -0.350 0.0 3
torsion      22    3   22    5      0.000 0.0 1   0.000 180.0 2   0.130 0.0 3
torsion       5    3   56   56     -0.300 0.0 1   0.550 180.0 2  -0.120 0.0 3
torsion       7    3   56    5     -0.154 0.0 1   0.044 180.0 2  -0.086 0.0 3
torsion       7    3   56   56     -0.457 0.0 1   1.106 180.0 2  -0.160 0.0 3
torsion      56    3   56    5      0.000 0.0 1   0.000 180.0 2   0.130 0.0 3
torsion       1    3   75    1      1.050 0.0 1   7.500 180.0 2  -0.200 0.0 3
torsion       1    3   75    3     -2.500 0.0 1   1.390 180.0 2   0.000 0.0 3
torsion       1    3   75   24      0.000 0.0 1   5.390 180.0 2   1.230 0.0 3
torsion       2    3   75    1      3.530 0.0 1   2.300 180.0 2  -3.530 0.0 3
torsion       5    3   75    1     -0.300 0.0 1   7.500 180.0 2   0.000 0.0 3
torsion       5    3   75   24     -0.300 0.0 1   5.390 180.0 2   0.000 0.0 3
torsion      77    3   75   24     -1.200 0.0 1   5.390 180.0 2   0.400 0.0 3
torsion      78    3   75    1     -2.660 0.0 1   7.500 180.0 2   0.200 0.0 3
torsion      82    3   75    3     -1.660 0.0 1   8.980 180.0 2   0.000 0.0 3
torsion       1    3  148    3      2.300 0.0 1   3.500 180.0 2  -0.900 0.0 3
torsion       5    3  148    3     -0.200 0.0 1   2.600 180.0 2   0.300 0.0 3
torsion      82    3  148    3      0.500 0.0 1   3.000 180.0 2   0.000 0.0 3
torsion       2    3  149    3      0.000 0.0 1   2.470 180.0 2  -0.600 0.0 3
torsion     102    3  149    3      0.500 0.0 1   3.000 180.0 2   0.000 0.0 3
torsion       2    3  151    2     -0.835 0.0 1  11.053 180.0 2   1.431 0.0 3
torsion       2    3  151   28      0.000 0.0 1  11.053 180.0 2   0.000 0.0 3
torsion      79    3  151    1     -0.600 0.0 1  11.053 180.0 2   0.000 0.0 3
torsion      79    3  151    2     -0.600 0.0 1  11.053 180.0 2   0.000 0.0 3
torsion      79    3  151   28      1.000 0.0 1  11.053 180.0 2   0.000 0.0 3
torsion      96    3  151    2     -0.600 0.0 1  11.053 180.0 2   0.000 0.0 3
torsion      96    3  151   28      1.000 0.0 1  11.053 180.0 2   0.000 0.0 3
torsion       1    4    4    2      0.000 0.0 1   0.001 180.0 2   0.000 0.0 3
torsion       1    4    4    4      0.000 0.0 1   0.001 180.0 2   0.000 0.0 3
torsion       2    4    4    2      0.000 0.0 1   0.001 180.0 2   0.000 0.0 3
torsion       2    4    4    4      0.000 0.0 1   0.001 180.0 2   0.000 0.0 3
torsion       2    4    4  124      0.000 0.0 1   0.001 180.0 2   0.000 0.0 3
torsion       4    4    4    4      0.000 0.0 1   0.001 180.0 2   0.000 0.0 3
torsion     124    4    4  124      0.040 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    6    6    1      2.610 0.0 1  -2.550 180.0 2   0.845 0.0 3
torsion       1    6    6   21      1.655 0.0 1  -2.005 180.0 2   0.545 0.0 3
torsion      21    6    6   21     -0.800 0.0 1  -1.945 180.0 2  -0.100 0.0 3
torsion       1    6   19    1      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion       1    6   19    5      0.000 0.0 1   0.000 180.0 2   0.490 0.0 3
torsion       1    6   19    6      0.000 0.0 1   0.000 180.0 2   0.150 0.0 3
torsion      19    6   19    1      0.000 0.0 1  -0.200 180.0 2   0.100 0.0 3
torsion      19    6   19    2      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion      19    6   19    5      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion      19    6   19    6      0.000 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion      21    6   19    1      0.000 0.0 1   0.000 180.0 2   0.150 0.0 3
torsion      21    6   19    5      0.000 0.0 1   0.000 180.0 2   0.150 0.0 3
torsion      21    6   19    6      0.000 0.0 1  -0.450 180.0 2   0.000 0.0 3
torsion       1    6   25    6      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       2    6   25    6      0.200 0.0 1   0.000 180.0 2  -0.300 0.0 3
torsion      21    6   26    1     -1.460 0.0 1   5.096 180.0 2  -0.105 0.0 3
torsion      21    6   26    2     -1.671 0.0 1   4.175 180.0 2   0.778 0.0 3
torsion      21    6   26    6     -0.519 0.0 1   4.560 180.0 2   0.314 0.0 3
torsion       1    6   56    9      0.000 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       1    6   56   56      0.000 0.0 1   0.000 180.0 2  -0.500 0.0 3
torsion       2    6   56    5      0.000 0.0 1   1.700 180.0 2  -0.700 0.0 3
torsion       2    6   56   56      0.000 0.0 1  -2.100 180.0 2   1.000 0.0 3
torsion      56    6   56    1      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion      56    6   56    5      0.000 0.0 1   0.000 180.0 2   0.730 0.0 3
torsion      58    6   56    1      1.250 0.0 1   0.440 180.0 2   0.000 0.0 3
torsion      58    6   56    5      0.000 0.0 1   0.000 180.0 2   0.001 0.0 3
torsion      56    6   58    7     -2.660 0.0 1   7.500 180.0 2   0.200 0.0 3
torsion       1    6  153    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1    6  153    5     -0.820 0.0 1   0.062 180.0 2  -0.171 0.0 3
torsion       1    6  153    6     -2.322 0.0 1  -0.469 180.0 2   0.086 0.0 3
torsion       1    6  153    7     -3.213 0.0 1   0.155 180.0 2   1.609 0.0 3
torsion      21    6  153    1      0.040 0.0 1  -0.903 180.0 2   0.083 0.0 3
torsion      21    6  153    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      21    6  153    6     -0.401 0.0 1  -1.120 180.0 2   0.200 0.0 3
torsion      21    6  153    7     -1.828 0.0 1  -0.608 180.0 2   0.448 0.0 3
torsion       1    8   50   50     -1.650 0.0 1   3.200 180.0 2   0.000 0.0 3
torsion      23    8   50   50      0.000 0.0 1   2.500 180.0 2   0.000 0.0 3
torsion       1    8   56    1      0.958 0.0 1  -0.155 180.0 2   0.766 0.0 3
torsion       1    8   56   56      0.958 0.0 1  -0.155 180.0 2   0.766 0.0 3
torsion      23    8   56    5      0.121 0.0 1  -0.648 180.0 2   0.199 0.0 3
torsion      23    8   56   56      0.073 0.0 1  -0.422 180.0 2   0.327 0.0 3
torsion      56    8   56    1      0.958 0.0 1  -0.155 180.0 2   0.766 0.0 3
torsion      56    8   56    5      0.000 0.0 1   0.000 180.0 2   0.563 0.0 3
torsion      56    8   56   56      0.958 0.0 1  -0.155 180.0 2   0.766 0.0 3
torsion       1    9   18    1     -4.000 0.0 1  -3.000 180.0 2  -2.100 0.0 3
torsion       1    9   18    7     -0.500 0.0 1  -1.000 180.0 2   0.000 0.0 3
torsion      28    9   18    1     -0.500 0.0 1  -2.000 180.0 2  -4.000 0.0 3
torsion      28    9   18    5      0.000 0.0 1   0.000 180.0 2   0.030 0.0 3
torsion      28    9   18    7      0.000 0.0 1   0.000 180.0 2   0.060 0.0 3
torsion       1    9   30    9      0.000 0.0 1   4.500 180.0 2   0.000 0.0 3
torsion      28    9   30    9      0.000 0.0 1   4.500 180.0 2   0.000 0.0 3
torsion       1    9   56    1      0.000 0.0 1   0.900 180.0 2  -0.700 0.0 3
torsion       1    9   56    6     -0.900 0.0 1   0.000 180.0 2   1.000 0.0 3
torsion       1    9   56   56      9.800 0.0 1   9.160 180.0 2   0.200 0.0 3
torsion       3    9   56    5      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion      28    9   56    5      0.000 0.0 1   0.000 180.0 2   3.900 0.0 3
torsion      28    9   56   56      0.000 0.0 1   1.000 180.0 2  -0.200 0.0 3
torsion      58    9   56    1      0.000 0.0 1  -3.000 180.0 2   0.000 0.0 3
torsion      58    9   56    6     -0.500 0.0 1  -1.000 180.0 2   1.000 0.0 3
torsion       1    9   58   56      0.000 0.0 1   5.000 180.0 2   2.300 0.0 3
torsion       1    9   58   79     -0.300 0.0 1   1.000 180.0 2   0.300 0.0 3
torsion      28    9   58   56      0.000 0.0 1   1.050 180.0 2   0.250 0.0 3
torsion      28    9   58   79      0.000 0.0 1   5.100 180.0 2   0.000 0.0 3
torsion      56    9   58   79      0.000 0.0 1  -0.850 180.0 2   0.000 0.0 3
torsion       1   15   15    1      1.850 0.0 1  -7.555 180.0 2   2.340 0.0 3
torsion       1   15   15   44      0.850 0.0 1  -6.685 180.0 2   0.750 0.0 3
torsion      44   15   15   44      0.350 0.0 1  -6.450 180.0 2   0.350 0.0 3
torsion      56   15   56    5      0.000 0.0 1   0.000 180.0 2   0.660 0.0 3
torsion       1   19   19    1      0.000 0.0 1   0.000 180.0 2   0.107 0.0 3
torsion       1   19   19    2      0.007 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion       1   19   19    5      0.020 0.0 1   0.000 180.0 2   0.127 0.0 3
torsion       1   19   19   19      0.000 0.0 1   0.000 180.0 2   0.350 0.0 3
torsion       2   19   19    2      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       2   19   19    5      0.000 0.0 1   0.000 180.0 2   0.450 0.0 3
torsion       5   19   19    5      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       5   19   19   19      0.000 0.0 1   0.000 180.0 2   0.070 0.0 3
torsion      19   19   19   19      0.000 0.0 1   0.000 180.0 2   0.125 0.0 3
torsion       1   19   22    5      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       1   19   22   22      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       5   19   22    5      0.000 0.0 1   0.000 180.0 2   0.260 0.0 3
torsion       5   19   22   22      0.000 0.0 1   0.000 180.0 2   0.805 0.0 3
torsion      22   19   22   22      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       1   19   56    5      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       1   19   56   56      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       5   19   56    5      0.000 0.0 1   0.000 180.0 2   0.270 0.0 3
torsion       5   19   56   56      0.000 0.0 1   0.000 180.0 2   0.210 0.0 3
torsion      56   19   56    5      0.000 0.0 1   0.000 180.0 2   0.195 0.0 3
torsion      56   19   56   56      0.100 0.0 1   0.000 180.0 2   0.150 0.0 3
torsion       1   22   22    1      0.200 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion       1   22   22    2      0.200 0.0 1   0.300 180.0 2   0.100 0.0 3
torsion       1   22   22    3      0.200 0.0 1   0.200 180.0 2   0.000 0.0 3
torsion       1   22   22    5      0.000 0.0 1   0.000 180.0 2   0.120 0.0 3
torsion       1   22   22   19      0.220 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion       1   22   22   22      0.200 0.0 1   0.000 180.0 2   0.093 0.0 3
torsion       1   22   22   49      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion       2   22   22    2      0.200 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion       2   22   22    5      0.000 0.0 1   0.000 180.0 2   0.120 0.0 3
torsion       2   22   22   22      0.170 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion       2   22   22   49      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion       3   22   22    5      0.000 0.0 1   0.000 180.0 2   0.120 0.0 3
torsion       3   22   22   22      0.200 0.0 1   0.200 180.0 2   0.000 0.0 3
torsion       5   22   22    5      0.000 0.0 1   0.000 180.0 2   0.137 0.0 3
torsion       5   22   22   19      0.000 0.0 1   0.000 180.0 2   0.120 0.0 3
torsion       5   22   22   22      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion       5   22   22   31      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       5   22   22   38      0.000 0.0 1   2.000 180.0 2   0.500 0.0 3
torsion       5   22   22   46      0.000 0.0 1   0.000 180.0 2   0.200 0.0 3
torsion       5   22   22   49      0.000 0.0 1   0.000 180.0 2   0.530 0.0 3
torsion       5   22   22   56      0.000 0.0 1   0.000 180.0 2   0.120 0.0 3
torsion       5   22   22   67      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion      19   22   22   22      0.220 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion      22   22   22   22     -0.940 0.0 1   0.600 180.0 2   0.160 0.0 3
torsion      22   22   22   31      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion      22   22   22   46      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion      22   22   22   56      0.200 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion      56   22   22   56      0.200 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion      57   22   22   57      0.200 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion       5   22   31    5      0.000 0.0 1   0.000 180.0 2   0.285 0.0 3
torsion      22   22   31    5      0.000 0.0 1   0.000 180.0 2   0.285 0.0 3
torsion       5   22   38    1      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5   22   38    2      0.000 0.0 1   0.000 180.0 2  -0.240 0.0 3
torsion       5   22   38    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5   22   38   22      0.000 0.0 1   2.000 180.0 2   0.540 0.0 3
torsion       5   22   38   38      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      22   22   38    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      22   22   38    5      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion      38   22   38    1      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion      38   22   38    2      0.100 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion      38   22   38    5      0.000 0.0 1   0.000 180.0 2   0.600 0.0 3
torsion       5   22   46    7      0.000 0.0 1   1.000 180.0 2   0.000 0.0 3
torsion      22   22   46    7      0.000 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       1   22   49   22      0.000 0.0 1   0.000 180.0 2   1.210 0.0 3
torsion       2   22   49   22      0.000 0.0 1   0.000 180.0 2   1.210 0.0 3
torsion       5   22   49   22      0.000 0.0 1   0.000 180.0 2   1.210 0.0 3
torsion       5   22   56    1      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       5   22   56    5      0.000 0.0 1   0.000 180.0 2   0.690 0.0 3
torsion       5   22   56   56      0.000 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion      22   22   56    1      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion      22   22   56    5      0.000 0.0 1   0.000 180.0 2   0.120 0.0 3
torsion      22   22   56   56      0.300 0.0 1   0.000 180.0 2   0.450 0.0 3
torsion      22   22   57   57      0.300 0.0 1   0.000 180.0 2   0.450 0.0 3
torsion       5   22   67    7      0.000 0.0 1   2.000 180.0 2   0.000 0.0 3
torsion       5   22   67   22      0.000 0.0 1   1.300 180.0 2   0.015 0.0 3
torsion      22   22   67    7     -0.300 0.0 1   1.200 180.0 2   0.150 0.0 3
torsion       1   31   31    1      0.000 0.0 1   0.000 180.0 2   0.112 0.0 3
torsion       2   31   31    2      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       2   31   31   31      0.000 0.0 1   0.000 180.0 2   0.132 0.0 3
torsion       5   31   31    5      0.000 0.0 1   0.000 180.0 2   0.165 0.0 3
torsion      31   31   31   31      0.000 0.0 1   0.000 180.0 2   0.112 0.0 3
torsion       5   31   56    5      0.000 0.0 1   0.000 180.0 2   0.130 0.0 3
torsion       5   31   56   56      0.000 0.0 1   0.000 180.0 2   0.130 0.0 3
torsion       1   33   33    1      0.000 0.0 1   0.000 180.0 2   0.021 0.0 3
torsion       1   37   37    1     -1.900 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2   37   37    2      0.000 0.0 1  25.000 180.0 2   0.000 0.0 3
torsion      23   37   37   23      2.400 0.0 1  22.500 180.0 2   0.000 0.0 3
torsion       2   37   40    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2   37   40   23      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1   37   43    1     -1.900 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1   37   43    7      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion       1   38   38   22     -0.100 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5   38   38    5      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       5   38   38   22      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       1   41  108    2      2.864 0.0 1  11.122 180.0 2  -2.059 0.0 3
torsion       2   41  108    2      0.000 0.0 1   2.470 180.0 2  -0.600 0.0 3
torsion      73   41  108    2      2.918 0.0 1  15.272 180.0 2  -2.192 0.0 3
torsion       1   43  109    1      2.000 0.0 1  14.000 180.0 2   2.100 0.0 3
torsion       1   43  109   23      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion      23   43  109    1      1.800 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion      23   43  109   23      1.200 0.0 1  12.500 180.0 2   0.000 0.0 3
torsion      69   43  109    1     -1.900 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion      69   43  109   23     -1.200 0.0 1  16.500 180.0 2   0.000 0.0 3
torsion       1   50   50    1     -0.300 0.0 1   4.814 180.0 2   0.000 0.0 3
torsion       1   50   50    5      0.000 0.0 1   6.104 180.0 2   0.000 0.0 3
torsion       1   50   50   50     -0.610 0.0 1   4.212 180.0 2   0.000 0.0 3
torsion       5   50   50    5      0.000 0.0 1   7.072 180.0 2   0.000 0.0 3
torsion       5   50   50    8      0.000 0.0 1   5.470 180.0 2   0.000 0.0 3
torsion       5   50   50   50      0.250 0.0 1   5.534 180.0 2  -0.550 0.0 3
torsion       8   50   50   50      0.000 0.0 1   5.470 180.0 2   0.000 0.0 3
torsion      50   50   50   50     -0.670 0.0 1   4.304 180.0 2   0.000 0.0 3
torsion       1   56   56    1      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion       1   56   56    5      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       1   56   56    6      0.000 0.0 1   0.000 180.0 2   0.128 0.0 3
torsion       1   56   56    8     -0.302 0.0 1   0.696 180.0 2   0.499 0.0 3
torsion       1   56   56   22      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion       1   56   56   56      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion       1   56   56   58      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       3   56   56    3      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       3   56   56    5      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       3   56   56   56      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion       5   56   56    5      0.000 0.0 1   0.000 180.0 2   0.238 0.0 3
torsion       5   56   56    6      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion       5   56   56    8      0.000 0.0 1   0.000 180.0 2   0.374 0.0 3
torsion       5   56   56    9      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion       5   56   56   15      0.000 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5   56   56   19      0.000 0.0 1   0.000 180.0 2   0.600 0.0 3
torsion       5   56   56   22      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion       5   56   56   31      0.000 0.0 1   0.000 180.0 2   0.110 0.0 3
torsion       5   56   56   56      0.000 0.0 1   0.000 180.0 2   0.280 0.0 3
torsion       5   56   56   57      0.000 0.0 1   0.000 180.0 2   0.420 0.0 3
torsion       5   56   56   58      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion       6   56   56   58      0.200 0.0 1  -0.200 180.0 2  -1.000 0.0 3
torsion       8   56   56   56     -0.302 0.0 1   0.696 180.0 2   0.499 0.0 3
torsion      19   56   56   56      0.000 0.0 1   0.050 180.0 2   0.650 0.0 3
torsion      22   56   56   22      0.200 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion      31   56   56   56      0.000 0.0 1   0.070 180.0 2   0.110 0.0 3
torsion      56   56   56   56      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion      56   56   56   57      0.200 0.0 1  -0.200 180.0 2   1.300 0.0 3
torsion      57   56   56   57      0.000 0.0 1   0.000 180.0 2   2.370 0.0 3
torsion       5   56   57    1      0.800 0.0 1   0.000 180.0 2   0.540 0.0 3
torsion       5   56   57    2      0.000 0.0 1   0.000 180.0 2  -0.090 0.0 3
torsion       5   56   57    5      0.000 0.0 1   0.000 180.0 2   0.580 0.0 3
torsion       5   56   57   56      0.000 0.0 1   0.000 180.0 2   0.450 0.0 3
torsion       5   56   57   57      0.000 0.0 1   0.000 180.0 2  -0.090 0.0 3
torsion      56   56   57    1      0.060 0.0 1   0.030 180.0 2   1.250 0.0 3
torsion      56   56   57    2     -0.800 0.0 1  -0.100 180.0 2  -0.550 0.0 3
torsion      56   56   57    5      0.000 0.0 1   0.000 180.0 2   0.010 0.0 3
torsion      56   56   57   56      0.600 0.0 1  -0.030 180.0 2   1.250 0.0 3
torsion      56   56   57   57     -0.700 0.0 1  -0.200 180.0 2  -0.550 0.0 3
torsion      57   56   57    5      0.000 0.0 1   0.000 180.0 2   0.800 0.0 3
torsion      57   56   57   57      0.000 0.0 1  -0.400 180.0 2   0.500 0.0 3
torsion       5   56   58    6      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5   56   58    7     -0.154 0.0 1   0.044 180.0 2   0.100 0.0 3
torsion       5   56   58    9      0.000 0.0 1   0.000 180.0 2   1.250 0.0 3
torsion       5   56   58   56      0.000 0.0 1   0.000 180.0 2   0.130 0.0 3
torsion       5   56   58   75      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       5   56   58   79     -0.210 0.0 1   3.750 180.0 2   0.300 0.0 3
torsion      56   56   58    7     -0.457 0.0 1   1.106 180.0 2   0.160 0.0 3
torsion      56   56   58   79      0.000 0.0 1   1.000 180.0 2   0.000 0.0 3
torsion       1   56   75   58      1.250 0.0 1   0.440 180.0 2   0.000 0.0 3
torsion       5   56   75   58      0.000 0.0 1   0.000 180.0 2   0.001 0.0 3
torsion       1   57   57    1     -0.300 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion       1   57   57    5      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1   57   57   56     -0.300 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1   57   57   57      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion       2   57   57    2     -0.670 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion       2   57   57    5      0.250 0.0 1   9.000 180.0 2  -0.550 0.0 3
torsion       2   57   57   56     -0.610 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion       2   57   57   57     -0.670 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion       5   57   57    5      0.000 0.0 1  11.500 180.0 2   0.000 0.0 3
torsion       5   57   57   56      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5   57   57   57      0.250 0.0 1   9.000 180.0 2  -0.550 0.0 3
torsion      22   57   57   22      0.200 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion      56   57   57   56     -0.300 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion      57   57   57   57      0.185 0.0 1   0.170 180.0 2   0.495 0.0 3
torsion      78   58   75   56     -2.660 0.0 1   7.500 180.0 2   0.200 0.0 3
torsion       1   70   71    1      2.125 0.0 1   8.393 180.0 2  -0.008 0.0 3
torsion       1   70   71    5      0.000 0.0 1  13.393 180.0 2   0.000 0.0 3
torsion      23  107  107   23      2.800 0.0 1  32.000 180.0 2   0.000 0.0 3
torsion       5  113  113    5      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       5  113  113  113      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1  114  114    1      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       1  114  114  114      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion       2  143  144    2      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion      69  143  144    2      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion       1  145  146    1      1.178 0.0 1  -4.212 180.0 2   1.537 0.0 3
torsion       1  145  146   23      0.060 0.0 1  -3.761 180.0 2   0.792 0.0 3
torsion      21  145  146    1      0.006 0.0 1  -3.909 180.0 2  -0.009 0.0 3
torsion      21  145  146   23     -6.800 0.0 1  -5.900 180.0 2   0.450 0.0 3
torsion       1  150  150    1     -0.300 0.0 1  -2.100 180.0 2   1.500 0.0 3
torsion       1  150  150   23     -0.500 0.0 1  -2.000 180.0 2   0.500 0.0 3
torsion      23  150  150   23      0.300 0.0 1  -3.500 180.0 2   0.350 0.0 3
torsion      23  150  150  150      0.025 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       1  153  159    1      1.227 0.0 1   0.432 180.0 2   1.005 0.0 3
torsion       1  153  159   21      2.011 0.0 1  -0.205 180.0 2   0.240 0.0 3
torsion       5  153  159    1      1.135 0.0 1   0.685 180.0 2   0.806 0.0 3
torsion       5  153  159   21      1.500 0.0 1   0.200 180.0 2   0.000 0.0 3
torsion       7  153  159    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion       7  153  159   21      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion     159  153  159    1      0.207 0.0 1  -0.300 180.0 2   0.974 0.0 3
torsion     159  153  159   21      0.828 0.0 1   0.112 180.0 2   0.280 0.0 3
torsion       1  154  155    1      1.889 0.0 1  -0.257 180.0 2   0.583 0.0 3
torsion       1  154  155   23     -0.220 0.0 1   0.746 180.0 2   0.266 0.0 3
torsion       5  154  155    1      0.000 0.0 1   0.000 180.0 2   0.360 0.0 3
torsion       5  154  155   23      0.000 0.0 1   0.000 180.0 2   0.360 0.0 3
torsion       7  154  155    1     -4.890 0.0 1   3.690 180.0 2   0.734 0.0 3
torsion       7  154  155   23     -2.587 0.0 1   3.618 180.0 2   0.115 0.0 3


      #####################################
      ##                                 ##
      ##  Torsional Parameters (5-Ring)  ##
      ##                                 ##
      #####################################


torsion5      1    1    1    1      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5      1    1    1    2      0.225 0.0 1   0.410 180.0 2   1.150 0.0 3
torsion5      1    1    1    3      0.000 0.0 1   0.400 180.0 2   1.620 0.0 3
torsion5      1    1    1    6      0.300 0.0 1   0.000 180.0 2   1.800 0.0 3
torsion5      1    1    1    8     -0.302 0.0 1   0.696 180.0 2   1.360 0.0 3
torsion5      1    1    1    9      0.450 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion5      1    1    1   15      0.000 0.0 1   0.200 180.0 2   2.150 0.0 3
torsion5      1    1    1   18     -1.500 0.0 1   0.320 180.0 2   0.100 0.0 3
torsion5      1    1    1   19      0.000 0.0 1   0.000 180.0 2   0.850 0.0 3
torsion5      1    1    1   22      0.450 0.0 1  -0.750 180.0 2   0.350 0.0 3
torsion5      1    1    1   29      0.400 0.0 1   1.200 180.0 2   0.500 0.0 3
torsion5      1    1    1   31      0.000 0.0 1   0.000 180.0 2   0.520 0.0 3
torsion5      1    1    1   37      0.200 0.0 1   0.600 180.0 2   0.100 0.0 3
torsion5      1    1    1   56      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5      1    1    1   57      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5      2    1    1    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5      2    1    1   19      0.000 0.0 1   0.000 180.0 2   0.167 0.0 3
torsion5      3    1    1    3      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion5      3    1    1    6      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5      6    1    1    6      1.000 0.0 1  -2.000 180.0 2   3.800 0.0 3
torsion5     15    1    1   15      1.250 0.0 1  -0.300 180.0 2   0.000 0.0 3
torsion5     22    1    1   22      0.400 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion5     37    1    1   37      0.100 0.0 1   0.200 180.0 2   0.300 0.0 3
torsion5     56    1    1   56      0.000 0.0 1   0.000 180.0 2   1.160 0.0 3
torsion5      1    1    2    1     -0.100 0.0 1   0.030 180.0 2   1.350 0.0 3
torsion5      1    1    2    2     -0.900 0.0 1  -0.900 180.0 2   0.300 0.0 3
torsion5      1    1    2   37      0.000 0.0 1   0.000 180.0 2  -0.250 0.0 3
torsion5      2    1    2    1      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5      2    1    2    2      0.250 0.0 1  -0.400 180.0 2  -0.500 0.0 3
torsion5      2    1    2   37      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5      9    1    2    6     -0.100 0.0 1   0.990 180.0 2  -0.800 0.0 3
torsion5     19    1    2    2      0.000 0.0 1   0.000 180.0 2   0.350 0.0 3
torsion5     37    1    2    2      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion5     37    1    2   37      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5      1    1    3    1      0.606 0.0 1   0.292 180.0 2   1.220 0.0 3
torsion5      1    1    3    6      1.050 0.0 1   1.106 180.0 2   0.000 0.0 3
torsion5      1    1    3   75      1.050 0.0 1   1.106 180.0 2   0.000 0.0 3
torsion5      1    1    3  148      0.550 0.0 1   1.550 180.0 2   0.100 0.0 3
torsion5      1    1    6    1      0.250 0.0 1   0.050 180.0 2   0.657 0.0 3
torsion5      1    1    6    3      1.050 0.0 1   0.440 180.0 2   0.000 0.0 3
torsion5      1    1    6    6      0.000 0.0 1   0.000 180.0 2   0.155 0.0 3
torsion5      1    1    6   56      0.000 0.0 1   5.100 180.0 2   0.000 0.0 3
torsion5      6    1    6    1      0.250 0.0 1  -2.000 180.0 2   1.720 0.0 3
torsion5      6    1    6    2      1.250 0.0 1  -3.000 180.0 2   0.850 0.0 3
torsion5      6    1    6    6     -0.450 0.0 1   0.000 180.0 2   1.500 0.0 3
torsion5      1    1    8    1      0.958 0.0 1  -0.155 180.0 2   1.360 0.0 3
torsion5      1    1    9    1      0.000 0.0 1   0.000 180.0 2   1.300 0.0 3
torsion5      1    1    9   56      0.000 0.0 1   9.480 180.0 2  -9.000 0.0 3
torsion5      2    1    9   56      0.000 0.0 1  10.800 180.0 2  -0.690 0.0 3
torsion5      1    1   15    1     -0.440 0.0 1  -0.260 180.0 2   1.450 0.0 3
torsion5      1    1   15   15      0.000 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion5     15    1   15    1      0.000 0.0 1  -0.900 180.0 2   0.300 0.0 3
torsion5     15    1   15   15      0.000 0.0 1   0.000 180.0 2   0.267 0.0 3
torsion5      1    1   18    1     -0.870 0.0 1  -0.580 180.0 2   0.890 0.0 3
torsion5      1    1   19    1      0.000 0.0 1   0.800 180.0 2   0.000 0.0 3
torsion5      1    1   19    2     -0.500 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5      2    1   19    1      0.000 0.0 1   0.000 180.0 2   0.250 0.0 3
torsion5      1    1   22   22      0.050 0.0 1  -0.200 180.0 2   1.000 0.0 3
torsion5     22    1   22   22      0.700 0.0 1   0.400 180.0 2   0.700 0.0 3
torsion5      1    1   29    1      0.600 0.0 1   3.500 180.0 2   1.200 0.0 3
torsion5      1    1   31    1     -0.200 0.0 1   0.000 180.0 2   0.100 0.0 3
torsion5      1    1   37    2      0.000 0.0 1   0.000 180.0 2   1.000 0.0 3
torsion5      1    1   37   37     -0.400 0.0 1   0.240 180.0 2   0.060 0.0 3
torsion5      2    1   37    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5     37    1   37    2      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5     41    1   41    2      0.000 0.0 1   0.000 180.0 2   0.400 0.0 3
torsion5      1    1   56    1      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5      1    1   56    9      0.000 0.0 1   1.000 180.0 2   0.300 0.0 3
torsion5      1    1   56   15      0.000 0.0 1   0.000 180.0 2   1.160 0.0 3
torsion5      1    1   56   56      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5     56    1   56    1      0.000 0.0 1   0.000 180.0 2   1.160 0.0 3
torsion5      1    1   57   57      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5      1    1   75    3      1.050 0.0 1   0.440 180.0 2   0.000 0.0 3
torsion5      1    2    2    1      0.550 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      1    2    2    2     -0.100 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion5      1    2    2   19     -0.500 0.0 1   6.450 180.0 2   0.000 0.0 3
torsion5      1    2    2   37      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion5      1    2    2   40      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion5      2    2    2    2     -0.990 0.0 1   7.800 180.0 2   0.000 0.0 3
torsion5      2    2    2   37      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion5      2    2    2   40      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion5      2    2    2   41      0.350 0.0 1  11.500 180.0 2   0.000 0.0 3
torsion5      2    2    2   42      0.000 0.0 1  23.630 180.0 2   6.000 0.0 3
torsion5      6    2    2    6     -2.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion5     37    2    2   37      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5     37    2    2   40     -0.300 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion5     37    2    2   41      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5     37    2    2   42      0.000 0.0 1   6.500 180.0 2   0.000 0.0 3
torsion5     40    2    2   40      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion5     41    2    2   41      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2    2    3  149      0.000 0.0 1  16.250 180.0 2   0.000 0.0 3
torsion5      1    2    6   56      0.000 0.0 1   3.300 180.0 2  -4.000 0.0 3
torsion5      2    2    6    1      3.530 0.0 1   2.300 180.0 2  -3.530 0.0 3
torsion5      2    2   19    1     -0.500 0.0 1   1.750 180.0 2   0.000 0.0 3
torsion5      1    2   37    1      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      1    2   37    2      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion5      1    2   37   23      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2    2   37    1      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion5      2    2   37    2      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
torsion5      2    2   37   23      0.750 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2    2   37   37      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2    2   37   40      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2    2   37   41      0.000 0.0 1  16.000 180.0 2   0.000 0.0 3
torsion5      2    2   37   42      0.000 0.0 1  18.000 180.0 2   0.000 0.0 3
torsion5     37    2   37    1      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5     37    2   37    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5     37    2   37   37      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5     37    2   37   40      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5     37    2   37   42      0.000 0.0 1  20.000 180.0 2   0.000 0.0 3
torsion5     40    2   37    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5     41    2   37    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5     41    2   37   37      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5     42    2   37    2      0.000 0.0 1  27.000 180.0 2   0.000 0.0 3
torsion5     42    2   37   37      0.000 0.0 1  18.000 180.0 2   0.000 0.0 3
torsion5      2    2   40    2      0.000 0.0 1  14.000 180.0 2   0.000 0.0 3
torsion5      2    2   40   37      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion5     37    2   40    2      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion5     37    2   40   37      0.000 0.0 1  15.000 180.0 2   0.000 0.0 3
torsion5      2    2   41    2      0.450 0.0 1  13.500 180.0 2  -0.700 0.0 3
torsion5      2    2   41   37      0.000 0.0 1  16.000 180.0 2   0.000 0.0 3
torsion5     37    2   41    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2    2   42    2      0.000 0.0 1  29.500 180.0 2   0.000 0.0 3
torsion5      2    2   42   37      0.000 0.0 1  25.000 180.0 2   0.000 0.0 3
torsion5     37    2   42    2      0.000 0.0 1  29.500 180.0 2   0.000 0.0 3
torsion5     37    2   42   37      0.000 0.0 1  28.000 180.0 2   0.000 0.0 3
torsion5      1    3    6    1      1.550 0.0 1   6.000 180.0 2   0.000 0.0 3
torsion5      1    3    6    3      1.950 0.0 1   0.440 180.0 2   0.000 0.0 3
torsion5     22    3   22   22      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5      1    3   75    1      1.550 0.0 1   6.000 180.0 2   0.000 0.0 3
torsion5      1    3  148    3      2.300 0.0 1   3.500 180.0 2  -0.900 0.0 3
torsion5      2    3  149    3      0.000 0.0 1   2.470 180.0 2  -0.600 0.0 3
torsion5      1    6    6    1      1.010 0.0 1  -1.350 180.0 2   1.045 0.0 3
torsion5      1    6   56    9      0.000 0.0 1   2.800 180.0 2   0.000 0.0 3
torsion5      2    6   56    9     -0.100 0.0 1   7.100 180.0 2  -0.600 0.0 3
torsion5      1    9   56    1     -0.500 0.0 1  -2.500 180.0 2   3.300 0.0 3
torsion5      1    9   56    6      9.770 0.0 1  -5.000 180.0 2   9.100 0.0 3
torsion5      1   15   15    1      0.000 0.0 1  -7.000 180.0 2   0.467 0.0 3
torsion5     56   15   56    1      0.000 0.0 1   0.000 180.0 2   1.160 0.0 3
torsion5     19   19   19   19      0.000 0.0 1   0.000 180.0 2   0.175 0.0 3
torsion5      1   22   22    1      0.200 0.0 1   0.270 180.0 2   0.500 0.0 3
torsion5      1   22   22   22      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion5      3   22   22   22      0.000 0.0 1   0.000 180.0 2   0.000 0.0 3
torsion5     22   22   22   22     -0.500 0.0 1   2.800 180.0 2   2.200 0.0 3
torsion5     22   22   22   56      0.200 0.0 1   0.270 180.0 2   0.093 0.0 3
torsion5     22   22   56   56      0.300 0.0 1   0.000 180.0 2   0.450 0.0 3
torsion5      1   37   37    1     -1.900 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2   37   37    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2   37   37   42      0.000 0.0 1  25.000 180.0 2   0.000 0.0 3
torsion5      2   37   40    2      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2   37   41    2      0.000 0.0 1  16.000 180.0 2   0.000 0.0 3
torsion5      2   37   41   37      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5      2   37   42    2      0.000 0.0 1  23.000 180.0 2   0.000 0.0 3
torsion5      2   37   42   37      0.000 0.0 1  25.000 180.0 2   0.000 0.0 3
torsion5     37   37   42    2      0.000 0.0 1  25.000 180.0 2   0.000 0.0 3
torsion5      1   56   56    1      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5      1   56   56   56      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5     56   56   56   56      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5      1   57   57    1      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5      1   57   57   57      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5     57   57   57   57      0.185 0.0 1   0.170 180.0 2   1.160 0.0 3
torsion5    113  113  113  113      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion5    114  114  114  114      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3


      #####################################
      ##                                 ##
      ##  Torsional Parameters (4-Ring)  ##
      ##                                 ##
      #####################################


torsion4      3    1    1    9      0.000 0.0 1   0.000 180.0 2   0.250 0.0 3
torsion4      1    1    3    9      0.000 0.0 1   0.000 180.0 2   0.250 0.0 3
torsion4      1    1    9    3      0.000 0.0 1   0.000 180.0 2   0.250 0.0 3
torsion4      1    3    9    1      0.000 0.0 1   0.000 180.0 2   0.250 0.0 3
torsion4     56    6   56   56      0.000 0.0 1   0.000 180.0 2   1.830 0.0 3
torsion4     56    8   56   56      0.000 0.0 1   0.000 180.0 2   3.100 0.0 3
torsion4     58    9   56   56     -1.100 0.0 1  -0.800 180.0 2   0.000 0.0 3
torsion4     56    9   58   56      1.100 0.0 1   3.800 180.0 2   0.000 0.0 3
torsion4     56   15   56   56      0.000 0.0 1   0.000 180.0 2   1.150 0.0 3
torsion4     56   19   56   56      0.000 0.0 1   0.000 180.0 2   0.950 0.0 3
torsion4     22   22   22   22      5.220 0.0 1  -0.450 180.0 2  -1.200 0.0 3
torsion4     22   22   22   56      0.200 0.0 1   0.270 180.0 2   1.533 0.0 3
torsion4     22   22   22   58      0.200 0.0 1   0.270 180.0 2   1.533 0.0 3
torsion4     56   22   22   56      0.200 0.0 1   0.270 180.0 2   1.533 0.0 3
torsion4     22   22   56   56      0.200 0.0 1   0.270 180.0 2   1.533 0.0 3
torsion4     22   22   58   22      0.550 0.0 1  -0.180 180.0 2   0.400 0.0 3
torsion4     56   31   56   56      0.000 0.0 1   0.000 180.0 2   0.152 0.0 3
torsion4     56   37   37   56     -1.900 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion4     56   37   43   56     -1.900 0.0 1  10.000 180.0 2   0.000 0.0 3
torsion4     37   37   56   56      0.000 0.0 1   0.000 180.0 2   0.060 0.0 3
torsion4     43   37   56   56      0.000 0.0 1   0.000 180.0 2   0.060 0.0 3
torsion4     56   39   56   56     -0.200 0.0 1   0.730 180.0 2   2.500 0.0 3
torsion4      6   56   56   56      0.000 0.0 1   0.000 180.0 2   1.830 0.0 3
torsion4      8   56   56   56      0.000 0.0 1   0.000 180.0 2   3.100 0.0 3
torsion4      9   56   56   58      0.000 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion4     15   56   56   56      0.000 0.0 1   0.000 180.0 2   1.150 0.0 3
torsion4     19   56   56   56      0.000 0.0 1   0.000 180.0 2   1.300 0.0 3
torsion4     22   56   56   22      0.200 0.0 1   0.270 180.0 2   1.533 0.0 3
torsion4     31   56   56   56      0.000 0.0 1   0.000 180.0 2  -0.065 0.0 3
torsion4     37   56   56   37      0.000 0.0 1   0.000 180.0 2   1.533 0.0 3
torsion4     37   56   56   43      0.000 0.0 1   0.000 180.0 2   1.533 0.0 3
torsion4     39   56   56   56      0.100 0.0 1   0.400 180.0 2   2.500 0.0 3
torsion4     56   56   56   56      0.000 0.0 1   0.000 180.0 2   2.300 0.0 3
torsion4     56   56   56   57      0.000 0.0 1   0.000 180.0 2   1.900 0.0 3
torsion4     56   56   56   58      0.000 0.0 1   0.000 180.0 2   1.300 0.0 3
torsion4     57   56   56   57      0.000 0.0 1   0.000 180.0 2   0.200 0.0 3
torsion4     58   56   56   75      0.200 0.0 1   0.000 180.0 2   0.180 0.0 3
torsion4     56   56   57   56      0.000 0.0 1   0.000 180.0 2   1.900 0.0 3
torsion4     56   56   57   57      0.000 0.0 1   0.000 180.0 2  -0.700 0.0 3
torsion4     57   56   57   56      0.000 0.0 1   0.000 180.0 2   0.300 0.0 3
torsion4     57   56   57   57      0.000 0.0 1   0.000 180.0 2   0.600 0.0 3
torsion4     56   56   58    9      0.300 0.0 1  -0.400 180.0 2   0.000 0.0 3
torsion4     56   56   58   56      0.000 0.0 1   0.000 180.0 2   0.500 0.0 3
torsion4     56   56   58   75      1.200 0.0 1   0.400 180.0 2   0.000 0.0 3
torsion4     56   56   75   58      0.200 0.0 1   0.400 180.0 2   0.000 0.0 3
torsion4     56   57   57   56     -0.480 0.0 1   8.000 180.0 2   0.000 0.0 3
torsion4     57   57   57   57     -1.000 0.0 1   7.000 180.0 2   0.000 0.0 3
torsion4     56   58   75   56     -1.770 0.0 1   6.000 180.0 2   0.000 0.0 3


      ##########################################
      ##                                      ##
      ##  Torsional Parameters (Allenes-Odd)  ##
      ##                                      ##
      ##########################################


#torsion      1    2    2    1      0.000 0.0 1 -10.000 180.0 2   0.000 0.0 3
#torsion      1    2    2    5      0.000 0.0 1 -12.000 180.0 2   0.000 0.0 3
#torsion      5    2    2    5      0.000 0.0 1 -12.000 180.0 2   0.000 0.0 3


      ###########################################
      ##                                       ##
      ##  Torsional Parameters (Allenes-Even)  ##
      ##                                       ##
      ###########################################


#torsion      1    2    2    1      0.000 0.0 1  10.000 180.0 2   0.000 0.0 3
#torsion      1    2    2    5      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3
#torsion      5    2    2    5      0.000 0.0 1  12.000 180.0 2   0.000 0.0 3


      ##################################
      ##                              ##
      ##  Stretch-Torsion Parameters  ##
      ##                              ##
      ##################################


strtors       0    1    2    0       0.0 0.0 0.0  0.000  0.000  0.270 0.0 0.0 0.0
strtors       0    1    3    0       0.0 0.0 0.0  0.000  0.000  0.100 0.0 0.0 0.0
strtors       0    1    6    0       0.0 0.0 0.0  0.000  0.000  0.100 0.0 0.0 0.0
strtors       0    1    8    0       0.0 0.0 0.0  0.000  0.000  0.061 0.0 0.0 0.0
strtors       0    1   15    0       0.0 0.0 0.0  0.000  0.000  0.170 0.0 0.0 0.0
strtors       0    1   19    0       0.0 0.0 0.0  0.000  0.000  0.036 0.0 0.0 0.0
strtors       0    1   25    0       0.0 0.0 0.0  0.000  0.000  0.104 0.0 0.0 0.0
strtors       0    1   56    0       0.0 0.0 0.0  0.000  0.000  0.059 0.0 0.0 0.0
strtors       0    1   57    0       0.0 0.0 0.0  0.000  0.000  0.270 0.0 0.0 0.0
strtors       0    1  150    0       0.0 0.0 0.0  0.000  0.000  0.050 0.0 0.0 0.0
strtors       0    2   19    0       0.0 0.0 0.0  0.000  0.000  0.087 0.0 0.0 0.0
strtors       0    6    6    0       0.0 0.0 0.0  0.000  0.000  0.220 0.0 0.0 0.0
strtors       0    6    8    0       0.0 0.0 0.0  0.000  0.000  0.053 0.0 0.0 0.0
strtors       0    6   22    0       0.0 0.0 0.0  0.000  0.000  0.053 0.0 0.0 0.0
strtors       0    6   56    0       0.0 0.0 0.0  0.000  0.000  0.140 0.0 0.0 0.0
strtors       0    6  153    0       0.0 0.0 0.0  0.000  0.000  0.500 0.0 0.0 0.0
strtors       0    8   22    0       0.0 0.0 0.0  0.000  0.000  0.053 0.0 0.0 0.0
strtors       0    8   56    0       0.0 0.0 0.0  0.000  0.000  0.061 0.0 0.0 0.0
strtors       0   15   15    0       0.0 0.0 0.0  0.000  0.000  0.220 0.0 0.0 0.0
strtors       0   19   19    0       0.0 0.0 0.0  0.000  0.000  0.012 0.0 0.0 0.0
strtors       0   19   22    0       0.0 0.0 0.0  0.000  0.000  0.036 0.0 0.0 0.0
strtors       0   19   36    0       0.0 0.0 0.0  0.000  0.000  0.012 0.0 0.0 0.0
strtors       0   22   22    0       0.0 0.0 0.0  0.000  0.000  0.053 0.0 0.0 0.0
strtors       0   56   56    0       0.0 0.0 0.0  0.000  0.000  0.059 0.0 0.0 0.0
strtors       0  145  146    0       0.0 0.0 0.0  0.000  0.000  0.600 0.0 0.0 0.0
strtors       0  150  150    0       0.0 0.0 0.0 -0.050 -2.700 -0.150 0.0 0.0 0.0
strtors       0  153  159    0       0.0 0.0 0.0 -0.050 -2.700  0.400 0.0 0.0 0.0


      ########################################
      ##                                    ##
      ##  Atomic Partial Charge Parameters  ##
      ##                                    ##
      ########################################


charge       16               1.0000
charge       30               1.0000
charge       39               1.0000
charge       47              -0.5000
charge       70               1.0000
charge      110               1.0000
charge      111               1.0000


      #####################################
      ##                                 ##
      ##  Bond Dipole Moment Parameters  ##
      ##                                 ##
      #####################################


dipole        1    2          0.9000      0.500
dipole        1    3          1.0100      0.500
dipole        1    4          1.6400      0.500
dipole        1    6          1.1700      0.500
dipole        1    8          0.6800      0.500
dipole        1    9          1.6500      0.500
dipole        1   11          1.8200      0.500
dipole        1   12          2.0900      0.500
dipole        1   13          1.7900      0.500
dipole        1   14          1.7400      0.500
dipole        1   15          1.2000      0.500
dipole        1   16          1.2000      0.500
dipole        1   17          0.6000      0.500
dipole        1   18          1.2000      0.500
dipole        1   19         -0.7000      0.500
dipole        1   22          0.1500      0.500
dipole        1   25          0.9500      0.500
dipole        1   26         -0.6000      0.500
dipole        1   31         -0.6350      0.500
dipole        1   32         -0.6000      0.500
dipole        1   33         -0.5000      0.500
dipole        1   34         -1.1000      0.500
dipole        1   35         -1.0000      0.500
dipole        1   37          1.4000      0.500
dipole        1   38          0.3000      0.500
dipole        1   39          3.3350      0.500
dipole        1   40          1.6400      0.500
dipole        1   41          1.5000      0.500
dipole        1   43          1.3000      0.500
dipole        1   46          1.3300      0.500
dipole        1   50          0.9000      0.500
dipole        1   57          0.9000      0.500
dipole        1   70          1.6200      0.500
dipole        1   71         -1.4000      0.500
dipole        1   72          1.4000      0.500
dipole        1   75          1.7700      0.500
dipole        1  109          1.9000      0.500
dipole        1  110          1.3570      0.500
dipole        1  111          1.2900      0.500
dipole        1  145          1.9000      0.500
dipole        1  146          2.0300      0.500
dipole        1  150          1.0000      0.500
dipole        1  153          0.6700      0.500
dipole        1  154          1.1189      0.500
dipole        1  155         -0.1757      0.500
dipole        2    3          0.5000      0.500
dipole        2    4          0.3000      0.500
dipole        2    5         -0.6000      0.500
dipole        2    6          0.0010      0.500
dipole        2    8         -0.6300      0.500
dipole        2    9          1.3000      0.500
dipole        2   11          0.9000      0.500
dipole        2   12          0.7200      0.500
dipole        2   13          1.5600      0.500
dipole        2   14          1.4000      0.500
dipole        2   18          0.9000      0.500
dipole        2   19         -1.2000      0.500
dipole        2   22         -0.1500      0.500
dipole        2   25          1.0400      0.500
dipole        2   26         -0.6000      0.500
dipole        2   31         -1.1200      0.500
dipole        2   36         -0.6000      0.500
dipole        2   37          1.2900      0.500
dipole        2   39          0.5830      0.500
dipole        2   40          0.8700      0.500
dipole        2   41          0.5500      0.500
dipole        2   42          0.9000      0.500
dipole        2   43          1.8000      0.500
dipole        2   46          0.9000      0.500
dipole        2   72          1.3000      0.500
dipole        2  106          0.3000      0.500
dipole        2  108          0.8260      0.500
dipole        2  110          2.3100      0.500
dipole        2  111          1.0000      0.500
dipole        2  143          2.8000      0.500
dipole        2  144          1.2900      0.500
dipole        3    5         -0.6000      0.500
dipole        3    6          0.1200      0.500
dipole        3    7          1.8600      0.500
dipole        3    9         -0.7200      0.500
dipole        3   11          1.4800      0.500
dipole        3   12          1.5800      0.500
dipole        3   13          1.5600      0.500
dipole        3   14          1.4000      0.500
dipole        3   22          0.3000      0.500
dipole        3   36         -0.6000      0.500
dipole        3   47          1.8600      0.500
dipole        3   56         -1.0100      0.500
dipole        3   57          0.5000      0.500
dipole        3   75          0.1200      0.500
dipole        3   76          1.2750      0.500
dipole        3   77          1.8600      0.500
dipole        3   78          1.8600      0.500
dipole        3   80          1.8600      0.500
dipole        3   81          1.0750      0.500
dipole        3   82          1.5000      0.500
dipole        3  101          1.0750      0.500
dipole        3  102          1.5000      0.500
dipole        3  120          0.8000      0.500
dipole        3  148          0.4000      0.500
dipole        4   10          2.5000      0.500
dipole        4   57          0.3000      0.500
dipole        4  124         -0.9200      0.500
dipole        5   17          0.4000      0.500
dipole        5   25          0.5200      0.500
dipole        5   34          0.7000      0.500
dipole        5   35          0.8000      0.500
dipole        5   50          0.6000      0.500
dipole        5   57          0.6000      0.500
dipole        5   71          0.9600      0.500
dipole        5  153          0.2200      0.500
dipole        6   19         -0.3800      0.500
dipole        6   21         -1.6700      0.500
dipole        6   24         -1.0100      0.500
dipole        6   25          0.9700      0.500
dipole        6   26         -1.5000      0.500
dipole        6   56         -1.1700      0.500
dipole        6   57          0.0010      0.500
dipole        6   73         -0.7000      0.500
dipole        6  153         -1.6500      0.500
dipole        7   17         -3.5500      0.500
dipole        7   18         -2.9300      0.500
dipole        7   43         -2.6000      0.500
dipole        7   46         -2.5300      0.500
dipole        7   58         -1.8600      0.500
dipole        7   67         -1.8600      0.500
dipole        7  106         -0.6500      0.500
dipole        7  153         -3.4000      0.500
dipole        7  154         -2.9589      0.500
dipole        8   23         -1.3400      0.500
dipole        8   50          0.6300      0.500
dipole        8   56         -0.6800      0.500
dipole        9   18          0.8000      0.500
dipole        9   28         -1.5800      0.500
dipole        9   30         -0.7200      0.500
dipole       15   44         -0.9000      0.500
dipole       19   22          0.8900      0.500
dipole       19   56          0.8500      0.500
dipole       21  145          1.7000      0.500
dipole       22   31         -0.5000      0.500
dipole       22   46          1.7000      0.500
dipole       22   56          0.1500      0.500
dipole       23   37          1.2000      0.500
dipole       23   40          1.4600      0.500
dipole       23   43          1.2000      0.500
dipole       23   72          1.4000      0.500
dipole       23  107          1.2000      0.500
dipole       23  109          1.2000      0.500
dipole       23  110          0.8680      0.500
dipole       23  111          0.2000      0.500
dipole       23  146          1.6900      0.500
dipole       23  150          1.2800      0.500
dipole       23  155          1.4571      0.500
dipole       24   75          1.3100      0.500
dipole       31   56          0.6350      0.500
dipole       37   40          0.3000      0.500
dipole       39   40          0.3000      0.500
dipole       39   48         -1.3000      0.500
dipole       39   69          3.1000      0.500
dipole       41   73         -1.4000      0.500
dipole       41  108         -0.5000      0.500
dipole       42   44         -0.1500      0.500
dipole       43   69          2.8000      0.500
dipole       58   78          1.8600      0.500
dipole       58   79          1.4100      0.500
dipole       69  143         -4.8000      0.500
dipole       70   71         -2.9200      0.500
dipole      145  146         -0.2800      0.500
dipole      154  155         -1.7153      0.500
dipole        1  159          1.7500      0.500
dipole       21  159          1.5700      0.500
dipole      153  159          0.5800      0.500


      ##############################################
      ##                                          ##
      ##  Bond Dipole Moment Parameters (5-Ring)  ##
      ##                                          ##
      ##############################################


dipole5       1    2          0.7500      0.500
dipole5       1    3          1.1800      0.500
dipole5       1    6          1.1700      0.500
dipole5       1    8          0.6800      0.500
dipole5       1    9          1.6500      0.500
dipole5       1   15          1.2000      0.500
dipole5       1   18          1.3700      0.500
dipole5       1   19         -0.5500      0.500
dipole5       1   22          0.1500      0.500
dipole5       1   31         -0.4950      0.500
dipole5       1   37          1.2600      0.500
dipole5       1   40          1.6400      0.500
dipole5       1   57          0.7500      0.500
dipole5       1   75          1.4700      0.500
dipole5       2    3          0.5000      0.500
dipole5       2    6          0.0010      0.500
dipole5       2   18          0.9000      0.500
dipole5       2   37          1.1500      0.500
dipole5       2   40          0.5000      0.500
dipole5       2   41          0.8550      0.500
dipole5       2   42          0.9000      0.500
dipole5       3    6         -0.1200      0.500
dipole5       3    9         -0.7200      0.500
dipole5       3   75         -0.1200      0.500
dipole5       3  148          0.4000      0.500
dipole5       3  149          0.4000      0.500
dipole5       6   56         -1.1700      0.500
dipole5      37   40         -0.5000      0.500
dipole5      37   41          0.4000      0.500
dipole5      37   42         -0.4900      0.500


      ##############################################
      ##                                          ##
      ##  Bond Dipole Moment Parameters (4-Ring)  ##
      ##                                          ##
      ##############################################


dipole4       6   56         -1.1700      0.500
dipole4       6   58         -0.1200      0.500
dipole4       8   56         -0.6800      0.500
dipole4       9   56         -1.6500      0.500
dipole4       9   58          0.7600      0.500
dipole4      15   56         -1.2000      0.500
dipole4      19   56          0.3000      0.500
dipole4      22   56         -0.1500      0.500
dipole4      56   57          0.6000      0.500
dipole4      56   58          0.7500      0.500
dipole4      56   75          1.8700      0.500
dipole4      57   58         -0.5000      0.500
dipole4      58   75         -0.1200      0.500


      ##############################################
      ##                                          ##
      ##  Bond Dipole Moment Parameters (3-Ring)  ##
      ##                                          ##
      ##############################################


dipole3      19   22         -0.8900      0.500
dipole3      22   49          0.7350      0.500
dipole3      22   67          0.5300      0.500


      ###########################################
      ##                                       ##
      ##  Conjugated Pisystem Atom Parameters  ##
      ##                                       ##
      ###########################################


piatom        2                  1.0    -11.160     11.134
piatom        3                  1.0    -11.160     11.134
piatom        4                  1.0    -11.160     11.134
piatom        6                  2.0    -14.533     19.342
piatom        7                  1.0    -16.646     14.520
piatom       10                  1.0    -13.645     12.340
piatom       37                  1.0    -13.645     12.340
piatom       40                  2.0    -11.556     17.210
piatom       41                  2.0    -14.533     19.342
piatom       42                  2.0    -14.990     10.900
piatom       57                  1.0    -11.160     11.134
piatom       69                  2.0     -2.601     14.520
piatom      108                  1.0    -28.239     17.270
piatom      111                  1.0    -28.239     17.270
piatom      143                  1.0    -28.239     17.270
piatom      144                  1.0    -13.645     12.340
piatom      149                  2.0    -14.533     19.342
piatom      151                  2.0    -11.556     17.210
piatom      160                  1.0    -11.160     11.134
piatom      161                  1.0    -11.160     11.134
piatom      162                  1.0    -11.160     11.134


      ###########################################
      ##                                       ##
      ##  Conjugated Pisystem Bond Parameters  ##
      ##                                       ##
      ###########################################


pibond        2    2           2.820     0.1700
pibond        2    3           4.600     0.1660
pibond        2    4           7.790     0.1560
pibond        2   37           8.000     0.1850
pibond        2   39          10.880     0.1960
pibond        2   40          10.880     0.1960
pibond        2   41           8.200     0.1720
pibond        2   42           4.861     0.2980
pibond        2   43           1.100     0.3350
pibond        2   57           2.820     0.1740
pibond        2  111           3.500     0.2166
pibond        2  143           2.300     0.8760
pibond        2  144           2.300     0.2280
pibond        3    3           8.000     0.3500
pibond        3    4           4.600     0.1660
pibond        3    7           6.350     0.3000
pibond        3   57           4.600     0.1660
pibond        3   76           5.000     0.3000
pibond        3   77           6.350     0.3000
pibond        3   78           6.350     0.3000
pibond        3   80           6.350     0.3000
pibond        3   81           6.350     0.3000
pibond        3  101           5.000     0.3000
pibond        3  120           5.000     0.3000
pibond        4    4           4.600     0.2380
pibond        4   57           7.790     0.1560
pibond        7  153           6.000     0.1050
pibond       37   37           7.650     0.2200
pibond       37   40          10.880     0.1960
pibond       39   39          10.500     0.1700
pibond       39   40          10.880     0.1960
pibond       57   57           2.820     0.1700
pibond       69  143           8.300     0.0280
pibond      143  144           6.000     0.0240


      ####################################################
      ##                                                ##
      ##  Conjugated Pisystem Bond Parameters (5-Ring)  ##
      ##                                                ##
      ####################################################


pibond5       2    2           4.020     0.1690
pibond5       2    3           4.600     0.1660
pibond5       2   37           8.250     0.2380
pibond5       2   40           6.300     0.1960
pibond5       2   41           8.200     0.1620
pibond5       2   42           4.861     0.2000
pibond5       3    3           4.600     0.1660
pibond5       3   57           4.600     0.1660
pibond5      37   37           9.100     0.2800
pibond5      37   40           8.000     0.1960
pibond5      37   41           5.120     0.1700
pibond5      37   42           4.861     0.3970
pibond5      57   57           2.820     0.1700


      ####################################################
      ##                                                ##
      ##  Conjugated Pisystem Bond Parameters (4-Ring)  ##
      ##                                                ##
      ####################################################


pibond4      57   57           2.840     0.3900
pibond4      57   58           4.600     0.1660
pibond4      58   58           4.600     0.1660

"""
}

/*
 Ab Initio Calculations of Cyclosilanes
 Thanks Jay Ponder!
 
 -C-C-C-C-Si- Ring
 C            0.374173574134    -0.038215551663     0.029145704021
 C            0.042208845189     0.048173538152     1.534234181840
 C            1.361498934513    -0.018980953310     2.315643962314
 C            2.312087681507     1.052449628780     1.739994005084
 Si           1.963073497412     0.983260933736    -0.121194257135
 H           -0.450970884385     0.305930079906    -0.599725255994
 H            0.578396582086    -1.080456385801    -0.241414542186
 H           -0.650101611915    -0.740842053665     1.846013871606
 H           -0.442582735493     1.009311463738     1.748675237095
 H            1.801521737141    -1.014502527347     2.173832182598
 H            1.199157166904     0.113634248537     3.390401627570
 H            3.354868454340     0.875450216430     2.015780146801
 H            2.033349111174     2.037454902073     2.131459294476
 H            3.023113895097     0.298365207660    -0.894804602536
 H            1.750548752298     2.319091252776    -0.722552555554
 
 -C-C-Si-C-Si- Ring
 C            0.436559989542    -0.021509834557    -0.070008725009
 C           -0.175030171743     0.040664578954     1.352031202458
 Si           1.270072281487    -0.070457393573     2.567966751376
 C            2.592470798994     0.941963695435     1.674120078942
 Si           1.923771464832     1.149968957044    -0.082753592247
 H           -0.301082787522     0.215712235450    -0.843118691980
 H            0.790877052560    -1.040136410532    -0.273958643718
 H           -0.928542417136    -0.737929543456     1.507145436186
 H           -0.681533994528     1.003948511432     1.494778642656
 H            1.705503094093    -1.480021075740     2.699020954727
 H            0.939801326509     0.446486514825     3.914300446718
 H            3.559494280506     0.431547810184     1.681437207276
 H            2.737610891177     1.914388357462     2.153497345019
 H            2.912045637587     0.812839717055    -1.130868413736
 H            1.468325553642     2.542657880016    -0.298100998669
 */
