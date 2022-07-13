#-
#: IncDir form
#: SmallExtension 100M
#: WorkSpace      2G
Off Statistics;

f ubari, vj;
s M; 
nt g; 
v pi, pj, k, n, ep; 
s [1/l^2], [1/l.n], [1/(pi.l+pi.k)], [1/(l^2+2l.k)], [1/pj.l], [1/(l.n+k.n)];
f Ti, Tj;
cf fabc;
i kappa;
i a,b,c;

* Results from explicit calculation
************************************************************************************************************************
l Riiloop =
       + Ti(a)*Ti(b)*fabc(a,c,b)*[1/l^2]*[1/(pi.l+pi.k)]*[1/(l^2+2l.k)] * ( 
          - pi.ep*k.n*[1/l.n]*M );
l Rijext =
       + Ti(c)*Ti(a)*Tj(a)*[1/l^2]*[1/pj.l]*[1/(pi.l+pi.k)] * (  - pi.ep*n.pj*
         i_*[1/l.n]*M );

l Rijint =
       + Ti(a)*Tj(b)*fabc(a,c,b)*[1/l^2]*[1/pj.l]*[1/(pi.l+pi.k)] * ( pi.ep*
         n.pj*[1/l.n]*M )

       + Ti(c)*Ti(a)*Tj(a)*[1/l^2]*[1/pj.l]*[1/(pi.l+pi.k)] * ( pi.ep*n.pj*i_*
         [1/l.n]*M );
      
l Rijloop =
       + Ti(a)*Tj(b)*fabc(a,c,b)*[1/pj.l]*[1/(pi.l+pi.k)]*[1/(l^2+2l.k)] * ( 
          - pi.n*ep.pj*[1/(l.n+k.n)]*M )

       + Ti(a)*Tj(b)*fabc(a,c,b)*[1/l^2]*[1/(pi.l+pi.k)]*[1/(l^2+2l.k)] * ( 
          - pi.ep*k.n*[1/l.n]*M )

       + Ti(a)*Tj(b)*fabc(a,c,b)*[1/l^2]*[1/pj.l]*[1/(l^2+2l.k)] * ( k.n*ep.pj
         *[1/(l.n+k.n)]*M )

       + Ti(a)*Tj(b)*fabc(a,c,b)*[1/l^2]*[1/pj.l]*[1/(pi.l+pi.k)] * (  - pi.ep
         *n.pj*[1/l.n]*M )

       + Ti(a)*Tj(b)*fabc(a,c,b)*[1/l^2]*[1/pj.l]*[1/(pi.l+pi.k)]*
      [1/(l^2+2l.k)] * (  - pi.k*ep.pj*M + pi.ep*k.pj*M );
************************************************************************************************************************
mul -1;
.sort 
cf V, DS, Eik, cOlf(antisymmetric);
f T1,T2;
v p, p1, p2, p3, E3;
i c1,c2,c3;
i cOli9;
s p3n, p2n, p1n, s13, s23;


.sort
id Ti(a?) = T1(a); 
id Tj(a?) = T2(a);
id fabc(a?, b?, c?) = cOlf(a,b,c); 
mul replace_(pi, p1); 
mul replace_(pj, p2);
mul replace_(k, p3); 
mul replace_(ep, E3);
id [1/l^2] = DS(k);
id [1/l.n] = Eik(k, n); 
id [1/(pi.l+pi.k)] = Eik(k+p3,p1); 
id [1/(l^2+2l.k)] = DS(k+p3);
id [1/pj.l] = Eik(k, p2);
id [1/(l.n+k.n)] = Eik(k + p3, n);
id n.p3 = p3n;
id n.p2 = p2n;
id n.p1 = p1n;
id p1.p3 = s13/2;
id p2.p3 = s23/2;

sum a,b; 
mul replace_(c, c3);
#do i=1,2
  id T`i'(c1?) * T`i'(c2?) * cOlf(c3?, c1?, c2?) = i_/2 * cOlf(c1,c2,cOli9) * T`i'(cOli9) * cOlf(c3,c1,c2);
  sum cOli9;
#enddo
.sort
* Results from Eikonal theory 
************************************************************************************************************************
l d4 =
       + T2(N1_?)*DS(k)*DS(k + p3)*Eik(k,p2)*Eik(k + p3,n)*cOlf(c3,N2_?,N3_?)*
      cOlf(N1_?,N2_?,N3_?) * (  - 1/2*M*p2.E3*i_*p3n );

l d6 =
       + T1(N1_?)*DS(k)*DS(k + p3)*Eik(k,p1)*Eik(k + p3,n)*cOlf(c3,N2_?,N3_?)*
      cOlf(N1_?,N2_?,N3_?) * (  - 1/2*M*p1.E3*i_*p3n );
      
l d9 =
       + T1(c3)*T1(N1_?)*T2(N1_?)*DS(k)*Eik(k,n)*Eik(k,p2)*Eik(k + p3,p1) * ( 
         M*p1.E3*i_*p2n );
 
