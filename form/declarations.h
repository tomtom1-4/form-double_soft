****************************************
* Interface to DiaGen

s d, [d-1], [d-2], [d-3], [d-4], [d-5], ep;
dimension d;

* because of a bug in form one cannot autodeclare!!!

auto i v;
#if 0
#do i=0,19
  i v`i';
  #do j=0,19
    i v`i'l`j';
    i v`i'l`j'in;
    i v`i'l`j'out;
  #enddo
#enddo
#endif

i mu, nu1, nu2, mu1, mu2, mu3;
i ro, si1, si2, ro1, ro2, ro3;
i a1, a2, a3, a4;
v k, k1, k2, k3;
v p, n; * n - light-cone gauge vector (= pbar)
v p1, p2, p3, p4, p34, p123, p1234;
v r1,...,r5;
s s12, s13, s14, s23, s24, s34;
s p1n, p2n, p3n, p4n;
s m, n1, n2;
t K(symmetric);
s lam;
cf M;

****************************************
* wave functions

cf V;
cf Eps, EpsStar;
v E0, E3, E4; * Eps(...,p123,...), EpsStar(...,p1,...), etc.

****************************************
* propagator functions

f SF;       * fermion propagator
cf DV;      * vector propator in light-cone gauge with vector n
cf DS, DG, Eik; * DS(k) = 1/k.k, Eik(k,n) = 1/k.n

****************************************
* vertex functions
*
* VVV(k1, a1, k2, a2, k3, a3) = (k1(a3)-k2(a3))*d_(a1, a2)+...
*
* G(i, a) = g_(i, a)

cf VVV, EikV;
f G;

****************************************
* flavor and color

s nl;                    * number of massless quarks running in a closed loop
s CA, CF, TF, NF, NA;    * S(NF) with fundamental representation trace TF
i j;
*dimension NA;            * safeguard for loops of adjoint representation deltas
i c0, c1, c2, c3, c4;        * colors of the external partons
auto i cOli, cOlj, cOlk; * other color indices
t delta(symmetric), cOlf(antisymmetric), cOlT, cOlTr(cyclic);
f T1, T2;
*CommuteInSet{T1,T2};
****************************************
* utilities
s sumi, sumj, sumij;
s ranktag, numtag, Quad;
cf den, den2, rat, tensor;
s b1,...,b4; 

s Ioperator;
cf Int, T, Log;
f Chain;

**************************************** 
* integrals 
s logc;
cf Log, Li;
s Pi;

**************************************** 
* C formating
s logs12, logs13, logs14, logs23, logs24, logs34, logs13s14, logs23s24;
s p1E3, p2E3, p4E3, p1E4, p2E4, p3E4, E3E4;
s Li1, Li2, Li3;
s denom1,...,denom4;
cf minkovski;

.global
