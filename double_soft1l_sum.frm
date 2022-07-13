#-
#: IncDir form
#: SmallExtension 100M
*#: MaxTermSize    10M
#: WorkSpace      1G
Off Statistics;

#include declarations.h

* get the number of diagrams
#include diagrams/diags1l.out
*#include /home/tom/Uni/Semester_X/master/programs/DiaGenldSolver/single_soft_eikonal/diagrams/diags1l.out

.sort
drop;
.sort

#write "`ndiags' diagram(s) for the soft current"

#do i=1,`ndiags'
    load results/diags1l/d`i'.sav;
*    load /home/tom/Uni/Semester_X/master/programs/DiaGenldSolver/single_soft_eikonal/results/diags1l/d`i'.sav;
#enddo

g diags1l = d1+...+d`ndiags';
.sort

#call FullSimplify 

*Subtract itterated emission
.sort
l Jdouble = - cOlf(c3, cOli1, cOli2) * T1(cOli1) * T2(cOli2) * (p1.E3 * s23 - p2.E3 * s13) * DS(k) * DS(k + p3) * Eik(k, p1) * Eik(k + p3, p2)
                    * M/2 * (-p1.E4 * 2/s14 * T1(c4) - p2.E4 * 2/s24 * T2(c4)) * sumij
            - cOlf(c4, cOli1, cOli2) * T1(cOli1) * T2(cOli2) * (p1.E4 * s24 - p2.E4 * s14) * DS(k) * DS(k + p4) * Eik(k, p1) * Eik(k + p4, p2)
                    * M/2 * (-p1.E3 * 2/s13 * T1(c3) - p2.E3 * 2/s23 * T2(c3)) * sumij;

g diags1l = diags1l - Jdouble;

sum cOli1, cOli2;
id Quad = 1;
#call Color

.sort 
splitarg den; 
id den(s12 * s34, - s13 * s23, - s13 * s24, - s14*s23, - s14*s24) = -den( - s12*s34, + s13*s23, + s13*s24, + s14*s23, + s14*s24);
repeat; 
    id den(s12?, s13?, ?args1) = den(s12 + s13, ?args1);
    id den(s12?, s13?) = den(s12 + s13);
endrepeat;    

id DS(k)*DS(k + p4)*Eik(k,p2)*Eik(k + p4,p1) = DS(k)*DS(k + p4)*Eik(k,p2)*Eik(k + p4,p1) * replace_(k, -k - p4); 
id DS(k)*DS(k + p3)*Eik(k,p2)*Eik(k + p3,p1) = DS(k)*DS(k + p3)*Eik(k,p2)*Eik(k + p3,p1) * replace_(k, -k - p3); 
id DS(k)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3+ p4,p2) = DS(k)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3+ p4,p2) * replace_(k, -k - p3 - p4);
.sort
#call SimplifyIntegrals

.sort
if (match([d-4]^(-1))); 

    exit "Epsilon expansion has failed";
endif; 

* Rewrite for IBP reduction 
id DS?{DS,Eik}(?args1) = Int(DS(?args1));
repeat id Int(n1?)*Int(n2?) = Int(n1*n2);
id Int(n?$integrand) = Int(n);
#include IBPreduction.h
id Int(m?) = m;
.sort 
#call SimplifyRationals
.sort 
#call FullSimplify
#call Simplify 
.sort

#do i=1,2
    id s13 * den(s14 + s13) = 1 - s14 * den(s14 + s13); 
    id s23 * den(s23 + s24) = 1 - s24 * den(s23 + s24);
    #call ColorConservation
    #call FullSimplify 
    #call Simplify
#enddo 
#call Symmetry

repeat;
    id s13 * den(s14 + s13) = 1 - s14 * den(s14 + s13); 
    id s23 * den(s23 + s24) = 1 - s24 * den(s23 + s24);
endrepeat;
.sort

id DS(k)*DS(k + p4)*Eik(k,p2)*Eik(k + p4,p1) = DS(k)*DS(k + p4)*Eik(k,p2)*Eik(k + p4,p1) * replace_(k, -k - p4); 
id DS(k)*DS(k + p3)*Eik(k,p2)*Eik(k + p3,p1) = DS(k)*DS(k + p3)*Eik(k,p2)*Eik(k + p3,p1) * replace_(k, -k - p3); 
id DS(k)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3+ p4,p2) = DS(k)*DS(k + p3 + p4)*Eik(k,p1)*Eik(k + p3+ p4,p2) * replace_(k, -k - p3 - p4);
.sort
#call SimplifyIntegrals

bracket T1, T2, cOlf, cOlT, sumi, sumij, sumj, nl;
print[] diags1l;
print[] Jdouble;
.sort
.store 
save results/diags1l.sav diags1l;

.end
