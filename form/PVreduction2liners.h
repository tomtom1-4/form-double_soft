* Generated by FormCode.nb

id tensor(2,p34)*K(a1?,a2?) = (den(-1+d)*(s34*k.k-(k.p34)^2)*d_(a1,a2))/s34+(den(-1+d)*(-(s34*k.k)+d*(k.p34)^2)*p34(a1)*p34(a2))/s34^2;

id tensor(2,n,p34)*K(a1?,a2?) = den(-2+d)*den(p3n+p4n)^2*(p3n^2*k.k+2*p3n*p4n*k.k+p4n^2*k.k+s34*(k.n)^2-2*p3n*k.n*k.p34-2*p4n*k.n*k.p34)*d_(a1,a2)+den(-2+d)*den(p3n+p4n)^4*(p3n^2*s34*k.k+2*p3n*p4n*s34*k.k+p4n^2*s34*k.k-s34^2*(k.n)^2+d*s34^2*(k.n)^2+2*p3n*s34*k.n*k.p34-2*d*p3n*s34*k.n*k.p34+2*p4n*s34*k.n*k.p34-2*d*p4n*s34*k.n*k.p34-2*p3n^2*(k.p34)^2+d*p3n^2*(k.p34)^2-4*p3n*p4n*(k.p34)^2+2*d*p3n*p4n*(k.p34)^2-2*p4n^2*(k.p34)^2+d*p4n^2*(k.p34)^2)*n(a1)*n(a2)+den(p3n+p4n)^2*(k.n)^2*p34(a1)*p34(a2)+den(-2+d)*den(p3n+p4n)^3*(-(p3n^2*k.k)-2*p3n*p4n*k.k-p4n^2*k.k+s34*(k.n)^2-d*s34*(k.n)^2+d*p3n*k.n*k.p34+d*p4n*k.n*k.p34)*(n(a2)*p34(a1)+n(a1)*p34(a2));

id tensor(2,n,p4)*K(a1?,a2?) = (den(-2+d)*(p4n*k.k-2*k.n*k.p4)*d_(a1,a2))/p4n+((k.p4)^2*n(a1)*n(a2))/p4n^2+((k.n)^2*p4(a1)*p4(a2))/p4n^2+(den(-2+d)*(-(p4n*k.k)+d*k.n*k.p4)*(n(a2)*p4(a1)+n(a1)*p4(a2)))/p4n^2;

id tensor(1,n,p1)*K(a1?) = (k.p1*n(a1))/p1n+(k.n*p1(a1))/p1n;

id tensor(1,n,p2)*K(a1?) = (k.p2*n(a1))/p2n+(k.n*p2(a1))/p2n;

id tensor(1,n,p3)*K(a1?) = (k.p3*n(a1))/p3n+(k.n*p3(a1))/p3n;

id tensor(1,n,p4)*K(a1?) = (k.p4*n(a1))/p4n+(k.n*p4(a1))/p4n;

id tensor(1,n,p34)*K(a1?) = den(p3n+p4n)^2*(-(s34*k.n)+p3n*k.p34+p4n*k.p34)*n(a1)+den(p3n+p4n)*k.n*p34(a1);

id tensor(1,p34)*K(a1?) = (k.p34*p34(a1))/s34;
