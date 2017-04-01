

 Autodesk (R) Simulation Static Stress with Linear Material Models
 Version 2013.00.00.0411-W64/X64 28-Feb-2012
 Copyright (c) 2012, Autodesk, Inc. All rights reserved. 

------------------------------------------------- 
                          DATE: JULY 30, 2013                 
                          TIME: 03:09 PM
                   INPUT MODEL: C:\Users\Kyle\Documents\Inventor\2013\ROV\3in Pipe.ds_data\1\ds

               PROGRAM VERSION: 201300000411
       alg-win-x64.dll VERSION: 201300000411
  agsdb_ar-win-x64.dll VERSION: 201300000411
 algconfig-win-x64.dll VERSION: 201300000411
          algsolve.exe VERSION:            0
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
                                                  
      number of node points          (NUMNP)   =          1560
      number of element types        (NELTYP)  =             1
      number of load cases           (LL)      =             1
      number of frequencies          (NF)      =             0
      analysis type code             (NDYN)    =             0
      equations per block            (KEQB)    =             0
      bandwidth minimization flag    (MINBND)  =            -1
      gravitational constant         (GRAV)    =    3.8640E+02
      number of equations            (NEQ)     =          4524

 **** PRINT OF NODAL DATA SUPPRESSED              
 **** PRINT OF EQUATION NUMBERS SUPPRESSED        
 **** Hard disk file size information for processor:

      Available hard disk space on current drive = 270763.531 megabytes
      Gravity direction vector =  0.0000E+00  0.0000E+00 -1.0000E+00
                                                  
1**** ELEMENT LOAD MULTIPLIERS                    
                                                  
      load case      case A     case B     case C     case D     case E        
      ---------    ---------- ---------- ---------- ---------- ----------      
                                                  
          1         1.000E+00  0.000E+00  1.000E+00  0.000E+00  0.000E+00
  
      Centrifugal force / angular acceleration    
  
      load case     rot.rate   ang.acc.           
      ---------    ---------- ----------          
  
          1         0.000E+00  0.000E+00
  

 **** Symbolic Assembly Using the Row-Hits Matrix Profile ...
 **** Number of equations                 = 4524
      Estimated maximum bandwidth         = 151
      Estimated triangle matrix nonzeroes = 268152
      Symbolically assembled nonzeros     = 127722
 **** Real Sparse Matrix Assembly ...
                                                  
1**** STIFFNESS MATRIX PARAMETERS                 
                                                  
      minimum non-zero diagonal element =           1.3282E+04
      maximum diagonal element          =           6.4308E+04
      maximum/minimum                   =           4.8419E+00
      average diagonal element          =           3.7507E+04
                                                  
      Minimum found at equation #411: node = 169 DOF=Tz
      Maximum found at equation #3899: node = 1352 DOF=Ty

      in the upper triangle:
      number of entries in the profile    = 268152
      number of nonzeros                  = 127722

 **** Sparse Matrix Assembled

 **** Invoking Parallel BCSLIB-EXT Sparse Solver...
 
 **** Load Cases 1
      BCSLIB-EXT solver memory status:  
      in-core memory requirement (MB) =            8.69
      minimum memory requirement (MB) =            3.23
           user specified memory (MB) =         1767.77
       available physical memory (MB) =         1767.77
        available virtual memory (MB) =         6974.93
      memory currently allocated (MB) =            8.69
 **** End Sparse Solver Solution
 

               Reaction Sums and Maxima for Load Case       1

      Sum of applied forces
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      0.0000E+00  1.0000E+02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of reactions
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
     -1.4658E-12  7.4701E-12  2.9801E-12  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
     -1.4658E-12  1.0000E+02  2.9801E-12  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of unfixed direction residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      4.2461E-12  2.8866E-11 -4.0122E-13  0.0000E+00  0.0000E+00  0.0000E+00

      Largest applied forces and moments
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
               0           4           0           0           0           0
      0.0000E+00  2.2778E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal reactions
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
              43           6         194           0           0           0
      1.2807E+00  3.7332E+00 -3.5351E+01  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
              43           6         194           0           0           0
      1.2807E+00  3.7332E+00 -3.5351E+01  0.0000E+00  0.0000E+00  0.0000E+00

      Largest unfixed direction residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
            1056        1397         938           0           0           0
     -1.3465E-12  4.6620E-12 -1.1884E-12  0.0000E+00  0.0000E+00  0.0000E+00
  
                                                  
1**** TEMPORARY FILE STORAGE (MEGABYTES)          
      ----------------------------------          
       UNIT NO.  7 :      0.035
       UNIT NO.  8 :      0.072
       UNIT NO.  9 :      0.000
       UNIT NO. 10 :      0.000
       UNIT NO. 11 :      0.000
       UNIT NO. 12 :      0.035
       UNIT NO. 13 :      0.035
       UNIT NO. 14 :      0.000
       UNIT NO. 15 :      0.000
       UNIT NO. 17 :      0.000
       UNIT NO. 50 :      1.452
       UNIT NO. 51 :      0.120
       UNIT NO. 52 :      2.264
       UNIT NO. 54 :      0.017
       UNIT NO. 55 :      0.487
       UNIT NO. 56 :      0.974
       UNIT NO. 57 :      0.000
       UNIT NO. 58 :      0.000
       UNIT NO. 59 :      0.000

       TOTAL       :      5.491 Megabytes
