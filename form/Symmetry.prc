#procedure Symmetry 

if (match(sumj)); 
    id sumj = sumi * replace_(p1, p2, p2, p1, p1n, p2n, p2n, p1n, s13, s23, s23, s13, s14, s24, s24, s14, T1, T2, T2, T1);
elseif (match(sumij)); 
    id once ifmatch->1 T1(cOli1?)*T2(cOli2?)*cOlf(c3,cOli2?,cOli3?)*cOlf(c4,cOli1?,cOli3?) = T1(cOli1)*T2(cOli2)*cOlf(c3,cOli2,cOli3)*cOlf(c4,cOli1,cOli3)
			*replace_(p1, p2, p2, p1, p1n, p2n, p2n, p1n, s13, s23, s23, s13, s14, s24, s24, s14, T1, T2, T2, T1);

    id once ifmatch->1 T1(cOli1?)*T2(c3)*T2(cOli2?)*cOlf(c4,cOli1?,cOli2?) = T1(cOli1)*T2(c3)*T2(cOli2)*cOlf(c4,cOli1,cOli2)
            *replace_(p1, p2, p2, p1, p1n, p2n, p2n, p1n, s13, s23, s23, s13, s14, s24, s24, s14, T1, T2, T2, T1); 

    id once ifmatch->1 T1(cOli1?)*T2(c4)*T2(cOli2?)*cOlf(c3,cOli1?,cOli2?) = T1(cOli1)*T2(c4)*T2(cOli2)*cOlf(c3,cOli1,cOli2)
            *replace_(p1, p2, p2, p1, p1n, p2n, p2n, p1n, s13, s23, s23, s13, s14, s24, s24, s14, T1, T2, T2, T1); 

endif;
label 1;
mul 1/2;


#call WaveFunctions
#call SimplifyIntegrals
#call Color
#endprocedure
