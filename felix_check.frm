#-
#: IncDir form
#: SmallExtension 100M
#: WorkSpace      2G
Off Statistics;

#include declarations.h


load results/diags1l.sav;
load results/sum1l.sav;

g tom = diags1l;
g felix = soft1l;
.sort 
*if (match(T1(cOli1?) * T1(cOli2?)) == 0) discard;
if (expression(tom)); 
    mul -1/2; 
endif;
.sort 
l check = tom - felix;

.sort
drop tom; 
drop felix;

id Eik(p1?{p1,p2}, k?) = Eik(k, p1); 
#call SimplifyIntegrals

id sum1 = sumi; 
id sum2 = sumj;
id sum12 = sumij;

id DS(k)*DS(k + p4)*Eik(k,p2)*Eik(k + p4,p1) = DS(k)*DS(k + p4)*Eik(k,p2)*Eik(k + p4,p1) * replace_(k, -k - p4); 
id DS(k)*DS(k + p3)*Eik(k,p2)*Eik(k + p3,p1) = DS(k)*DS(k + p3)*Eik(k,p2)*Eik(k + p3,p1) * replace_(k, -k - p3); 
id DS(k)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3+ p4,p2) = DS(k)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3+ p4,p2) * replace_(k, -k - p3 - p4);
#call SimplifyIntegrals

#call FullSimplify 
#call Simplify

bracket T1, T2, cOlf, sumi, sumj, sumij, DS, Eik;

*print tom; 
*print felix;
print[] check; 
.sort

.end