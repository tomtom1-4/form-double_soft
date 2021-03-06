#procedure Integrands3liners

* Generated by FormCode.nb

b DS,Eik,k;
.sort
Keep Brackets;

if ((count(DS,1) == 1) && (count(Eik,1) == 2));


* DS(k)*Eik(k+p3)*Eik(k-p4)

id DS(k+p3)*Eik(k,r1?)*Eik(k+p3+p4,r2?) = DS(k+p3)*Eik(k,r1)*Eik(k+p3+p4,r2)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k,r1?)*Eik(k+p3+p4,r2?) = DS(k+p4)*Eik(k,r1)*Eik(k+p3+p4,r2)*replace_(k,k-p4);
id DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k+p4,r2?) = DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k+p4,r2)*replace_(k,k+p3-p4);
id DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k-p4,r2?) = DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k-p4,r2)*replace_(k,-k-p3+p4);
id DS(k-p4)*Eik(k,r1?)*Eik(k-p3-p4,r2?) = DS(k-p4)*Eik(k,r1)*Eik(k-p3-p4,r2)*replace_(k,-k+p4);
id DS(k-p3)*Eik(k,r1?)*Eik(k-p3-p4,r2?) = DS(k-p3)*Eik(k,r1)*Eik(k-p3-p4,r2)*replace_(k,k+p3);
id DS(k)*Eik(k-p3,r1?)*Eik(k+p4,r2?) = DS(k)*Eik(k-p3,r1)*Eik(k+p4,r2)*replace_(k,-k);

* DS(k)*Eik(k)*Eik(k+p3+p4)

id DS(k+p3+p4)*Eik(k,r1?)*Eik(k+p3+p4,r2?) = DS(k+p3+p4)*Eik(k,r1)*Eik(k+p3+p4,r2)*replace_(k,-k-p3-p4);
id DS(k+p3)*Eik(k+p3,r1?)*Eik(k-p4,r2?) = DS(k+p3)*Eik(k+p3,r1)*Eik(k-p4,r2)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k-p3,r1?)*Eik(k+p4,r2?) = DS(k+p4)*Eik(k-p3,r1)*Eik(k+p4,r2)*replace_(k,-k-p4);
id DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p3-p4,r2?) = DS(k-p3-p4)*Eik(k,r1)*Eik(k-p3-p4,r2)*replace_(k,k+p3+p4);
id DS(k-p3)*Eik(k-p3,r1?)*Eik(k+p4,r2?) = DS(k-p3)*Eik(k-p3,r1)*Eik(k+p4,r2)*replace_(k,k+p3);
id DS(k-p4)*Eik(k+p3,r1?)*Eik(k-p4,r2?) = DS(k-p4)*Eik(k+p3,r1)*Eik(k-p4,r2)*replace_(k,k+p4);
id DS(k)*Eik(k,r1?)*Eik(k-p3-p4,r2?) = DS(k)*Eik(k,r1)*Eik(k-p3-p4,r2)*replace_(k,-k);

* DS(k)*Eik(k+p3+p4)^2

id DS(k+p3+p4)*Eik(k,r1?)*Eik(k,r4?) = DS(k+p3+p4)*Eik(k,r1)*Eik(k,r4)*replace_(k,-k-p3-p4);
id DS(k+p3)*Eik(k-p4,r1?)*Eik(k-p4,r4?) = DS(k+p3)*Eik(k-p4,r1)*Eik(k-p4,r4)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?) = DS(k+p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*replace_(k,-k-p4);
id DS(k-p3-p4)*Eik(k,r1?)*Eik(k,r4?) = DS(k-p3-p4)*Eik(k,r1)*Eik(k,r4)*replace_(k,k+p3+p4);
id DS(k-p3)*Eik(k+p4,r1?)*Eik(k+p4,r4?) = DS(k-p3)*Eik(k+p4,r1)*Eik(k+p4,r4)*replace_(k,k+p3);
id DS(k-p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?) = DS(k-p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*replace_(k,k+p4);
id DS(k)*Eik(k-p3-p4,r1?)*Eik(k-p3-p4,r4?) = DS(k)*Eik(k-p3-p4,r1)*Eik(k-p3-p4,r4)*replace_(k,-k);

* DS(k)*Eik(k+p3)*Eik(k+p3+p4)

id DS(k+p3+p4)*Eik(k,r1?)*Eik(k+p4,r2?) = DS(k+p3+p4)*Eik(k,r1)*Eik(k+p4,r2)*replace_(k,-k-p3-p4);
id DS(k+p3)*Eik(k,r1?)*Eik(k-p4,r2?) = DS(k+p3)*Eik(k,r1)*Eik(k-p4,r2)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k-p3,r1?)*Eik(k-p3+p4,r2?) = DS(k+p4)*Eik(k-p3,r1)*Eik(k-p3+p4,r2)*replace_(k,-k-p4);
id DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p4,r2?) = DS(k-p3-p4)*Eik(k,r1)*Eik(k-p4,r2)*replace_(k,k+p3+p4);
id DS(k-p3)*Eik(k,r1?)*Eik(k+p4,r2?) = DS(k-p3)*Eik(k,r1)*Eik(k+p4,r2)*replace_(k,k+p3);
id DS(k-p4)*Eik(k+p3,r1?)*Eik(k+p3-p4,r2?) = DS(k-p4)*Eik(k+p3,r1)*Eik(k+p3-p4,r2)*replace_(k,k+p4);
id DS(k)*Eik(k-p3,r1?)*Eik(k-p3-p4,r2?) = DS(k)*Eik(k-p3,r1)*Eik(k-p3-p4,r2)*replace_(k,-k);

