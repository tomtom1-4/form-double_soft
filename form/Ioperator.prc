#procedure Ioperator

.sort

s gamman, gammag, b0;

#do i=1,3
  #do j={`i'+1},3
    id T(`i')*T(`j') =
       Ioperator*2*( 1/ep^2
                    +1/ep*(-Log(s`i'`j'/(s12+s13+s23))-Log(-s12-s13-s23)
                           +Log(p`i'n/(p1n+p2n+p3n))+Log(p`j'n/(p1n+p2n+p3n))));
  #enddo
#enddo

if (occurs(U0));
  mul 1+Ioperator*1/(2*ep)*(-gamman);
else;
  mul 1+Ioperator*1/(2*ep)*(-gammag);
endif;

if (occurs(UBar1));
  mul 1+Ioperator*1/(2*ep)*(4*CF*Log(p1n/(p1n+p2n+p3n))+gamman);
else;
  mul 1+Ioperator*1/(2*ep)*(4*CA*Log(p1n/(p1n+p2n+p3n))+gammag);
endif;

*if (occurs(UBar2));
*  mul 1+Ioperator*1/(2*ep)*(4*CF*Log(p2n/(p1n+p2n+p3n))+gamman);
*else;
*  mul 1+Ioperator*1/(2*ep)*(4*CA*Log(p2n/(p1n+p2n+p3n))+gammag);
*endif;

if (occurs(V2));
  mul 1+Ioperator*1/(2*ep)*(4*CF*Log(p3n/(p1n+p2n+p3n))+gamman);
else;
  mul 1+Ioperator*1/(2*ep)*(4*CA*Log(p3n/(p1n+p2n+p3n))+gammag);
endif;

mul 1+Ioperator*1/ep*b0;

if (count(Ioperator,1) > 1) discard;

id gamman = -3*CF;
id gammag = -b0;

id b0 = 11/3*CA-4/3*TF*nl;

id CA = 3;
id CF = 4/3;
id TF = 1/2;

.sort

#endprocedure
