#procedure WaveFunctions
********************************************************************************
* Transversality for polarisation vectors
* Equations-of-motion for spinors
* Additional Dirac algebra

****************************************

****************************************
* polarisation vectors
* assumed transverse to q

id n.E0?{E3, E4} = 0;
#do i=3,4
 id p`i'.E`i' = 0;
#enddo

*id p4.E3 = 0; 
*id p3.E4 = 0;

.sort

#call Kinematics

#endprocedure