* DS(k)*Eik(k)*Eik(k-p4)

id DS(k+p3)*Eik(k+p3,r1?)*Eik(k+p3+p4,r2?) = DS(k+p3)*Eik(k+p3,r1)*Eik(k+p3+p4,r2)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k,r1?)*Eik(k+p4,r2?) = DS(k+p4)*Eik(k,r1)*Eik(k+p4,r2)*replace_(k,k-p4);
id DS(k+p3)*Eik(k+p3,r1?)*Eik(k+p3-p4,r2?) = DS(k+p3)*Eik(k+p3,r1)*Eik(k+p3-p4,r2)*replace_(k,k-p3);
id DS(k+p3+p4)*Eik(k+p3,r1?)*Eik(k+p3+p4,r2?) = DS(k+p3+p4)*Eik(k+p3,r1)*Eik(k+p3+p4,r2)*replace_(k,k-p3-p4);
id DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k-p3+p4,r2?) = DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k-p3+p4,r2)*replace_(k,k+p3-p4);
id DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k+p3-p4,r2?) = DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k+p3-p4,r2)*replace_(k,-k-p3+p4);
id DS(k-p3-p4)*Eik(k-p3,r1?)*Eik(k-p3-p4,r2?) = DS(k-p3-p4)*Eik(k-p3,r1)*Eik(k-p3-p4,r2)*replace_(k,-k+p3+p4);
id DS(k-p4)*Eik(k,r1?)*Eik(k-p4,r2?) = DS(k-p4)*Eik(k,r1)*Eik(k-p4,r2)*replace_(k,-k+p4);
id DS(k-p3)*Eik(k-p3,r1?)*Eik(k-p3+p4,r2?) = DS(k-p3)*Eik(k-p3,r1)*Eik(k-p3+p4,r2)*replace_(k,-k+p3);
id DS(k-p3)*Eik(k-p3,r1?)*Eik(k-p3-p4,r2?) = DS(k-p3)*Eik(k-p3,r1)*Eik(k-p3-p4,r2)*replace_(k,k+p3);
id DS(k)*Eik(k,r1?)*Eik(k+p4,r2?) = DS(k)*Eik(k,r1)*Eik(k+p4,r2)*replace_(k,-k);

* DS(k)*Eik(k-p3)*Eik(k-p3+p4)

id DS(k+p4)*Eik(k+p3,r1?)*Eik(k+p3+p4,r2?) = DS(k+p4)*Eik(k+p3,r1)*Eik(k+p3+p4,r2)*replace_(k,-k-p4);
id DS(k+p3)*Eik(k,r1?)*Eik(k+p4,r2?) = DS(k+p3)*Eik(k,r1)*Eik(k+p4,r2)*replace_(k,k-p3);
id DS(k+p3-p4)*Eik(k,r1?)*Eik(k-p4,r2?) = DS(k+p3-p4)*Eik(k,r1)*Eik(k-p4,r2)*replace_(k,k-p3+p4);
id DS(k-p3+p4)*Eik(k,r1?)*Eik(k+p4,r2?) = DS(k-p3+p4)*Eik(k,r1)*Eik(k+p4,r2)*replace_(k,-k+p3-p4);
id DS(k-p3)*Eik(k,r1?)*Eik(k-p4,r2?) = DS(k-p3)*Eik(k,r1)*Eik(k-p4,r2)*replace_(k,-k+p3);
id DS(k-p4)*Eik(k-p3,r1?)*Eik(k-p3-p4,r2?) = DS(k-p4)*Eik(k-p3,r1)*Eik(k-p3-p4,r2)*replace_(k,k+p4);
id DS(k)*Eik(k+p3,r1?)*Eik(k+p3-p4,r2?) = DS(k)*Eik(k+p3,r1)*Eik(k+p3-p4,r2)*replace_(k,-k);

* DS(k)*Eik(k)*Eik(k+p4)

