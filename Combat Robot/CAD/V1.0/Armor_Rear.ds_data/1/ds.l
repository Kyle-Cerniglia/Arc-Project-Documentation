

 Autodesk (R) Simulation Static Stress with Linear Material Models
 Version 2016.00.00.3017-W64/X64 09-Mar-2015
 Copyright (c) 2015, Autodesk, Inc. All rights reserved. 

------------------------------------------------- 
                          DATE: JULY 2, 2015                  
                          TIME: 00:11 AM
                   INPUT MODEL: C:\Users\Kyle\Documents\Project documentation\Combat Robot\CAD\V1.0\Armor_Rear.ds_data\1\ds

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
                                                  
      number of node points          (NUMNP)   =          1768
      number of element types        (NELTYP)  =             3
      number of load cases           (LL)      =             1
      number of frequencies          (NF)      =             0
      analysis type code             (NDYN)    =             0
      equations per block            (KEQB)    =             0
      bandwidth minimization flag    (MINBND)  =            -1
      gravitational constant         (GRAV)    =    3.8640E+02
      number of equations            (NEQ)     =          5148

 **** PRINT OF NODAL DATA SUPPRESSED              
 **** PRINT OF EQUATION NUMBERS SUPPRESSED        
 **** Hard disk file size information for processor:

      Available hard disk space on current drive = 626788.125 megabytes
      Gravity direction vector =  0.0000E+00  0.0000E+00 -1.0000E+00
                                                  
1**** NODAL LOADS (STATIC) OR MASSES (DYNAMIC)    
                                                  
   NODE  LOAD     X-AXIS     Y-AXIS     Z-AXIS     X-AXIS     Y-AXIS     Z-AXIS
  NUMBER CASE      FORCE      FORCE      FORCE     MOMENT     MOMENT     MOMENT
                                                  
    1317    1  0.000E+00  0.000E+00  1.000E+00  0.000E+00  0.000E+00  0.000E+00
                                                  
1**** ELEMENT LOAD MULTIPLIERS                    
                                                  
       load case     Pressure   Gravity  Displacement  Thermal  Electrical
      ---------    ---------- ---------- ---------- ---------- ----------      
                                                  
          1         1.000E+00  0.000E+00  1.000E+00  0.000E+00  0.000E+00
  
      Centrifugal force / angular acceleration    
  
      load case     rot.rate   ang.acc.           
      ---------    ---------- ----------          
  
          1         0.000E+00  0.000E+00
  

 **** Symbolic Assembly Using the Row-Hits Matrix Profile ...
 **** Number of equations                 = 5148
      Estimated maximum bandwidth         = 149
      Estimated triangle matrix nonzeroes = 322092
      Symbolically assembled nonzeros     = 162414
 **** Real Sparse Matrix Assembly ...
                                                  
1**** STIFFNESS MATRIX PARAMETERS                 
                                                  
      minimum non-zero diagonal element =           3.4055E+05
      maximum diagonal element          =           5.5529E+06
      maximum/minimum                   =           1.6306E+01
      average diagonal element          =           2.5101E+06
                                                  
      Minimum found at equation #2506: node = 888 DOF=Tx
      Maximum found at equation #1110: node = 422 DOF=Tz

      in the upper triangle:
      number of entries in the profile    = 322092
      number of nonzeros                  = 162414

 **** Sparse Matrix Assembled

 **** Invoking Parallel BCSLIB-EXT Sparse Solver...
 
 **** Load Cases 1
      BCSLIB-EXT solver memory status:  
      in-core memory requirement (MB) =           11.44
      minimum memory requirement (MB) =            3.65
           user specified memory (MB) =         5027.22
       available physical memory (MB) =         5027.22
        available virtual memory (MB) =        11748.04
      memory currently allocated (MB) =           11.44
 **** End Sparse Solver Solution
 

               Reaction Sums and Maxima for Load Case       1

      Sum of applied forces
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      0.0000E+00  0.0000E+00  1.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of reactions
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
     -2.4722E-13 -7.6348E-14  5.5815E-12  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
     -2.4722E-13 -7.6348E-14  1.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of unfixed direction residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
     -1.8646E-13 -8.2318E-13 -1.0581E-12  0.0000E+00  0.0000E+00  0.0000E+00

      Largest applied forces and moments
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
               0           0        1317           0           0           0
      0.0000E+00  0.0000E+00  1.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal reactions
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
             111           6        1317           0           0           0
     -3.7068E-01 -6.0041E-02 -1.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
             111           6         108           0           0           0
     -3.7068E-01 -6.0041E-02  2.7160E-02  0.0000E+00  0.0000E+00  0.0000E+00

      Largest unfixed direction residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
            1758         829        1757           0           0           0
      7.8160E-14  7.6023E-14 -1.4495E-12  0.0000E+00  0.0000E+00  0.0000E+00
  
                                                  
1**** TEMPORARY FILE STORAGE (MEGABYTES)          
      ----------------------------------          
       UNIT NO.  7 :      0.039
       UNIT NO.  8 :      0.081
       UNIT NO.  9 :      0.000
       UNIT NO. 10 :      0.000
       UNIT NO. 11 :      0.000
       UNIT NO. 12 :      0.039
       UNIT NO. 13 :      0.039
       UNIT NO. 14 :      0.000
       UNIT NO. 15 :      0.000
       UNIT NO. 17 :      0.000
       UNIT NO. 50 :      1.749
       UNIT NO. 51 :      0.145
       UNIT NO. 52 :      2.728
       UNIT NO. 54 :      0.020
       UNIT NO. 55 :      0.620
       UNIT NO. 56 :      1.239
       UNIT NO. 57 :      1.239
       UNIT NO. 58 :      0.000
       UNIT NO. 59 :      0.000

       TOTAL       :      7.939 Megabytes
