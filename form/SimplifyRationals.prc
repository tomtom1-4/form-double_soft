#procedure SimplifyRationals
********************************************************************************
* Partial-fraction expansion
*
* The routine is safe, but it does not completely simplify rational coefficients

#do i=1,5
  id den(d-`i') = 1/[d-`i'];
#enddo

b d, [d-1], [d-2], [d-3], [d-4], [d-5];
.sort
Keep Brackets;

#do i=1,5
  repeat id d/[d-`i'] = 1+`i'/[d-`i'];
  repeat id 1/[d-`i']/d = (1/[d-`i']-1/d)/`i';
  #do j={`i'+1},5
    repeat id 1/[d-`i']/[d-`j'] = (1/[d-`i']-1/[d-`j'])/{`i'-`j'};
  #enddo
#enddo

.sort

splitlastarg den;

b s12, s13, s14, s23, s24, s34, p1n, p2n, p3n, p4n, den;
.sort
Keep Brackets;

#if 0

  id den(n1?,n2?)*n2? = 1-n1*den(n1,n2); * this version does not seem to work

#else

* denominators occuring in the reductions?.h files:
*
* den(s13,s12), den(s23,s12), den(s23+s13,s12)
* den(s23,s13)
* den(p2q,p1q), den(p3q,p1q), den(p3q+p2q,p1q)
* den(p3q,p2q)
* den(s23*p3q+s23*p1q-s13*p2q+s12*p3q,s12*p1q)
* den(-s23*p1q+s13*p3q+s13*p2q+s12*p3q,s12*p2q)
* den(-s23*p2q-s23*p1q-s13*p2q-s13*p1q,s12*p3q)
* den(s23^2*p1q^2-2*s13*s23*p1q*p2q+s13^2*p2q^2-2*s12*s23*p1q*p3q-2*s12*s13*p2q*p3q,s12^2*p3q^2)
*
* warning: routine relies on the result of splitlastarg
* a safer, but more tedious, approach would have the above list hardcoded

  #do x={s12,s13, s14, s23, s24, s34, p1n, p2n, p3n, p4n, s12*p1n,s12*p2n,s12*p3n,s12^2*p3n^2}
    repeat id den(n?,`x')*`x' = 1-n*den(n,`x');
  #enddo

#endif

.sort

id den(n1?,n2?) = den(n1+n2);

b den;
.sort
Keep Brackets;

repeat id den(s12+s13)*den(s12+s13+s23) = (den(s12+s13)-den(s12+s13+s23))/s23;
repeat id den(s12+s23)*den(s12+s13+s23) = (den(s12+s23)-den(s12+s13+s23))/s13;
repeat id den(s13+s23)*den(s12+s13+s23) = (den(s13+s23)-den(s12+s13+s23))/s12;

repeat id den(p1n+p2n)*den(p1n+p2n+p3n) = (den(p1n+p2n)-den(p1n+p2n+p3n))/p3n;
repeat id den(p1n+p3n)*den(p1n+p2n+p3n) = (den(p1n+p3n)-den(p1n+p2n+p3n))/p2n;
repeat id den(p2n+p3n)*den(p1n+p2n+p3n) = (den(p2n+p3n)-den(p1n+p2n+p3n))/p1n;

.sort

#endprocedure
