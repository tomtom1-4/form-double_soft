#procedure Integrands6liners

* Generated by FormCode.nb

b DS,Eik,k;
.sort
Keep Brackets;

if ((count(DS,1) == 3) && (count(Eik,1) == 3));


* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k)*Eik(k+p4)*Eik(k+p3+p4)

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1?)*Eik(k+p3,r2?)*Eik(k+p3+p4,r3?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1)*Eik(k+p3,r2)*Eik(k+p3+p4,r3)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k-p4,r2?)*Eik(k+p3-p4,r3?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k-p4,r2)*Eik(k+p3-p4,r3)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1?)*Eik(k-p3,r2?)*Eik(k+p4,r3?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1)*Eik(k-p3,r2)*Eik(k+p4,r3)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p3,r2?)*Eik(k-p3-p4,r3?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p3,r2)*Eik(k-p3-p4,r3)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k+p4,r2?)*Eik(k-p3+p4,r3?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k+p4,r2)*Eik(k-p3+p4,r3)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1?)*Eik(k+p3,r2?)*Eik(k-p4,r3?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1)*Eik(k+p3,r2)*Eik(k-p4,r3)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p4,r2?)*Eik(k-p3-p4,r3?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p4,r2)*Eik(k-p3-p4,r3)*replace_(k,-k);

* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k)*Eik(k+p3)*Eik(k+p3+p4)

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1?)*Eik(k+p4,r2?)*Eik(k+p3+p4,r3?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1)*Eik(k+p4,r2)*Eik(k+p3+p4,r3)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1?)*Eik(k+p3,r2?)*Eik(k-p4,r3?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1)*Eik(k+p3,r2)*Eik(k-p4,r3)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1?)*Eik(k+p4,r2?)*Eik(k-p3+p4,r3?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1)*Eik(k+p4,r2)*Eik(k-p3+p4,r3)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p4,r2?)*Eik(k-p3-p4,r3?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p4,r2)*Eik(k-p3-p4,r3)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1?)*Eik(k-p3,r2?)*Eik(k+p4,r3?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1)*Eik(k-p3,r2)*Eik(k+p4,r3)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1?)*Eik(k-p4,r2?)*Eik(k+p3-p4,r3?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1)*Eik(k-p4,r2)*Eik(k+p3-p4,r3)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p3,r2?)*Eik(k-p3-p4,r3?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p3,r2)*Eik(k-p3-p4,r3)*replace_(k,-k);

* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k)^2*Eik(k+p3+p4)

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1?)*Eik(k+p3+p4,r2?)*Eik(k+p3+p4,r4?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1)*Eik(k+p3+p4,r2)*Eik(k+p3+p4,r4)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?)*Eik(k-p4,r2?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*Eik(k-p4,r2)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1?)*Eik(k+p4,r2?)*Eik(k+p4,r4?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1)*Eik(k+p4,r2)*Eik(k+p4,r4)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p3-p4,r2?)*Eik(k-p3-p4,r4?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p3-p4,r2)*Eik(k-p3-p4,r4)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k+p4,r2?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k+p4,r2)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1?)*Eik(k-p4,r2?)*Eik(k-p4,r4?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1)*Eik(k-p4,r2)*Eik(k-p4,r4)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p3-p4,r2?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p3-p4,r2)*replace_(k,-k);

* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k)*Eik(k+p3+p4)^2

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k+p3+p4,r2?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1)*Eik(k,r4)*Eik(k+p3+p4,r2)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k-p4,r2?)*Eik(k-p4,r4?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k-p4,r2)*Eik(k-p4,r4)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k+p4,r2?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k+p4,r2)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p3-p4,r2?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p3-p4,r2)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k+p4,r2?)*Eik(k+p4,r4?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k+p4,r2)*Eik(k+p4,r4)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?)*Eik(k-p4,r2?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*Eik(k-p4,r2)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p3-p4,r2?)*Eik(k-p3-p4,r4?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p3-p4,r2)*Eik(k-p3-p4,r4)*replace_(k,-k);

* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p3+p4)^3

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k,r5?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k,r1)*Eik(k,r4)*Eik(k,r5)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?)*Eik(k-p4,r5?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*Eik(k-p4,r5)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k-p3,r5?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k-p3,r5)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k,r5?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k,r5)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?)*Eik(k+p4,r5?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*Eik(k+p4,r5)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?)*Eik(k+p3,r5?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*Eik(k+p3,r5)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p3-p4,r1?)*Eik(k-p3-p4,r4?)*Eik(k-p3-p4,r5?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p3-p4,r1)*Eik(k-p3-p4,r4)*Eik(k-p3-p4,r5)*replace_(k,-k);

* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k)*Eik(k+p4)^2

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?)*Eik(k+p3+p4,r2?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*Eik(k+p3+p4,r2)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k+p3-p4,r2?)*Eik(k+p3-p4,r4?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k+p3-p4,r2)*Eik(k+p3-p4,r4)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k+p4,r2?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1)*Eik(k,r4)*Eik(k+p4,r2)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k-p3-p4,r2?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k-p3-p4,r2)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k-p3+p4,r2?)*Eik(k-p3+p4,r4?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k-p3+p4,r2)*Eik(k-p3+p4,r4)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p4,r2?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p4,r2)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p4,r2?)*Eik(k-p4,r4?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p4,r2)*Eik(k-p4,r4)*replace_(k,-k);

* DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k)*Eik(k+p4)^2

id DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?)*Eik(k+p3+p4,r2?) = DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*Eik(k+p3+p4,r2)*replace_(k,-k-p3-p4);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1?)*Eik(k+p3-p4,r2?)*Eik(k+p3-p4,r4?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1)*Eik(k+p3-p4,r2)*Eik(k+p3-p4,r4)*replace_(k,-k-p3);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k+p4,r2?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1)*Eik(k,r4)*Eik(k+p4,r2)*replace_(k,-k-p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k-p3-p4,r2?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k-p3-p4,r2)*replace_(k,k+p3+p4);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1?)*Eik(k-p3+p4,r2?)*Eik(k-p3+p4,r4?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1)*Eik(k-p3+p4,r2)*Eik(k-p3+p4,r4)*replace_(k,k+p3);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p4,r2?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p4,r2)*replace_(k,k+p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p4,r2?)*Eik(k-p4,r4?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p4,r2)*Eik(k-p4,r4)*replace_(k,-k);

* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k)^2*Eik(k+p4)

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p3,r1?)*Eik(k+p3+p4,r2?)*Eik(k+p3+p4,r4?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p3,r1)*Eik(k+p3+p4,r2)*Eik(k+p3+p4,r4)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?)*Eik(k+p3-p4,r2?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*Eik(k+p3-p4,r2)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1?)*Eik(k+p4,r2?)*Eik(k+p4,r4?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1)*Eik(k+p4,r2)*Eik(k+p4,r4)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p3,r1?)*Eik(k-p3-p4,r2?)*Eik(k-p3-p4,r4?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p3,r1)*Eik(k-p3-p4,r2)*Eik(k-p3-p4,r4)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k-p3+p4,r2?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k-p3+p4,r2)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1?)*Eik(k-p4,r2?)*Eik(k-p4,r4?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1)*Eik(k-p4,r2)*Eik(k-p4,r4)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p4,r2?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p4,r2)*replace_(k,-k);

* DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k)^2*Eik(k+p4)

id DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p3,r1?)*Eik(k+p3+p4,r2?)*Eik(k+p3+p4,r4?) = DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p3,r1)*Eik(k+p3+p4,r2)*Eik(k+p3+p4,r4)*replace_(k,-k-p3-p4);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?)*Eik(k+p3-p4,r2?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*Eik(k+p3-p4,r2)*replace_(k,-k-p3);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1?)*Eik(k+p4,r2?)*Eik(k+p4,r4?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1)*Eik(k+p4,r2)*Eik(k+p4,r4)*replace_(k,-k-p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p3,r1?)*Eik(k-p3-p4,r2?)*Eik(k-p3-p4,r4?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p3,r1)*Eik(k-p3-p4,r2)*Eik(k-p3-p4,r4)*replace_(k,k+p3+p4);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k-p3+p4,r2?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k-p3+p4,r2)*replace_(k,k+p3);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1?)*Eik(k-p4,r2?)*Eik(k-p4,r4?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1)*Eik(k-p4,r2)*Eik(k-p4,r4)*replace_(k,k+p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p4,r2?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p4,r2)*replace_(k,-k);

* DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p3+p4)^3

id DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k,r5?) = DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k,r1)*Eik(k,r4)*Eik(k,r5)*replace_(k,-k-p3-p4);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?)*Eik(k-p4,r5?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*Eik(k-p4,r5)*replace_(k,-k-p3);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k-p3,r5?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k-p3,r5)*replace_(k,-k-p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k,r5?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k,r5)*replace_(k,k+p3+p4);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?)*Eik(k+p4,r5?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*Eik(k+p4,r5)*replace_(k,k+p3);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1?)*Eik(k+p3,r4?)*Eik(k+p3,r5?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3,r1)*Eik(k+p3,r4)*Eik(k+p3,r5)*replace_(k,k+p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p3-p4,r1?)*Eik(k-p3-p4,r4?)*Eik(k-p3-p4,r5?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p3-p4,r1)*Eik(k-p3-p4,r4)*Eik(k-p3-p4,r5)*replace_(k,-k);

* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p3)^3

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?)*Eik(k+p4,r5?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*Eik(k+p4,r5)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k,r5?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k,r5)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3+p4,r1?)*Eik(k-p3+p4,r4?)*Eik(k-p3+p4,r5?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k-p3+p4,r1)*Eik(k-p3+p4,r4)*Eik(k-p3+p4,r5)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?)*Eik(k-p4,r5?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*Eik(k-p4,r5)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k,r5?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1)*Eik(k,r4)*Eik(k,r5)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3-p4,r1?)*Eik(k+p3-p4,r4?)*Eik(k+p3-p4,r5?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k+p3-p4,r1)*Eik(k+p3-p4,r4)*Eik(k+p3-p4,r5)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k-p3,r5?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k-p3,r5)*replace_(k,-k);

* DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p3)^3

id DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?)*Eik(k+p4,r5?) = DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*Eik(k+p4,r5)*replace_(k,-k-p3-p4);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k,r5?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k,r5)*replace_(k,-k-p3);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3+p4,r1?)*Eik(k-p3+p4,r4?)*Eik(k-p3+p4,r5?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k-p3+p4,r1)*Eik(k-p3+p4,r4)*Eik(k-p3+p4,r5)*replace_(k,-k-p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?)*Eik(k-p4,r5?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*Eik(k-p4,r5)*replace_(k,k+p3+p4);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k,r5?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1)*Eik(k,r4)*Eik(k,r5)*replace_(k,k+p3);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3-p4,r1?)*Eik(k+p3-p4,r4?)*Eik(k+p3-p4,r5?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k+p3-p4,r1)*Eik(k+p3-p4,r4)*Eik(k+p3-p4,r5)*replace_(k,k+p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p3,r1?)*Eik(k-p3,r4?)*Eik(k-p3,r5?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p3,r1)*Eik(k-p3,r4)*Eik(k-p3,r5)*replace_(k,-k);

* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k)*Eik(k+p3)^2

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?)*Eik(k+p3+p4,r2?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*Eik(k+p3+p4,r2)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k+p3,r2?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k+p3,r2)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k+p4,r1?)*Eik(k-p3+p4,r2?)*Eik(k-p3+p4,r4?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k+p4,r1)*Eik(k-p3+p4,r2)*Eik(k-p3+p4,r4)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?)*Eik(k-p3-p4,r2?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*Eik(k-p3-p4,r2)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p3,r2?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p3,r2)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k-p4,r1?)*Eik(k+p3-p4,r2?)*Eik(k+p3-p4,r4?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k-p4,r1)*Eik(k+p3-p4,r2)*Eik(k+p3-p4,r4)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p3,r2?)*Eik(k-p3,r4?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p3,r2)*Eik(k-p3,r4)*replace_(k,-k);

* DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k)*Eik(k+p3)^2

id DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?)*Eik(k+p3+p4,r2?) = DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*Eik(k+p3+p4,r2)*replace_(k,-k-p3-p4);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k+p3,r2?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k+p3,r2)*replace_(k,-k-p3);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k+p4,r1?)*Eik(k-p3+p4,r2?)*Eik(k-p3+p4,r4?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k+p4,r1)*Eik(k-p3+p4,r2)*Eik(k-p3+p4,r4)*replace_(k,-k-p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?)*Eik(k-p3-p4,r2?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*Eik(k-p3-p4,r2)*replace_(k,k+p3+p4);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p3,r2?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p3,r2)*replace_(k,k+p3);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k-p4,r1?)*Eik(k+p3-p4,r2?)*Eik(k+p3-p4,r4?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k-p4,r1)*Eik(k+p3-p4,r2)*Eik(k+p3-p4,r4)*replace_(k,k+p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k-p3,r2?)*Eik(k-p3,r4?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*Eik(k-p3,r2)*Eik(k-p3,r4)*replace_(k,-k);

* DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k)^2*Eik(k+p3)

id DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p4,r1?)*Eik(k+p3+p4,r2?)*Eik(k+p3+p4,r4?) = DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k+p4,r1)*Eik(k+p3+p4,r2)*Eik(k+p3+p4,r4)*replace_(k,-k-p3-p4);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1?)*Eik(k+p3,r2?)*Eik(k+p3,r4?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k,r1)*Eik(k+p3,r2)*Eik(k+p3,r4)*replace_(k,-k-p3);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?)*Eik(k-p3+p4,r2?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*Eik(k-p3+p4,r2)*replace_(k,-k-p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p4,r1?)*Eik(k-p3-p4,r2?)*Eik(k-p3-p4,r4?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k-p4,r1)*Eik(k-p3-p4,r2)*Eik(k-p3-p4,r4)*replace_(k,k+p3+p4);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1?)*Eik(k-p3,r2?)*Eik(k-p3,r4?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k,r1)*Eik(k-p3,r2)*Eik(k-p3,r4)*replace_(k,k+p3);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?)*Eik(k+p3-p4,r2?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*Eik(k+p3-p4,r2)*replace_(k,k+p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p3,r2?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p3,r2)*replace_(k,-k);

* DS(k)*DS(k+p3)*DS(k+p3+p4)*Eik(k)^2*Eik(k+p3)

id DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p4,r1?)*Eik(k+p3+p4,r2?)*Eik(k+p3+p4,r4?) = DS(k)*DS(k+p4)*DS(k+p3+p4)*Eik(k+p4,r1)*Eik(k+p3+p4,r2)*Eik(k+p3+p4,r4)*replace_(k,-k-p3-p4);
id DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1?)*Eik(k+p3,r2?)*Eik(k+p3,r4?) = DS(k)*DS(k+p3)*DS(k-p4)*Eik(k,r1)*Eik(k+p3,r2)*Eik(k+p3,r4)*replace_(k,-k-p3);
id DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k+p4,r1?)*Eik(k+p4,r4?)*Eik(k-p3+p4,r2?) = DS(k-p3)*DS(k+p4)*DS(k-p3+p4)*Eik(k+p4,r1)*Eik(k+p4,r4)*Eik(k-p3+p4,r2)*replace_(k,-k-p4);
id DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p4,r1?)*Eik(k-p3-p4,r2?)*Eik(k-p3-p4,r4?) = DS(k)*DS(k-p4)*DS(k-p3-p4)*Eik(k-p4,r1)*Eik(k-p3-p4,r2)*Eik(k-p3-p4,r4)*replace_(k,k+p3+p4);
id DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1?)*Eik(k-p3,r2?)*Eik(k-p3,r4?) = DS(k)*DS(k-p3)*DS(k+p4)*Eik(k,r1)*Eik(k-p3,r2)*Eik(k-p3,r4)*replace_(k,k+p3);
id DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k-p4,r1?)*Eik(k-p4,r4?)*Eik(k+p3-p4,r2?) = DS(k+p3)*DS(k-p4)*DS(k+p3-p4)*Eik(k-p4,r1)*Eik(k-p4,r4)*Eik(k+p3-p4,r2)*replace_(k,k+p4);
id DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1?)*Eik(k,r4?)*Eik(k-p3,r2?) = DS(k)*DS(k-p3)*DS(k-p3-p4)*Eik(k,r1)*Eik(k,r4)*Eik(k-p3,r2)*replace_(k,-k);

endif;

.sort

#call Kinematics
#call NormalizePropagators

#endprocedure