#-
#: IncDir form
#: SmallExtension 100M
*#: MaxTermSize    10M
#: WorkSpace      1G
Off Statistics;

#include declarations.h

load results/diags1l.sav;

g all = diags1l;

g coli1 = diags1l; 
g coli2 = diags1l; 
g colij = diags1l; 
bracket T1, T2, cOlf;
.sort
Keep brackets;
if (expression(coli1) && (match(T1(cOli1?) * cOlf(c3, c4, cOli1?)) == 0)) discard;
if (expression(coli2) && (match(T1(cOli1?) * T1(cOli2?) * cOlf(c3, cOli1?, cOli3?) * cOlf(c4, cOli2?, cOli3?)) == 0)) discard;
if (expression(colij) && (match(T1(cOli1?) * T2(cOli2?) * cOlf(c3, cOli1?, cOli3?) * cOlf(c4, cOli2?, cOli3?)) == 0)) discard;
.sort

drop all, diags1l;

* Bring Integrals to standard form
if ((count(DS, 1) == 3) && (count(Eik, 1) == 1));
    id DS(k)*DS(k + p3)*DS(k + p3 + p4)*Eik(k + p3 + p4,p1?) =  DS(k)*DS(k + p3)*DS(k + p3 + p4)*Eik(k + p3 + p4,p1) * replace_(k, -k - p3);
    id DS(k)*DS(k + p4)*DS(k + p3 + p4)*Eik(k + p3 + p4,p1?) =  DS(k)*DS(k + p4)*DS(k + p3 + p4)*Eik(k + p3 + p4,p1) * replace_(k, k - p4); 
elseif ((count(DS, 1) == 2) && (count(Eik, 1) == 2)); 
    id DS(k)*DS(k + p4)*Eik(k,p2)*Eik(k + p3 + p4,p1) = DS(k)*DS(k + p4)*Eik(k,p2)*Eik(k + p3 + p4,p1) * replace_(k, k - p4);
    id DS(k)*DS(k + p3)*Eik(k,p1)*Eik(k + p3 + p4,p2) = DS(k)*DS(k + p3)*Eik(k,p1)*Eik(k + p3 + p4,p2) * replace_(k, -k - p3);
    id DS(k)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3 + p4,p2) = DS(k)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3 + p4,p2) * replace_(k, k - p4);
elseif ((count(DS, 1) == 3) && (count(Eik, 1) == 2)); 
    id DS(k)*DS(k + p3)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3 + p4,p2) = DS(k)*DS(k + p3)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3 + p4,p2) * replace_(k, -k - p3);
endif;
#call NormalizePropagators 

* Insert integrals
id DS?{DS, Eik}(?args) = Int(DS(?args)); 
repeat id Int(n1?)* Int(n2?) = Int(n1*n2); 

#call integrals

id [d-4]^(-1) = -1/2/ep;
id [d-1]^(-1) = 1/3 + 2 * ep/9 + 4 * ep^2/27; 
id [d-2]^(-1) = 1/2 + ep/2 + ep^2/2;

id 1/ep = 0;
id ep = 0; 


id Log(-s34) = logc;
id Li( - s13^(-1)*s14) = Li(s13 * den(s13 + s14)) + 1/2 * Log(1 + s14/s13) * Log((1 + s14/s13) * s13^2/s14^2) - Pi^2/6; 
id Li( - s23*s24^(-1)) = Li(s24 * den(s23 + s24)) + 1/2 * Log(1 + s23/s24) * Log((1 + s23/s24) * s24^2/s23^2) - Pi^2/6;

argument Li;
    id den(s24 + s23) * s24 = 1 - den(s24 + s23)*s23;
    id den(s14 + s13) * s13 = 1 - den(s14 + s13)*s14;
endargument;
id Li(den(s14 + s13) * den(s24 + s23) * s12 * s34) 
    = - Li(1 - den(s14 + s13) * den(s24 + s23) * s12 * s34) + Pi^2/6 - Log(den(s14 + s13) * den(s24 + s23) * s12 * s34) * Log(1 - den(s14 + s13) * den(s24 + s23) * s12 * s34);
id Li(den(s24 + s23)*s23) = - Li(1 - den(s24 + s23)*s23) + Pi^2/6 - Log(den(s24 + s23)*s23) * Log(den(s24 + s23)*s24);
id Li(den(s14 + s13)*s14) = - Li(1 - den(s14 + s13)*s14) + Pi^2/6 - Log(den(s14 + s13)*s14) * Log(den(s14 + s13)*s13);
.sort

factarg Log; 
repeat;
    id Log(s12?, s23?, ?args1) = (Log(s12) + Log(s23, ?args1));
    id Log(s12?, s23?) = (Log(s12) + Log(s23)); 
endrepeat;

id Log(den(s12?)) = -Log(s12);
id Log(1/s12?) = -Log(s12); 

#call FullSimplify 
#call Simplify

* Rewrite to C format 
id M = 1;

id Log(s24 + s23) = logs23s24; 
id Log(s14 + s13) = logs13s14; 
id Log(s12) = logs12; 
id Log(s13) = logs13; 
id Log(s14) = logs14; 
id Log(s23) = logs23; 
id Log(s24) = logs24;
id Log(s34) = logs34;

id Li(1 - den(s24 + s23)*s23) = Li1; 
id Li(1 - den(s14 + s13)*s14) = Li2; 
id Li(1 - den(s14 + s13)*den(s24 + s23)*s12*s34) = Li3;

id den(s24 + s23) = denom1;
id den(s14 + s13) = denom2; 
id den( - s14*s24 - s14*s23 - s13*s24 - s13*s23 + s12*s34) = denom3; 
id den(s14^2*s23^2 - 2*s13*s14*s23*s24 + s13^2*s24^2 - 2*s12*s14*s23*s34- 2*s12*s13*s24*s34 + s12^2*s34^2) = denom4;

mul replace_(s13, (s13)); 
mul replace_(s14, (s14)); 
mul replace_(s23, (s23)); 
mul replace_(s24, (s24)); 
mul replace_(s34, (s34)); 

id p1.E3 = p1E3; 
id p2.E3 = p2E3; 
id p4.E3 = p4E3; 
id p1.E4 = p1E4; 
id p2.E4 = p2E4; 
id p3.E4 = p3E4;
id E3.E4 = E3E4; 

*id p1?.p2? = minkovski(p1,p2); 
id sumi = 1; 
id sumij = 1; 

bracket  T1, T2, cOlf, Int, cOlf, [d-2], ;
print[] coli1, coli2, colij; 
.sort 
id T1(cOli1?) = 1; 
id T2(cOli2?) = 1; 
id cOlf(cOli1?, cOli2?, cOli3?) = 1;

Format O2;
*Print +f; 
.sort

#optimize coli1
#write <results/coli1.txt> "%O"
#write <results/coli1.txt> "std::complex<double> coli1terms = %e", coli1
.sort

#optimize coli2
#write <results/coli2.txt> "%O"
#write <results/coli2.txt> "std::complex<double> coli2terms = %e", coli2
.sort

#optimize colij
#write <results/colij.txt> "%O"
#write <results/colij.txt> "std::complex<double> colijterms = %e", colij
.sort

if (occurs(Int)); 
    exit "Integral missing"; 
endif;

.end
