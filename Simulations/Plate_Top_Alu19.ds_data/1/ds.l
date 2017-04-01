

 Autodesk (R) Simulation Static Stress with Linear Material Models
 Version 2016.00.00.3017-W64/X64 09-Mar-2015
 Copyright (c) 2015, Autodesk, Inc. All rights reserved. 

------------------------------------------------- 
                          DATE: JULY 2, 2015                  
                          TIME: 00:25 AM
                   INPUT MODEL: C:\Users\Kyle\Documents\Project documentation\Combat Robot\CAD\V1.0\Plate_Top_Alu19.ds_data\1\ds

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
                                                  
      number of node points          (NUMNP)   =           608
      number of element types        (NELTYP)  =             1
      number of load cases           (LL)      =             1
      number of frequencies          (NF)      =             0
      analysis type code             (NDYN)    =             0
      equations per block            (KEQB)    =             0
      bandwidth minimization flag    (MINBND)  =            -1
      gravitational constant         (GRAV)    =    3.8640E+02
      number of equations            (NEQ)     =          1428

 **** PRINT OF NODAL DATA SUPPRESSED              
 **** PRINT OF EQUATION NUMBERS SUPPRESSED        
 **** Hard disk file size information for processor:

      Available hard disk space on current drive = 626747.625 megabytes
      Gravity direction vector =  0.0000E+00  0.0000E+00 -1.0000E+00
                                                  
1**** NODAL LOADS (STATIC) OR MASSES (DYNAMIC)    
                                                  
   NODE  LOAD     X-AXIS     Y-AXIS     Z-AXIS     X-AXIS     Y-AXIS     Z-AXIS
  NUMBER CASE      FORCE      FORCE      FORCE     MOMENT     MOMENT     MOMENT
                                                  
     311    1  0.000E+00  0.000E+00 -5.000E+00  0.000E+00  0.000E+00  0.000E+00
     361    1  0.000E+00  0.000E+00 -5.000E+00  0.000E+00  0.000E+00  0.000E+00
     370    1  0.000E+00  0.000E+00 -5.000E+00  0.000E+00  0.000E+00  0.000E+00
                                                  
1**** ELEMENT LOAD MULTIPLIERS                    
                                                  
       load case     Pressure   Gravity  Displacement  Thermal  Electrical
      ---------    ---------- ---------- ---------- ---------- ----------      
                                                  
          1         1.000E+00  0.000E+00  1.000E+00  0.000E+00  0.000E+00
  
      Centrifugal force / angular acceleration    
  
      load case     rot.rate   ang.acc.           
      ---------    ---------- ----------          
  
          1         0.000E+00  0.000E+00
  

 **** Symbolic Assembly Using the Row-Hits Matrix Profile ...
 **** Number of equations                 = 1428
      Estimated maximum bandwidth         = 75
      Estimated triangle matrix nonzeroes = 62724
      Symbolically assembled nonzeros     = 35994
 **** Real Sparse Matrix Assembly ...
                                                  
1**** STIFFNESS MATRIX PARAMETERS                 
                                                  
      minimum non-zero diagonal element =           2.6196E+06
      maximum diagonal element          =           1.0690E+07
      maximum/minimum                   =           4.0807E+00
      average diagonal element          =           5.3002E+06
                                                  
      Minimum found at equation #58: node = 152 DOF=Tx
      Maximum found at equation #144: node = 180 DOF=Tz

      in the upper triangle:
      number of entries in the profile    = 62724
      number of nonzeros                  = 35994

 **** Sparse Matrix Assembled

 **** Invoking Parallel BCSLIB-EXT Sparse Solver...
 
 **** Load Cases 1
      BCSLIB-EXT solver memory status:  
      in-core memory requirement (MB) =            1.89
      minimum memory requirement (MB) =            0.90
           user specified memory (MB) =         4995.54
       available physical memory (MB) =         4995.54
        available virtual memory (MB) =        11634.33
      memory currently allocated (MB) =            1.89
 **** End Sparse Solver Solution
 

               Reaction Sums and Maxima for Load Case       1

      Sum of applied forces
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      0.0000E+00  0.0000E+00 -1.5000E+01  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of reactions
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      2.4059E-11  2.4617E-11  7.5317E-11  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      2.4059E-11  2.4617E-11 -1.5000E+01  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of unfixed direction residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
     -4.1259E-11  1.7167E-11 -1.0732E-10  0.0000E+00  0.0000E+00  0.0000E+00

      Largest applied forces and moments
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
               0           0         311           0           0           0
      0.0000E+00  0.0000E+00 -5.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal reactions
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
              29         125         361           0           0           0
      1.0974E+01  2.1175E+01  5.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
              29         125         107           0           0           0
      1.0974E+01  2.1175E+01 -3.2125E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Largest unfixed direction residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
             584         584         339           0           0           0
     -1.1369E-11  1.5234E-11  2.1828E-10  0.0000E+00  0.0000E+00  0.0000E+00
  
                                                  
1**** TEMPORARY FILE STORAGE (MEGABYTES)          
      ----------------------------------          
       UNIT NO.  7 :      0.011
       UNIT NO.  8 :      0.028
       UNIT NO.  9 :      0.000
       UNIT NO. 10 :      0.000
       UNIT NO. 11 :      0.000
       UNIT NO. 12 :      0.011
       UNIT NO. 13 :      0.011
       UNIT NO. 14 :      0.000
       UNIT NO. 15 :      0.000
       UNIT NO. 17 :      0.000
       UNIT NO. 50 :      0.398
       UNIT NO. 51 :      0.033
       UNIT NO. 52 :      0.620
       UNIT NO. 54 :      0.005
       UNIT NO. 55 :      0.137
       UNIT NO. 56 :      0.275
       UNIT NO. 57 :      0.275
       UNIT NO. 58 :      0.000
       UNIT NO. 59 :      0.000

       TOTAL       :      1.803 Megabytes
