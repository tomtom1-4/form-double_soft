#procedure NormalizePropagators
********************************************************************************
* Simple properties and notation for ordinary and eikonal propagators

****************************************
* ordinary massless scalar propagators

splitarg (k) DS;
id DS(-k) = DS(k);
id DS(p?,-k) = DS(-p,k);

id k.k*DS(k) = 1;

*if (match(DS(k)) == 0) id once DS(p?,k) = DS(p,k)*replace_(k,k-p);

id DS(p?,k?) = DS(p+k);
#do i = 1,4 
  #do j = `i'+1,4
    id DS(p`i' + p`j') = 1/s`i'`j';
    id DS(-p`i'- p`j') = 1/s`i'`j';
  #enddo 
#enddo

id DS(p1+p2+p3) =  den(s12 + s13 + s23);
id DS(p1+p2+p4) =  den(s12 + s14 + s24); 
id DS(p1+p3+p4) =  den(s13 + s14 + s34); 
id DS(p2+p3+p4) =  den(s23 + s24 + s34);
id DS(-p1-p2-p3) = den(s12 + s13 + s23);

****************************************
* eikonal propagators

splitarg (k) Eik;

#do P={n,p1,p2}
  id Eik(k?, -`P') = -Eik(k, `P');
  id Eik(p3?, k?, -`P') = -Eik(p3, k, `P');
  id Eik(-k, `P') = -Eik(k, `P');
  id Eik(p?,-k, `P') = -Eik(-p,k, `P');

  id `P'.k*Eik(k, `P') = 1;
  id `P'.k*Eik(p?,k, `P') = 1-`P'.p*Eik(p,k,`P');

  id Eik(k, `P')*Eik(p?,k, `P') = Eik(p, `P')*(Eik(k,`P')-Eik(p,k,`P'));
  id Eik(p3?,k, `P')*Eik(p4?,k, `P') = Eik(p3-p4,`P')*(Eik(p4,k,`P')-Eik(p3,k,`P'));

  id Eik(p?,k?, `P') = Eik(k+p,`P');

  #do i=3,4
    id Eik(p`i',`P') = 1/p`i'.`P';
    id Eik(-p`i',`P') = -1/p`i'.`P';
  #enddo
#enddo

id Eik(p3 + p4, n) = den(p3n + p4n);
id Eik(p3 - p4, n) = den(p3n - p4n); 
id Eik(-p3 + p4, n) = den(-p3n + p4n); 
id Eik(-p3 - p4, n) = den(-p3n - p4n); 
#do i=1,2 
  id Eik(p3?, -p`i') = Eik(-p3, p`i');
  id Eik(p3 + p4, p`i') = 2 * den(s`i'3 + s`i'4); 
  id Eik(p3 - p4, p`i') = 2 * den(s`i'3 - s`i'4); 
  id Eik(-p3 + p4, p`i') = 2 * den(-s`i'3 + s`i'4); 
  id Eik(-p3 - p4, p`i') = 2 * den(-s`i'3 - s`i'4);
#enddo

.sort

#endprocedure