id DS(k+p3+p4)*Eik(k+p3,r1?)*Eik(k+p3+p4,r2?) = DS(k+p3+p4)*Eik(k+p3,r1)*Eik(k+p3+p4,r2)*replace_(k,-k-p3-p4);
id DS(k+p3)*Eik(k+p3,r1?)*Eik(k+p3-p4,r2?) = DS(k+p3)*Eik(k+p3,r1)*Eik(k+p3-p4,r2)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k,r1?)*Eik(k+p4,r2?) = DS(k+p4)*Eik(k,r1)*Eik(k+p4,r2)*replace_(k,-k-p4);
id DS(k+p3)*Eik(k+p3,r1?)*Eik(k+p3+p4,r2?) = DS(k+p3)*Eik(k+p3,r1)*Eik(k+p3+p4,r2)*replace_(k,k-p3);
id DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k+p3-p4,r2?) = DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k+p3-p4,r2)*replace_(k,k-p3+p4);
id DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k-p3+p4,r2?) = DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k-p3+p4,r2)*replace_(k,-k+p3-p4);
id DS(k-p3-p4)*Eik(k-p3,r1?)*Eik(k-p3-p4,r2?) = DS(k-p3-p4)*Eik(k-p3,r1)*Eik(k-p3-p4,r2)*replace_(k,k+p3+p4);
id DS(k-p3)*Eik(k-p3,r1?)*Eik(k-p3-p4,r2?) = DS(k-p3)*Eik(k-p3,r1)*Eik(k-p3-p4,r2)*replace_(k,-k+p3);
id DS(k-p3)*Eik(k-p3,r1?)*Eik(k-p3+p4,r2?) = DS(k-p3)*Eik(k-p3,r1)*Eik(k-p3+p4,r2)*replace_(k,k+p3);
id DS(k-p4)*Eik(k,r1?)*Eik(k-p4,r2?) = DS(k-p4)*Eik(k,r1)*Eik(k-p4,r2)*replace_(k,k+p4);
id DS(k)*Eik(k,r1?)*Eik(k-p4,r2?) = DS(k)*Eik(k,r1)*Eik(k-p4,r2)*replace_(k,-k);

* DS(k)*Eik(k+p4)^2

