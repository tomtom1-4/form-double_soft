#procedure Notation
********************************************************************************
* Standard notation for open spinor chains

id g_(v1?,v2?) = G(v2);
chainin G;

* standard chain order
id UBar2?{UBar1,UBar2}*G(?args2)*V3*UBar1?{UBar1,UBar2}*G(?args1)*U0 = UBar1*G(?args1)*U0*UBar2*G(?args2)*V3;

* standard summation order
id UBar1?{UBar1,UBar2}*G(?args11,v1?,v2?,?args12)*U0*UBar2?{UBar1,UBar2}*G(?args21,v2?,v1?,?args22)*V3 =
  -UBar1*G(?args11,v1,v2,?args12)*U0*UBar2*G(?args21,v1,v2,?args22)*V3
  +2*d*UBar1*G(?args11,?args12)*U0*UBar2*G(?args21,?args22)*V3;

* standard index naming
* warning: only safe if there are at most three summed indices
id UBar1?{UBar1,UBar2}*G(?args11,v1?,v2?,v3?,?args12)*U0*UBar2?{UBar1,UBar2}*G(?args21,v1?,v2?,v3?,?args22)*V3 =
   UBar1*G(?args11,mu1,mu2,mu3,?args12)*U0*UBar2*G(?args21,mu1,mu2,mu3,?args22)*V3;

al UBar1?{UBar1,UBar2}*G(?args11,v1?,v2?,?args12)*U0*UBar2?{UBar1,UBar2}*G(?args21,v1?,v2?,?args22)*V3 =
   UBar1*G(?args11,nu1,nu2,?args12)*U0*UBar2*G(?args21,nu1,nu2,?args22)*V3;

al UBar1?{UBar1,UBar2}*G(?args11,v?,?args12)*U0*UBar2?{UBar1,UBar2}*G(?args21,v?,?args22)*V3 =
   UBar1*G(?args11,mu,?args12)*U0*UBar2*G(?args21,mu,?args22)*V3;

* back to form notation for gamma matrices
*id UBar1?{UBar1,UBar2}*G(?args1)*U0*UBar2?{UBar1,UBar2}*G(?args2)*V3 = UBar1*g_(0,?args1)*U0*UBar2*g_(1,?args2)*V3;

mul l Chain();
repeat;
  id Chain(?args)*U?{U0,UBar1,UBar2,V3} = Chain(?args,U);
  id Chain(?args1)*G(?args2) = Chain(?args1,G(?args2));
endrepeat;
id Chain() = 1;

id DS?{DS,Eik}(p?) = Int(DS(p));
repeat id Int(n1?)*Int(n2?) = Int(n1*n2);
id Int(n?$integrand) = Int(n);

.sort

#endprocedure