l d10 =
       + T1(N1_?)*T2(c3)*T2(N1_?)*DS(k)*Eik(k,n)*Eik(k,p1)*Eik(k + p3,p2) * ( 
         M*p2.E3*i_*p1n );
         
l d11 =
       + T1(c3)*T1(N1_?)*T2(N1_?)*DS(k)*Eik(k,n)*Eik(k,p2)*Eik(k + p3,p1) * ( 
          - M*p1.E3*i_*p2n )

       + T1(N1_?)*T2(N2_?)*DS(k)*Eik(k,n)*Eik(k,p2)*Eik(k + p3,p1)*cOlf(c3,
      N1_?,N2_?) * ( M*p1.E3*p2n );
 
l d12 =
       + T1(N1_?)*T2(c3)*T2(N1_?)*DS(k)*Eik(k,n)*Eik(k,p1)*Eik(k + p3,p2) * ( 
          - M*p2.E3*i_*p1n )

       + T1(N1_?)*T2(N2_?)*DS(k)*Eik(k,n)*Eik(k,p1)*Eik(k + p3,p2)*cOlf(c3,
      N1_?,N2_?) * (  - M*p2.E3*p1n );
         
l d13 =
       + T1(N1_?)*T2(N2_?)*DS(k)*DS(k + p3)*Eik(k,n)*Eik(k + p3,p1)*cOlf(c3,
      N1_?,N2_?) * (  - M*p1.E3*p3n )

       + T1(N1_?)*T2(N2_?)*DS(k)*DS(k + p3)*Eik(k,p2)*Eik(k + p3,n)*cOlf(c3,
      N1_?,N2_?) * ( M*p2.E3*p3n )

       + T1(N1_?)*T2(N2_?)*DS(k)*DS(k + p3)*Eik(k,p2)*Eik(k + p3,p1)*cOlf(c3,
      N1_?,N2_?) * ( 1/2*M*p1.E3*s23 - 1/2*M*p2.E3*s13 )

       + T1(N1_?)*T2(N2_?)*DS(k)*Eik(k,n)*Eik(k,p1)*Eik(k + p3,p2)*cOlf(c3,
      N1_?,N2_?) * ( M*p2.E3*p1n )

       + T1(N1_?)*T2(N2_?)*DS(k)*Eik(k,n)*Eik(k,p2)*Eik(k + p3,p1)*cOlf(c3,
      N1_?,N2_?) * (  - M*p1.E3*p2n );
************************************************************************************************************************

id DS(k)*DS(k + p3)*Eik(k,n)*Eik(k + p3,p1) = DS(k)*DS(k + p3)*Eik(k,n)*Eik(k + p3,p1) * replace_(k, -k -p3);
id DS(k + p3)*Eik(k,p2)*Eik(k + p3,n)*Eik(k + p3,p1) = DS(k + p3)*Eik(k,p2)*Eik(k + p3,n)*Eik(k + p3,p1) * replace_(k, -k -p3);
.sort

id DS(-k) = DS(k); 
id DS(-k - p3) = DS(k + p3);

splitarg (k) Eik;

#do P={n,p1,p2}
  id Eik(-k, `P') = -Eik(k, `P');
  id Eik(p?,-k, `P') = -Eik(-p,k, `P');

  id `P'.k*Eik(k, `P') = 1;
  id `P'.k*Eik(p?,k, `P') = 1-`P'.p*Eik(p,k,`P');

  id Eik(k, `P')*Eik(p?,k, `P') = Eik(p, `P')*(Eik(k,`P')-Eik(p,k,`P'));
  id Eik(p1?,k, `P')*Eik(p2?,k, `P') = Eik(p1-p2,`P')*(Eik(p2,k,`P')-Eik(p1,k,`P'));

  id Eik(p?,k?, `P') = Eik(k+p,`P');

  #do i=1,3
    id Eik(p`i',`P') = 1/p`i'.`P';
    id Eik(-p`i',`P') = -1/p`i'.`P';
  #enddo
#enddo
.sort

* Comparison 
************************************************************************************************************************
l MiiloopCheck = d6 - Riiloop;
l MjjloopCheck = d4 - Riiloop * replace_(p1, p2, p2, p1, T1, T2);
l MijextCheck = d9 - Rijext;
l MjiextCheck = d10 - Rijext * replace_(p1, p2, p2, p1, T1, T2, T2, T1, p1n, p2n, p2n, p1n);
l MijintCheck = d11 - Rijint;
l MjiintCheck =  d12 - Rijint * replace_(p1, p2, p2, p1, T1, T2, T2, T1, p1n, p2n, p2n, p1n);
l MijloopCheck = d13 - Rijloop;
************************************************************************************************************************
repeat; 
    id T2(c1?) * T1(c2?) = T1(c2) * T2(c1);
endrepeat;
bracket T1, T2, cOlf, Eik, DS;
print ; 
.sort 
.end