id DS(k+p3+p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?) = DS(k+p3+p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*replace_(k,-k-p3-p4);
id DS(k+p3)*Eik(k+p3-p4,r1?)*Eik(k+p3-p4,r4?) = DS(k+p3)*Eik(k+p3-p4,r1)*Eik(k+p3-p4,r4)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k,r1?)*Eik(k,r4?) = DS(k+p4)*Eik(k,r1)*Eik(k,r4)*replace_(k,-k-p4);
id DS(k+p3)*Eik(k+p3+p4,r1?)*Eik(k+p3+p4,r4?) = DS(k+p3)*Eik(k+p3+p4,r1)*Eik(k+p3+p4,r4)*replace_(k,k-p3);
id DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?) = DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*replace_(k,k-p3+p4);
id DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?) = DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*replace_(k,-k+p3-p4);
id DS(k-p3-p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?) = DS(k-p3-p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*replace_(k,k+p3+p4);
id DS(k-p3)*Eik(k-p3-p4,r1?)*Eik(k-p3-p4,r4?) = DS(k-p3)*Eik(k-p3-p4,r1)*Eik(k-p3-p4,r4)*replace_(k,-k+p3);
id DS(k-p3)*Eik(k-p3+p4,r1?)*Eik(k-p3+p4,r4?) = DS(k-p3)*Eik(k-p3+p4,r1)*Eik(k-p3+p4,r4)*replace_(k,k+p3);
id DS(k-p4)*Eik(k,r1?)*Eik(k,r4?) = DS(k-p4)*Eik(k,r1)*Eik(k,r4)*replace_(k,k+p4);
id DS(k)*Eik(k-p4,r1?)*Eik(k-p4,r4?) = DS(k)*Eik(k-p4,r1)*Eik(k-p4,r4)*replace_(k,-k);

* DS(k)*Eik(k+p3-p4)^2

id DS(k+p3)*Eik(k+p4,r1?)*Eik(k+p4,r4?) = DS(k+p3)*Eik(k+p4,r1)*Eik(k+p4,r4)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?) = DS(k+p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*replace_(k,k-p4);
id DS(k-p3+p4)*Eik(k,r1?)*Eik(k,r4?) = DS(k-p3+p4)*Eik(k,r1)*Eik(k,r4)*replace_(k,k+p3-p4);
id DS(k+p3-p4)*Eik(k,r1?)*Eik(k,r4?) = DS(k+p3-p4)*Eik(k,r1)*Eik(k,r4)*replace_(k,-k-p3+p4);
id DS(k-p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?) = DS(k-p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*replace_(k,-k+p4);
id DS(k-p3)*Eik(k-p4,r1?)*Eik(k-p4,r4?) = DS(k-p3)*Eik(k-p4,r1)*Eik(k-p4,r4)*replace_(k,k+p3);
id DS(k)*Eik(k-p3+p4,r1?)*Eik(k-p3+p4,r4?) = DS(k)*Eik(k-p3+p4,r1)*Eik(k-p3+p4,r4)*replace_(k,-k);

* DS(k)*Eik(k)^2

id DS(k+p3+p4)*Eik(k+p3+p4,r1?)*Eik(k+p3+p4,r4?) = DS(k+p3+p4)*Eik(k+p3+p4,r1)*Eik(k+p3+p4,r4)*replace_(k,-k-p3-p4);
id DS(k+p3)*Eik(k+p3,r1?)*Eik(k+p3,r4?) = DS(k+p3)*Eik(k+p3,r1)*Eik(k+p3,r4)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?) = DS(k+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*replace_(k,-k-p4);
id DS(k+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?) = DS(k+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*replace_(k,k-p4);
id DS(k+p3)*Eik(k+p3,r1?)*Eik(k+p3,r4?) = DS(k+p3)*Eik(k+p3,r1)*Eik(k+p3,r4)*replace_(k,k-p3);
id DS(k+p3+p4)*Eik(k+p3+p4,r1?)*Eik(k+p3+p4,r4?) = DS(k+p3+p4)*Eik(k+p3+p4,r1)*Eik(k+p3+p4,r4)*replace_(k,k-p3-p4);
id DS(k-p3+p4)*Eik(k-p3+p4,r1?)*Eik(k-p3+p4,r4?) = DS(k-p3+p4)*Eik(k-p3+p4,r1)*Eik(k-p3+p4,r4)*replace_(k,k+p3-p4);
id DS(k+p3-p4)*Eik(k+p3-p4,r1?)*Eik(k+p3-p4,r4?) = DS(k+p3-p4)*Eik(k+p3-p4,r1)*Eik(k+p3-p4,r4)*replace_(k,k-p3+p4);
id DS(k+p3-p4)*Eik(k+p3-p4,r1?)*Eik(k+p3-p4,r4?) = DS(k+p3-p4)*Eik(k+p3-p4,r1)*Eik(k+p3-p4,r4)*replace_(k,-k-p3+p4);
id DS(k-p3+p4)*Eik(k-p3+p4,r1?)*Eik(k-p3+p4,r4?) = DS(k-p3+p4)*Eik(k-p3+p4,r1)*Eik(k-p3+p4,r4)*replace_(k,-k+p3-p4);
id DS(k-p3-p4)*Eik(k-p3-p4,r1?)*Eik(k-p3-p4,r4?) = DS(k-p3-p4)*Eik(k-p3-p4,r1)*Eik(k-p3-p4,r4)*replace_(k,-k+p3+p4);
id DS(k-p3-p4)*Eik(k-p3-p4,r1?)*Eik(k-p3-p4,r4?) = DS(k-p3-p4)*Eik(k-p3-p4,r1)*Eik(k-p3-p4,r4)*replace_(k,k+p3+p4);
id DS(k-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?) = DS(k-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*replace_(k,-k+p4);
id DS(k-p3)*Eik(k-p3,r1?)*Eik(k-p3,r4?) = DS(k-p3)*Eik(k-p3,r1)*Eik(k-p3,r4)*replace_(k,-k+p3);
id DS(k-p3)*Eik(k-p3,r1?)*Eik(k-p3,r4?) = DS(k-p3)*Eik(k-p3,r1)*Eik(k-p3,r4)*replace_(k,k+p3);
id DS(k-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?) = DS(k-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*replace_(k,k+p4);

* DS(k)*Eik(k+p3)^2

id DS(k+p3+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?) = DS(k+p3+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*replace_(k,-k-p3-p4);
id DS(k+p3)*Eik(k,r1?)*Eik(k,r4?) = DS(k+p3)*Eik(k,r1)*Eik(k,r4)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k-p3+p4,r1?)*Eik(k-p3+p4,r4?) = DS(k+p4)*Eik(k-p3+p4,r1)*Eik(k-p3+p4,r4)*replace_(k,-k-p4);
id DS(k+p4)*Eik(k+p3+p4,r1?)*Eik(k+p3+p4,r4?) = DS(k+p4)*Eik(k+p3+p4,r1)*Eik(k+p3+p4,r4)*replace_(k,k-p4);
id DS(k-p3+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?) = DS(k-p3+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*replace_(k,k+p3-p4);
id DS(k+p3-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?) = DS(k+p3-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*replace_(k,-k-p3+p4);
id DS(k-p3-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?) = DS(k-p3-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*replace_(k,k+p3+p4);
id DS(k-p4)*Eik(k-p3-p4,r1?)*Eik(k-p3-p4,r4?) = DS(k-p4)*Eik(k-p3-p4,r1)*Eik(k-p3-p4,r4)*replace_(k,-k+p4);
id DS(k-p3)*Eik(k,r1?)*Eik(k,r4?) = DS(k-p3)*Eik(k,r1)*Eik(k,r4)*replace_(k,k+p3);
id DS(k-p4)*Eik(k+p3-p4,r1?)*Eik(k+p3-p4,r4?) = DS(k-p4)*Eik(k+p3-p4,r1)*Eik(k+p3-p4,r4)*replace_(k,k+p4);
id DS(k)*Eik(k-p3,r1?)*Eik(k-p3,r4?) = DS(k)*Eik(k-p3,r1)*Eik(k-p3,r4)*replace_(k,-k);

* DS(k)*Eik(k+p4)*Eik(k+p3+p4)

id DS(k+p3+p4)*Eik(k,r1?)*Eik(k+p3,r2?) = DS(k+p3+p4)*Eik(k,r1)*Eik(k+p3,r2)*replace_(k,-k-p3-p4);
id DS(k+p3)*Eik(k-p4,r1?)*Eik(k+p3-p4,r2?) = DS(k+p3)*Eik(k-p4,r1)*Eik(k+p3-p4,r2)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k,r1?)*Eik(k-p3,r2?) = DS(k+p4)*Eik(k,r1)*Eik(k-p3,r2)*replace_(k,-k-p4);
id DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p3,r2?) = DS(k-p3-p4)*Eik(k,r1)*Eik(k-p3,r2)*replace_(k,k+p3+p4);
id DS(k-p3)*Eik(k+p4,r1?)*Eik(k-p3+p4,r2?) = DS(k-p3)*Eik(k+p4,r1)*Eik(k-p3+p4,r2)*replace_(k,k+p3);
id DS(k-p4)*Eik(k,r1?)*Eik(k+p3,r2?) = DS(k-p4)*Eik(k,r1)*Eik(k+p3,r2)*replace_(k,k+p4);
id DS(k)*Eik(k-p4,r1?)*Eik(k-p3-p4,r2?) = DS(k)*Eik(k-p4,r1)*Eik(k-p3-p4,r2)*replace_(k,-k);

* DS(k)*Eik(k+p4)*Eik(k-p3+p4)

id DS(k+p4)*Eik(k,r1?)*Eik(k+p3,r2?) = DS(k+p4)*Eik(k,r1)*Eik(k+p3,r2)*replace_(k,-k-p4);
id DS(k+p3)*Eik(k+p4,r1?)*Eik(k+p3+p4,r2?) = DS(k+p3)*Eik(k+p4,r1)*Eik(k+p3+p4,r2)*replace_(k,k-p3);
id DS(k+p3-p4)*Eik(k,r1?)*Eik(k+p3,r2?) = DS(k+p3-p4)*Eik(k,r1)*Eik(k+p3,r2)*replace_(k,k-p3+p4);
id DS(k-p3+p4)*Eik(k,r1?)*Eik(k-p3,r2?) = DS(k-p3+p4)*Eik(k,r1)*Eik(k-p3,r2)*replace_(k,-k+p3-p4);
id DS(k-p3)*Eik(k-p4,r1?)*Eik(k-p3-p4,r2?) = DS(k-p3)*Eik(k-p4,r1)*Eik(k-p3-p4,r2)*replace_(k,-k+p3);
id DS(k-p4)*Eik(k,r1?)*Eik(k-p3,r2?) = DS(k-p4)*Eik(k,r1)*Eik(k-p3,r2)*replace_(k,k+p4);
id DS(k)*Eik(k-p4,r1?)*Eik(k+p3-p4,r2?) = DS(k)*Eik(k-p4,r1)*Eik(k+p3-p4,r2)*replace_(k,-k);

* DS(k)*Eik(k)*Eik(k-p3)

id DS(k+p4)*Eik(k+p4,r1?)*Eik(k+p3+p4,r2?) = DS(k+p4)*Eik(k+p4,r1)*Eik(k+p3+p4,r2)*replace_(k,-k-p4);
id DS(k+p4)*Eik(k+p4,r1?)*Eik(k-p3+p4,r2?) = DS(k+p4)*Eik(k+p4,r1)*Eik(k-p3+p4,r2)*replace_(k,k-p4);
id DS(k+p3)*Eik(k,r1?)*Eik(k+p3,r2?) = DS(k+p3)*Eik(k,r1)*Eik(k+p3,r2)*replace_(k,k-p3);
id DS(k+p3+p4)*Eik(k+p4,r1?)*Eik(k+p3+p4,r2?) = DS(k+p3+p4)*Eik(k+p4,r1)*Eik(k+p3+p4,r2)*replace_(k,k-p3-p4);
id DS(k+p3-p4)*Eik(k-p4,r1?)*Eik(k+p3-p4,r2?) = DS(k+p3-p4)*Eik(k-p4,r1)*Eik(k+p3-p4,r2)*replace_(k,k-p3+p4);
id DS(k-p3+p4)*Eik(k+p4,r1?)*Eik(k-p3+p4,r2?) = DS(k-p3+p4)*Eik(k+p4,r1)*Eik(k-p3+p4,r2)*replace_(k,-k+p3-p4);
id DS(k-p3-p4)*Eik(k-p4,r1?)*Eik(k-p3-p4,r2?) = DS(k-p3-p4)*Eik(k-p4,r1)*Eik(k-p3-p4,r2)*replace_(k,-k+p3+p4);
id DS(k-p4)*Eik(k-p4,r1?)*Eik(k+p3-p4,r2?) = DS(k-p4)*Eik(k-p4,r1)*Eik(k+p3-p4,r2)*replace_(k,-k+p4);
id DS(k-p3)*Eik(k,r1?)*Eik(k-p3,r2?) = DS(k-p3)*Eik(k,r1)*Eik(k-p3,r2)*replace_(k,-k+p3);
id DS(k-p4)*Eik(k-p4,r1?)*Eik(k-p3-p4,r2?) = DS(k-p4)*Eik(k-p4,r1)*Eik(k-p3-p4,r2)*replace_(k,k+p4);
id DS(k)*Eik(k,r1?)*Eik(k+p3,r2?) = DS(k)*Eik(k,r1)*Eik(k+p3,r2)*replace_(k,-k);

* DS(k)*Eik(k)*Eik(k+p3)

id DS(k+p3+p4)*Eik(k+p4,r1?)*Eik(k+p3+p4,r2?) = DS(k+p3+p4)*Eik(k+p4,r1)*Eik(k+p3+p4,r2)*replace_(k,-k-p3-p4);
id DS(k+p3)*Eik(k,r1?)*Eik(k+p3,r2?) = DS(k+p3)*Eik(k,r1)*Eik(k+p3,r2)*replace_(k,-k-p3);
id DS(k+p4)*Eik(k+p4,r1?)*Eik(k-p3+p4,r2?) = DS(k+p4)*Eik(k+p4,r1)*Eik(k-p3+p4,r2)*replace_(k,-k-p4);
id DS(k+p4)*Eik(k+p4,r1?)*Eik(k+p3+p4,r2?) = DS(k+p4)*Eik(k+p4,r1)*Eik(k+p3+p4,r2)*replace_(k,k-p4);
id DS(k-p3+p4)*Eik(k+p4,r1?)*Eik(k-p3+p4,r2?) = DS(k-p3+p4)*Eik(k+p4,r1)*Eik(k-p3+p4,r2)*replace_(k,k+p3-p4);
id DS(k+p3-p4)*Eik(k-p4,r1?)*Eik(k+p3-p4,r2?) = DS(k+p3-p4)*Eik(k-p4,r1)*Eik(k+p3-p4,r2)*replace_(k,-k-p3+p4);
id DS(k-p3-p4)*Eik(k-p4,r1?)*Eik(k-p3-p4,r2?) = DS(k-p3-p4)*Eik(k-p4,r1)*Eik(k-p3-p4,r2)*replace_(k,k+p3+p4);
id DS(k-p4)*Eik(k-p4,r1?)*Eik(k-p3-p4,r2?) = DS(k-p4)*Eik(k-p4,r1)*Eik(k-p3-p4,r2)*replace_(k,-k+p4);
id DS(k-p3)*Eik(k,r1?)*Eik(k-p3,r2?) = DS(k-p3)*Eik(k,r1)*Eik(k-p3,r2)*replace_(k,k+p3);
id DS(k-p4)*Eik(k-p4,r1?)*Eik(k+p3-p4,r2?) = DS(k-p4)*Eik(k-p4,r1)*Eik(k+p3-p4,r2)*replace_(k,k+p4);
id DS(k)*Eik(k,r1?)*Eik(k-p3,r2?) = DS(k)*Eik(k,r1)*Eik(k-p3,r2)*replace_(k,-k);

elseif ((count(DS,1) == 2) && (count(Eik,1) == 1));


* DS(k)*DS(k+p4)*Eik(k+p3+p4)

id DS(k+p3)*DS(k+p3+p4)*Eik(k,r1?) = DS(k+p3)*DS(k+p3+p4)*Eik(k,r1)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k+p3-p4)*Eik(k-p4,r1?) = DS(k+p3)*DS(k+p3-p4)*Eik(k-p4,r1)*replace_(k,-k-p3);
id DS(k)*DS(k+p4)*Eik(k-p3,r1?) = DS(k)*DS(k+p4)*Eik(k-p3,r1)*replace_(k,-k-p4);
id DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?) = DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k-p3+p4)*Eik(k+p4,r1?) = DS(k-p3)*DS(k-p3+p4)*Eik(k+p4,r1)*replace_(k,k+p3);
id DS(k)*DS(k-p4)*Eik(k+p3,r1?) = DS(k)*DS(k-p4)*Eik(k+p3,r1)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*Eik(k-p3-p4,r1?) = DS(k)*DS(k-p4)*Eik(k-p3-p4,r1)*replace_(k,-k);

* DS(k)*DS(k+p3+p4)*Eik(k+p3+p4)

id DS(k)*DS(k+p3+p4)*Eik(k,r1?) = DS(k)*DS(k+p3+p4)*Eik(k,r1)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*Eik(k-p4,r1?) = DS(k+p3)*DS(k-p4)*Eik(k-p4,r1)*replace_(k,-k-p3);
id DS(k-p3)*DS(k+p4)*Eik(k-p3,r1?) = DS(k-p3)*DS(k+p4)*Eik(k-p3,r1)*replace_(k,-k-p4);
id DS(k)*DS(k-p3-p4)*Eik(k,r1?) = DS(k)*DS(k-p3-p4)*Eik(k,r1)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*Eik(k+p4,r1?) = DS(k-p3)*DS(k+p4)*Eik(k+p4,r1)*replace_(k,k+p3);
id DS(k+p3)*DS(k-p4)*Eik(k+p3,r1?) = DS(k+p3)*DS(k-p4)*Eik(k+p3,r1)*replace_(k,k+p4);
id DS(k)*DS(k-p3-p4)*Eik(k-p3-p4,r1?) = DS(k)*DS(k-p3-p4)*Eik(k-p3-p4,r1)*replace_(k,-k);

* DS(k)*DS(k+p3)*Eik(k+p3+p4)

id DS(k+p4)*DS(k+p3+p4)*Eik(k,r1?) = DS(k+p4)*DS(k+p3+p4)*Eik(k,r1)*replace_(k,-k-p3-p4);
id DS(k)*DS(k+p3)*Eik(k-p4,r1?) = DS(k)*DS(k+p3)*Eik(k-p4,r1)*replace_(k,-k-p3);
id DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1?) = DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1)*replace_(k,-k-p4);
id DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?) = DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*replace_(k,k+p3+p4);
id DS(k)*DS(k-p3)*Eik(k+p4,r1?) = DS(k)*DS(k-p3)*Eik(k+p4,r1)*replace_(k,k+p3);
id DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1?) = DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1)*replace_(k,k+p4);
id DS(k)*DS(k-p3)*Eik(k-p3-p4,r1?) = DS(k)*DS(k-p3)*Eik(k-p3-p4,r1)*replace_(k,-k);

