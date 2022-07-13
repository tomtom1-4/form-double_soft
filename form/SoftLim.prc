#procedure SoftLim 

*#do i=1,2
*  #call WaveFunctions
*  #call SimplifyIntegrals
*#enddo
#call Kinematics 
#call WaveFunctions

#do x={s13,s23,p3n, s14, s24, p4n}
  mul replace_(`x', lam * `x');
#enddo

mul replace_(s34, lam^2 * s34);

#do x={p3, p4, k}
  mul replace_(`x', lam * `x');
#enddo 

splitarg (lam * k) DS;
id DS(p?, -k * lam) =  DS(-p, k * lam);

id DS(0, lam * k) = DS(k) * lam^-2;
id DS(0, -lam * k) = DS(k) * lam^-2;

#do x = {p1, p2, -p1, -p2} 
  #do y = {p3, p4, -p3, -p4, p3 + p4, -p3 - p4, p3 - p4, -p3 + p4}
    id DS(`x',lam * k) = Eik(k, `x')/2/lam;
    id DS(`x' + lam * (`y'), lam * k) = Eik(k + `y', `x')/2/lam;
    id DS(`x' + lam * (`y')) = Eik(`y', `x')/2/lam; 
    id DS(lam * (`y'), lam * k) = DS(`y' + k)/lam^2;
    id DS(lam * (`y')) = DS(`y')/lam^2;
  #enddo
#enddo 
id DS(p1 + p2 + lam * p3,lam * k) = DS(p1 + p2);
id DS(p1 + p2 + p3*lam + p4*lam,k*lam) = DS(p1 + p2);
id DS( - p1 - p2 - p3*lam - p4*lam,k*lam) = DS(p1 + p2);
id DS( - p1 - p2 - p3*lam,k*lam) = DS(p1 + p2);
id DS( - p1 - p2 - p4*lam,k*lam) = DS(p1 + p2);
id DS( - p1 - p2 - p4*lam) = DS(p1 + p2);
id DS( - p1 - p2 - p3*lam) = DS(p1 + p2);


argument DS; 
  if (match(lam)); 
    exit "Soft limit failed for DS";
  endif; 
endargument;

#do x = {k, p3, p4, p3 + p4, k - p3, k + p3, k - p4, k + p4, k + p3 + p4, k - p3 - p4, k - p3 + p4, k + p3 - p4}
  id Eik(lam * (`x'), n?) = Eik(`x', n)/lam;
  id Eik(-lam * (`x'), n?) = - Eik(`x', n)/lam;
#enddo

argument Eik; 
  if (match(lam)); 
    exit "Soft limit failed for Eikonal";
  endif; 
endargument;

if (occurs(k)); 
  mul lam^4; 
endif;
mul lam^2;

mul replace_(lam, 0);
.sort 

#endprocedure