

 Autodesk (R) Simulation Static Stress with Linear Material Models
 Version 2016.00.00.3017-W64/X64 09-Mar-2015
 Copyright (c) 2015, Autodesk, Inc. All rights reserved. 

------------------------------------------------- 
                          DATE: JULY 2, 2015                  
                          TIME: 00:18 AM
                   INPUT MODEL: C:\Users\Kyle\Documents\Project documentation\Combat Robot\CAD\V1.0\Armor_Front.ds_data\1\ds

                    PROGRAM VERSION: 201600003017
            alg-win-x64.dll VERSION: 201600003017
       agsdb_ar-win-x64.dll VERSION: 201600003017
      algconfig-win-x64.dll VERSION: 201600003017
 solvercallback-win-x64.dll VERSION: 201600003017
               amgsolve.exe VERSION:    360000000
 
------------------------------------------------- 

 **** Model Unit System Settings:
      --------------------------------------------
       Unit System              : English (in)
       Force                    : lbf
       Length                   : in
       Time                     : s
       Temperature (Absolute)   : deg F (R)
       Thermal Energy           : in*lbf
       Voltage                  : V
       Current                  : A
       Electrical Resistance    : ohm
       Mass                     : lbf*s^2/in
      --------------------------------------------

                                                  
1**** CONTROL INFORMATION                         
                                                  
      number of node points          (NUMNP)   =          2880
      number of element types        (NELTYP)  =             5
      number of load cases           (LL)      =             1
      number of frequencies          (NF)      =             0
      analysis type code             (NDYN)    =             0
      equations per block            (KEQB)    =             0
      bandwidth minimization flag    (MINBND)  =            -1
      gravitational constant         (GRAV)    =    3.8640E+02
      number of equations            (NEQ)     =          8064

 **** PRINT OF NODAL DATA SUPPRESSED              
 **** PRINT OF EQUATION NUMBERS SUPPRESSED        
 **** Hard disk file size information for processor:

      Available hard disk space on current drive = 626747.938 megabytes
      Gravity direction vector =  0.0000E+00  0.0000E+00 -1.0000E+00
                                                  
1**** NODAL LOADS (STATIC) OR MASSES (DYNAMIC)    
                                                  
   NODE  LOAD     X-AXIS     Y-AXIS     Z-AXIS     X-AXIS     Y-AXIS     Z-AXIS
  NUMBER CASE      FORCE      FORCE      FORCE     MOMENT     MOMENT     MOMENT
                                                  
    2380    1  0.000E+00  0.000E+00 -5.000E+00  0.000E+00  0.000E+00  0.000E+00
                                                  
1**** ELEMENT LOAD MULTIPLIERS                    
                                                  
       load case     Pressure   Gravity  Displacement  Thermal  Electrical
      ---------    ---------- ---------- ---------- ---------- ----------      
                                                  
          1         1.000E+00  0.000E+00  1.000E+00  0.000E+00  0.000E+00
  
      Centrifugal force / angular acceleration    
  
      load case     rot.rate   ang.acc.           
      ---------    ---------- ----------          
  
          1         0.000E+00  0.000E+00
  

 **** Symbolic Assembly Using the Row-Hits Matrix Profile ...
 **** Number of equations                 = 8064
      Estimated maximum bandwidth         = 149
      Estimated triangle matrix nonzeroes = 576864
      Symbolically assembled nonzeros     = 275616
 **** Real Sparse Matrix Assembly ...
                                                  
1**** STIFFNESS MATRIX PARAMETERS                 
                                                  
      minimum non-zero diagonal element =           9.0363E+05
      maximum diagonal element          =           7.5686E+06
      maximum/minimum                   =           8.3758E+00
      average diagonal element          =           3.5020E+06
                                                  
      Minimum found at equation #5525: node = 2002 DOF=Ty
      Maximum found at equation #3120: node = 1168 DOF=Tz

      in the upper triangle:
      number of entries in the profile    = 576864
      number of nonzeros                  = 275616

 **** Sparse Matrix Assembled

 **** Invoking Parallel BCSLIB-EXT Sparse Solver...
 
 **** Load Cases 1
      BCSLIB-EXT solver memory status:  
      in-core memory requirement (MB) =           23.71
      minimum memory requirement (MB) =            5.86
           user specified memory (MB) =         4923.97
       available physical memory (MB) =         4923.97
        available virtual memory (MB) =        11630.23
      memory currently allocated (MB) =           23.71
 **** End Sparse Solver Solution
 

               Reaction Sums and Maxima for Load Case       1

      Sum of applied forces
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      0.0000E+00  0.0000E+00 -5.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of reactions
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      2.6948E-13 -1.9706E-14 -9.1533E-12  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      2.6948E-13 -1.9706E-14 -5.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of unfixed direction residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      1.4834E-12  1.2854E-12 -1.5303E-11  0.0000E+00  0.0000E+00  0.0000E+00

      Largest applied forces and moments
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
               0           0        2380           0           0           0
      0.0000E+00  0.0000E+00 -5.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal reactions
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
            2409         961        2380           0           0           0
     -4.2161E-01  7.9768E-02  5.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
            2409         961        2409           0           0           0
     -4.2161E-01  7.9768E-02 -7.5570E-01  0.0000E+00  0.0000E+00  0.0000E+00

      Largest unfixed direction residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
            1833        1785         936           0           0           0
      8.4543E-14  8.9428E-14 -1.9800E-12  0.0000E+00  0.0000E+00  0.0000E+00
  
                                                  
1**** TEMPORARY FILE STORAGE (MEGABYTES)          
      ----------------------------------          
       UNIT NO.  7 :      0.062
       UNIT NO.  8 :      0.132
       UNIT NO.  9 :      0.000
       UNIT NO. 10 :      0.000
       UNIT NO. 11 :      0.000
       UNIT NO. 12 :      0.062
       UNIT NO. 13 :      0.062
       UNIT NO. 14 :      0.000
       UNIT NO. 15 :      0.000
       UNIT NO. 17 :      0.000
       UNIT NO. 50 :      3.203
       UNIT NO. 51 :      0.266
       UNIT NO. 52 :      4.995
       UNIT NO. 54 :      0.031
       UNIT NO. 55 :      1.051
       UNIT NO. 56 :      2.103
       UNIT NO. 57 :      2.103
       UNIT NO. 58 :      0.000
       UNIT NO. 59 :      0.000

       TOTAL       :     14.067 Megabytes