* DS(k)*DS(k+p3)*Eik(k+p4)

id DS(k+p4)*DS(k+p3+p4)*Eik(k+p3,r1?) = DS(k+p4)*DS(k+p3+p4)*Eik(k+p3,r1)*replace_(k,-k-p3-p4);
id DS(k)*DS(k+p3)*Eik(k+p3-p4,r1?) = DS(k)*DS(k+p3)*Eik(k+p3-p4,r1)*replace_(k,-k-p3);
id DS(k+p4)*DS(k-p3+p4)*Eik(k,r1?) = DS(k+p4)*DS(k-p3+p4)*Eik(k,r1)*replace_(k,-k-p4);
id DS(k-p4)*DS(k-p3-p4)*Eik(k-p3,r1?) = DS(k-p4)*DS(k-p3-p4)*Eik(k-p3,r1)*replace_(k,k+p3+p4);
id DS(k)*DS(k-p3)*Eik(k-p3+p4,r1?) = DS(k)*DS(k-p3)*Eik(k-p3+p4,r1)*replace_(k,k+p3);
id DS(k-p4)*DS(k+p3-p4)*Eik(k,r1?) = DS(k-p4)*DS(k+p3-p4)*Eik(k,r1)*replace_(k,k+p4);
id DS(k)*DS(k-p3)*Eik(k-p4,r1?) = DS(k)*DS(k-p3)*Eik(k-p4,r1)*replace_(k,-k);

