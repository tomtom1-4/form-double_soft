#procedure FullSimplify

bracket den, rat, s12, s13, s14, s23, s24, s34, p1n, p2n, p3n, p4n;
.sort 
Keep brackets;
repeat;
    id den(m?) = rat(1,m); 
    id s12?^m? = rat(s12^m, 1);
endrepeat; 
.sort
PolyratFun rat; 
Keep brackets;

.sort 

PolyratFun; 
.sort
id rat(s12?, s13?) = s12 * den(s13);
id den(1) = 1;

#endprocedure