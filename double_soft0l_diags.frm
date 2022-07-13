#-
#: IncDir form
Off Statistics;

#include declarations.h

#include diagrams/diags0l.out

#write "`ndiags' diagram(s) for the soft current"

* "i" from the propagator of the splitting particle
mul i_;

#call FeynmanRules
#call SoftLim

#call WaveFunctions
#call ColorOperators
#call Color

#call SimplifyIntegrals
#call NormalizePropagators

#call Simplify

.store
s m;
g diags0l = d1+...+d`ndiags';
l zhu = M * 1/2 * (- T1(c3) * p1.E3/p1.p3 - T2(c3) * p2.E3/p2.p3) * (-T1(c4) * p1.E4/p1.p4 - T2(c4) * p2.E4/p2.p4)
      + M * 1/2 * (-T1(c4) * p1.E4/p1.p4 - T2(c4) * p2.E4/p2.p4) * (- T1(c3) * p1.E3/p1.p3 - T2(c3) * p2.E3/p2.p3)
      + M * i_ * cOlf(c3, c4, cOli1) * T1(cOli1) * ( (p1.E3 * p3.E4 - p1.E4 * p4.E3)/p3.p4 * rat(2,s13 + s14) - (p1.p3 - p1.p4) * rat(1,s13 + s14) * (p1.E3 * p1.E4/p1.p3/p1.p4 + E3.E4/p3.p4))
      + M * i_ * cOlf(c3, c4, cOli1) * T2(cOli1) * ( (p2.E3 * p3.E4 - p2.E4 * p4.E3)/p3.p4 * rat(2,s23 + s24) - (p2.p3 - p2.p4) * rat(1,s23 + s24) * (p2.E3 * p2.E4/p2.p3/p2.p4 + E3.E4/p3.p4));

l check = diags0l + zhu;

#do i=-1,1
    id p1.p3^`i' = (s13/2)^`i';
    id p2.p3^`i' = (s23/2)^`i'; 
    id p1.p4^`i' = (s14/2)^`i'; 
    id p2.p4^`i' = (s24/2)^`i';
    id p3.p4^`i' = (s34/2)^`i';
#enddo

#call Color

#call Simplify
#call PartialFractioning
#call ColorConservation
#call Symmetry
#call Simplify
.sort
*bracket T1, T2, cOlf, n, p1n, p2n, p3n, p4n, E3, E4;
*bracket T1, T2, cOlf;
id rat(m?, 1) = m;
#call PartialFractioning
#call ColorConservation
#call Simplify
bracket T1, T2, cOlf, E3, E4;
print diags0l, zhu, check; 
.sort
format mathematica;
b E0, E1, E2, E3, Chain, nl, cOlTr, cOlT, delta, Ioperator;
.sort

#write <results/diags0l.m> "J0 * Mn = (\n%E\n);", diags0l

.store

save results/diags0l.sav diags0l;


*delete storage;

.sort


.end