* DS(k)*DS(k+p4)*Eik(k)

id DS(k+p3)*DS(k+p3+p4)*Eik(k+p3+p4,r1?) = DS(k+p3)*DS(k+p3+p4)*Eik(k+p3+p4,r1)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k+p3-p4)*Eik(k+p3,r1?) = DS(k+p3)*DS(k+p3-p4)*Eik(k+p3,r1)*replace_(k,-k-p3);
id DS(k)*DS(k+p4)*Eik(k+p4,r1?) = DS(k)*DS(k+p4)*Eik(k+p4,r1)*replace_(k,-k-p4);
id DS(k+p3)*DS(k+p3+p4)*Eik(k+p3,r1?) = DS(k+p3)*DS(k+p3+p4)*Eik(k+p3,r1)*replace_(k,k-p3);
id DS(k+p3)*DS(k+p3-p4)*Eik(k+p3-p4,r1?) = DS(k+p3)*DS(k+p3-p4)*Eik(k+p3-p4,r1)*replace_(k,k-p3+p4);
id DS(k-p3)*DS(k-p3+p4)*Eik(k-p3+p4,r1?) = DS(k-p3)*DS(k-p3+p4)*Eik(k-p3+p4,r1)*replace_(k,-k+p3-p4);
id DS(k-p3)*DS(k-p3-p4)*Eik(k-p3-p4,r1?) = DS(k-p3)*DS(k-p3-p4)*Eik(k-p3-p4,r1)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k-p3-p4)*Eik(k-p3,r1?) = DS(k-p3)*DS(k-p3-p4)*Eik(k-p3,r1)*replace_(k,-k+p3);
id DS(k-p3)*DS(k-p3+p4)*Eik(k-p3,r1?) = DS(k-p3)*DS(k-p3+p4)*Eik(k-p3,r1)*replace_(k,k+p3);
id DS(k)*DS(k-p4)*Eik(k-p4,r1?) = DS(k)*DS(k-p4)*Eik(k-p4,r1)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*Eik(k,r1?) = DS(k)*DS(k-p4)*Eik(k,r1)*replace_(k,-k);

