

 Autodesk (R) Simulation Static Stress with Linear Material Models
 Version 2013.00.00.0411-W64/X64 28-Feb-2012
 Copyright (c) 2012, Autodesk, Inc. All rights reserved. 

------------------------------------------------- 
                          DATE: JULY 4, 2014                  
                          TIME: 06:35 PM
                   INPUT MODEL: C:\Users\Kyle\Documents\Autodesk\Inventor\Projects\ROV\2 Pipe.ds_data\3\ds

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
                                                  
      number of node points          (NUMNP)   =          1238
      number of element types        (NELTYP)  =             1
      number of load cases           (LL)      =             1
      number of frequencies          (NF)      =             0
      analysis type code             (NDYN)    =             0
      equations per block            (KEQB)    =             0
      bandwidth minimization flag    (MINBND)  =            -1
      gravitational constant         (GRAV)    =    3.8640E+02
      number of equations            (NEQ)     =          3714

 **** PRINT OF NODAL DATA SUPPRESSED              
 **** PRINT OF EQUATION NUMBERS SUPPRESSED        
 **** Hard disk file size information for processor:

      Available hard disk space on current drive = 290896.719 megabytes
      Gravity direction vector =  0.0000E+00  0.0000E+00 -1.0000E+00
                                                  
1**** NODAL LOADS (STATIC) OR MASSES (DYNAMIC)    
                                                  
   NODE  LOAD     X-AXIS     Y-AXIS     Z-AXIS     X-AXIS     Y-AXIS     Z-AXIS
  NUMBER CASE      FORCE      FORCE      FORCE     MOMENT     MOMENT     MOMENT
                                                  
     191    1  0.000E+00  5.000E+00  0.000E+00  0.000E+00  0.000E+00  0.000E+00
                                                  
1**** ELEMENT LOAD MULTIPLIERS                    
                                                  
      load case      case A     case B     case C     case D     case E        
      ---------    ---------- ---------- ---------- ---------- ----------      
                                                  
          1         1.000E+00  0.000E+00  1.000E+00  0.000E+00  0.000E+00
  
      Centrifugal force / angular acceleration    
  
      load case     rot.rate   ang.acc.           
      ---------    ---------- ----------          
  
          1         0.000E+00  0.000E+00
  

 **** Symbolic Assembly Using the Row-Hits Matrix Profile ...
 **** Number of equations                 = 3714
      Estimated maximum bandwidth         = 1045
      Estimated triangle matrix nonzeroes = 938034
      Symbolically assembled nonzeros     = 62490
 **** Real Sparse Matrix Assembly ...
                                                  
1**** STIFFNESS MATRIX PARAMETERS                 
                                                  
      minimum non-zero diagonal element =           2.5726E+04
      maximum diagonal element          =           1.3057E+05
      maximum/minimum                   =           5.0756E+00
      average diagonal element          =           8.6283E+04
                                                  
      Minimum found at equation #508: node = 170 DOF=Tx
      Maximum found at equation #3712: node = 1238 DOF=Tx

      in the upper triangle:
      number of entries in the profile    = 938034
      number of nonzeros                  = 62452

 **** Sparse Matrix Assembled

 **** Invoking Parallel BCSLIB-EXT Sparse Solver...
 
 **** Load Cases 1
      BCSLIB-EXT solver memory status:  
      in-core memory requirement (MB) =            5.47
      minimum memory requirement (MB) =            2.18
           user specified memory (MB) =         2772.14
       available physical memory (MB) =         2772.14
        available virtual memory (MB) =         8214.50
      memory currently allocated (MB) =            8.00
 **** End Sparse Solver Solution
 

               Reaction Sums and Maxima for Load Case       1

      Sum of applied forces
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
      0.0000E+00  5.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of reactions
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
     -6.0593E-01  7.2844E-01 -5.0017E-01  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
     -6.0593E-01  5.7284E+00 -5.0017E-01  0.0000E+00  0.0000E+00  0.0000E+00

      Sum of unfixed direction residuals
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
     -6.0593E-01  5.7284E+00 -5.0017E-01  0.0000E+00  0.0000E+00  0.0000E+00

      Largest applied forces and moments
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
               0         191           0           0           0           0
      0.0000E+00  5.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal reactions
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
              46         191         479           0           0           0
     -2.2075E-01 -4.9690E+00 -1.8081E-01  0.0000E+00  0.0000E+00  0.0000E+00

      Largest nodal residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
              46         571         479           0           0           0
     -2.2075E-01  6.0545E-01 -1.8081E-01  0.0000E+00  0.0000E+00  0.0000E+00

      Largest unfixed direction residuals
            Node        Node        Node        Node        Node        Node
         X-Force     Y-Force     Z-Force    X-Moment    Y-Moment    Z-Moment
              46         571         479           0           0           0
     -2.2075E-01  6.0545E-01 -1.8081E-01  0.0000E+00  0.0000E+00  0.0000E+00
  
                                                  
1**** TEMPORARY FILE STORAGE (MEGABYTES)          
      ----------------------------------          
       UNIT NO.  7 :      0.028
       UNIT NO.  8 :      0.057
       UNIT NO.  9 :      0.000
       UNIT NO. 10 :      0.000
       UNIT NO. 11 :      0.000
       UNIT NO. 12 :      0.028
       UNIT NO. 13 :      0.028
       UNIT NO. 14 :      0.000
       UNIT NO. 15 :      0.000
       UNIT NO. 17 :      0.000
       UNIT NO. 50 :      5.395
       UNIT NO. 51 :      0.447
       UNIT NO. 52 :      8.414
       UNIT NO. 54 :      0.014
       UNIT NO. 55 :      0.238
       UNIT NO. 56 :      0.476
       UNIT NO. 57 :      0.000
       UNIT NO. 58 :      0.000
       UNIT NO. 59 :      0.000

       TOTAL       :     15.127 Megabytes
