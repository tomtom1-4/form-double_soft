#-
#: IncDir form
#: SmallExtension 100M
#: WorkSpace      2G
Off Statistics;

****************************************
* diags function choice

#write "specify diagrams to calculate by defining first and last"

****************************************
* uncomment to obtain a list of tensors
* for Passarino-Veltman reduction with
* FormCode.nb
*#define tensors

#ifdef `tensors'
#write "only tensor tags\n"
#endif

#include declarations.h

*#include /home/tom/Uni/Semester_X/master/programs/DiaGenldSolver/single_soft_eikonal/diagrams/diags1l.out
#include diagrams/diags1l.out
.sort
drop;

#write "`ndiags' diagrams for the soft current\n"

#ifndef `first'
#define first "1"
#endif

#ifndef `last'
#define last "`ndiags'"
#endif


.sort
#do i=`first',`last'

#message d`i' / `ndiags'

*#include /home/tom/Uni/Semester_X/master/programs/DiaGenldSolver/single_soft_eikonal/diagrams/diags1l.out # d`i'
#include diagrams/diags1l.out # d`i'

* and another one from the integration measure ( which is d^d k/(i*pi^(d/2)) )
mul -i_;

* Shift momenta to get the soft region
#call MomentumShift

if ((match(DV(mu?, mu1?, k, 0)) == 0) && (occurs(DG) == 0) && (occurs(DS) == 0)) discard;
#call FeynmanRules
#call ColorOperators

if (occurs(T1) && (occurs(T2) == 0)); 
    mul sumi; 
elseif((occurs(T1) == 0) && occurs(T2));
    mul sumj;
elseif (occurs(T1) && occurs(T2)); 
    mul sumij; 
else; 
    exit "Symmetry has failed"; 
endif;
.sort
#call Color
.sort

* Project Polarization vectors 
if (occurs(sumij));
  mul replace_(E3, (b1 * p1 + b2 * p2 + b3 * p3 + b4 * p4));

*  id b1 = (4*E3.p1*s23*s24*s34 - 2*E3.p2*s34*(s14*s23 + s13*s24 - s12*s34))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4; 
*  id b2 = (4*E3.p2*s13*s14*s34 - 2*E3.p1*s34*(s14*s23 + s13*s24 - s12*s34))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;
*  id b3 = (-2*(E3.p1*s24*(s14*s23 - s13*s24 + s12*s34) + E3.p2*s14*(-(s14*s23) + s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4; 
*  id b4 = (-2*(E3.p2*s13*(s14*s23 - s13*s24 + s12*s34) + E3.p1*s23*(-(s14*s23) + s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;

  id b1 = (2*(2*E3.p1*s23*s24*s34 + E3.p4*s23*(s14*s23 - s13*s24 - s12*s34) + E3.p2*s34*(-(s14*s23) - s13*s24 + s12*s34))) * den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4; 
  id b2 = (2*(2*E3.p2*s13*s14*s34 + E3.p4*s13*(-(s14*s23) + s13*s24 - s12*s34) + E3.p1*s34*(-(s14*s23) - s13*s24 + s12*s34))) * den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;
  id b3 = (-2*(E3.p4*s12*(s14*s23 + s13*s24 - s12*s34) + E3.p1*s24*(s14*s23 - s13*s24 + s12*s34) + E3.p2*s14*(-(s14*s23) + s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;
  id b4 = (-2*(-2*E3.p4*s12*s13*s23 + E3.p2*s13*(s14*s23 - s13*s24 + s12*s34) + E3.p1*s23*(-(s14*s23) + s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;
*mul replace_(E3, p3/lam); 

  mul replace_(E4, (b1 * p1 + b2 * p2 + b3 * p3 + b4 * p4)); 
  
  id b1 = (2*(2*E4.p1*s23*s24*s34 + E4.p3*s24*(-(s14*s23) + s13*s24 - s12*s34) + E4.p2*s34*(-(s14*s23) - s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4; 
  id b2 = (2*(2*E4.p2*s13*s14*s34 + E4.p3*s14*(s14*s23 - s13*s24 - s12*s34) + E4.p1*s34*(-(s14*s23) - s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;
  id b3 = (-2*(-2*E4.p3*s12*s14*s24 + E4.p1*s24*(s14*s23 - s13*s24 + s12*s34) + E4.p2*s14*(-(s14*s23) + s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;
  id b4 = (-2*(E4.p3*s12*(s14*s23 + s13*s24 - s12*s34) + E4.p2*s13*(s14*s23 - s13*s24 + s12*s34) + E4.p1*s23*(-(s14*s23) + s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;

*  id b1 = (4*E4.p1*s23*s24*s34 - 2*E4.p2*s34*(s14*s23 + s13*s24 - s12*s34))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4; 
*  id b2 = (4*E4.p2*s13*s14*s34 - 2*E4.p1*s34*(s14*s23 + s13*s24 - s12*s34))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;
*  id b3 = (-2*(E4.p1*s24*(s14*s23 - s13*s24 + s12*s34) + E4.p2*s14*(-(s14*s23) + s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4; 
*  id b4 = (-2*(E4.p2*s13*(s14*s23 - s13*s24 + s12*s34) + E4.p1*s23*(-(s14*s23) + s13*s24 + s12*s34)))*den((s14^2*s23^2 + (s13*s24 - s12*s34)^2 - 2*s14*s23*(s13*s24 + s12*s34))/lam^4)/lam^4;
endif;
.sort

#call SoftLim
#call WaveFunctions

#call SimplifyIntegrals
#call NormalizePropagators

* Prelimnary analysis for PV reduction
#call TensorTags

#ifdef `tensors'

b tensor;
print[] d`i';
.store

#else

#call PVreduction
#call Simplify
if(match([d-4])); 
    exit "[d-4] occurs"; 
endif;

.sort

bracket T1, T2, cOlf, DS, Eik, E3, E4;
print d`i';
.sort

.store
.sort
#endif
.sort
save results/diags1l/d`i'.sav d`i';
*print d`i';
#enddo
.sort

.end