* DS(k)*DS(k+p3+p4)*Eik(k+p3)

id DS(k)*DS(k+p3+p4)*Eik(k+p4,r1?) = DS(k)*DS(k+p3+p4)*Eik(k+p4,r1)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*Eik(k,r1?) = DS(k+p3)*DS(k-p4)*Eik(k,r1)*replace_(k,-k-p3);
id DS(k-p3)*DS(k+p4)*Eik(k-p3+p4,r1?) = DS(k-p3)*DS(k+p4)*Eik(k-p3+p4,r1)*replace_(k,-k-p4);
id DS(k)*DS(k-p3-p4)*Eik(k-p4,r1?) = DS(k)*DS(k-p3-p4)*Eik(k-p4,r1)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*Eik(k,r1?) = DS(k-p3)*DS(k+p4)*Eik(k,r1)*replace_(k,k+p3);
id DS(k+p3)*DS(k-p4)*Eik(k+p3-p4,r1?) = DS(k+p3)*DS(k-p4)*Eik(k+p3-p4,r1)*replace_(k,k+p4);
id DS(k)*DS(k-p3-p4)*Eik(k-p3,r1?) = DS(k)*DS(k-p3-p4)*Eik(k-p3,r1)*replace_(k,-k);

* DS(k)*DS(k+p4)*Eik(k+p3)

