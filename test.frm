#-
#: IncDir form
#: SmallExtension 100M
#: WorkSpace      2G
Off Statistics;
s x, y;
#include declarations.h


l test = den( - 2*s12*s34 + 2*s13*s23 + 2*s13*s24 + 2*s14*s23 + 2*s14*s24) + den(2*s12*s34 - 2 *s13*s23 - 2*s13*s24 - 2*s14*s23 - 2*s14*s24);
print test; 
.sort
#call FullSimplify
.sort
bracket T1, T2, cOlf, DS, Eik, E3, E4, sumij;
print test; 
.sort

.end