id DS(k+p3)*DS(k+p3+p4)*Eik(k+p4,r1?) = DS(k+p3)*DS(k+p3+p4)*Eik(k+p4,r1)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k+p3-p4)*Eik(k,r1?) = DS(k+p3)*DS(k+p3-p4)*Eik(k,r1)*replace_(k,-k-p3);
id DS(k)*DS(k+p4)*Eik(k-p3+p4,r1?) = DS(k)*DS(k+p4)*Eik(k-p3+p4,r1)*replace_(k,-k-p4);
id DS(k-p3)*DS(k-p3-p4)*Eik(k-p4,r1?) = DS(k-p3)*DS(k-p3-p4)*Eik(k-p4,r1)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k-p3+p4)*Eik(k,r1?) = DS(k-p3)*DS(k-p3+p4)*Eik(k,r1)*replace_(k,k+p3);
id DS(k)*DS(k-p4)*Eik(k+p3-p4,r1?) = DS(k)*DS(k-p4)*Eik(k+p3-p4,r1)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*Eik(k-p3,r1?) = DS(k)*DS(k-p4)*Eik(k-p3,r1)*replace_(k,-k);

* DS(k)*DS(k+p3)*Eik(k+p3)

id DS(k+p4)*DS(k+p3+p4)*Eik(k+p4,r1?) = DS(k+p4)*DS(k+p3+p4)*Eik(k+p4,r1)*replace_(k,-k-p3-p4);
id DS(k)*DS(k+p3)*Eik(k,r1?) = DS(k)*DS(k+p3)*Eik(k,r1)*replace_(k,-k-p3);
id DS(k+p4)*DS(k-p3+p4)*Eik(k-p3+p4,r1?) = DS(k+p4)*DS(k-p3+p4)*Eik(k-p3+p4,r1)*replace_(k,-k-p4);
id DS(k+p4)*DS(k+p3+p4)*Eik(k+p3+p4,r1?) = DS(k+p4)*DS(k+p3+p4)*Eik(k+p3+p4,r1)*replace_(k,k-p4);
id DS(k+p4)*DS(k-p3+p4)*Eik(k+p4,r1?) = DS(k+p4)*DS(k-p3+p4)*Eik(k+p4,r1)*replace_(k,k+p3-p4);
id DS(k-p4)*DS(k+p3-p4)*Eik(k-p4,r1?) = DS(k-p4)*DS(k+p3-p4)*Eik(k-p4,r1)*replace_(k,-k-p3+p4);
id DS(k-p4)*DS(k-p3-p4)*Eik(k-p4,r1?) = DS(k-p4)*DS(k-p3-p4)*Eik(k-p4,r1)*replace_(k,k+p3+p4);
id DS(k-p4)*DS(k-p3-p4)*Eik(k-p3-p4,r1?) = DS(k-p4)*DS(k-p3-p4)*Eik(k-p3-p4,r1)*replace_(k,-k+p4);
id DS(k)*DS(k-p3)*Eik(k,r1?) = DS(k)*DS(k-p3)*Eik(k,r1)*replace_(k,k+p3);
id DS(k-p4)*DS(k+p3-p4)*Eik(k+p3-p4,r1?) = DS(k-p4)*DS(k+p3-p4)*Eik(k+p3-p4,r1)*replace_(k,k+p4);
id DS(k)*DS(k-p3)*Eik(k-p3,r1?) = DS(k)*DS(k-p3)*Eik(k-p3,r1)*replace_(k,-k);

elseif ((count(DS,1) == 3) && (count(Eik,1) == 0));


* DS(k)*DS(k+p4)*DS(k+p3+p4)

id DS(k)*DS(k+p3)*DS(k+p3+p4) = DS(k)*DS(k+p3)*DS(k+p3+p4)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4) = DS(k)*DS(k-p3)*DS(k+p4)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4) = DS(k)*DS(k-p3)*DS(k-p3-p4)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4) = DS(k)*DS(k+p3)*DS(k-p4)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4) = DS(k)*DS(k-p4)*DS(k-p3-p4)*replace_(k,-k);

endif;

.sort

#call Kinematics
#call NormalizePropagators

#endprocedure