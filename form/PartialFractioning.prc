#procedure PartialFractioning 

id den(s14 + s13)*den(p3n + p4n) * s13 * p4n = den(s14 + s13) * den(p3n + p4n) * s14 * p3n - den(s13 + s14) * s14 + den(p3n + p4n) * p4n;
id p4n * den(p3n + p4n) = 1 - p3n * den(p3n + p4n);
id s14 * den(s14 + s13) = 1 - s13 * den(s14 + s13);
id s24 * den(s24 + s23) = 1 - s23 * den(s24 + s23);
id 1/s14 * den(s14 + s13) = -1/s13 * den(s14 + s13) + 1/s13/s14;
id 1/s24 * den(s24 + s23) = -1/s23 * den(s24 + s23) + 1/s23/s24;

repeat;
    id s14^2*s23^2 * den(s14^2*s23^2 - 2*s13*s14*s23*s24 + s13^2*s24^2 - 2*s12*s14*s23*s34 - 2*s12*s13*s24*s34 + s12^2*s34^2)
            = (1 - (- 2*s13*s14*s23*s24 + s13^2*s24^2 - 2*s12*s14*s23*s34 - 2*s12*s13*s24*s34 + s12^2*s34^2)
            * den(s14^2*s23^2 - 2*s13*s14*s23*s24 + s13^2*s24^2 - 2*s12*s14*s23*s34 - 2*s12*s13*s24*s34 + s12^2*s34^2));

    id s14 * s24 * den( - s14*s24 - s14*s23 - s13*s24 - s13*s23 + s12*s34) 
            = (-1 + (- s14*s23 - s13*s24 - s13*s23 + s12*s34) * den( - s14*s24 - s14*s23 - s13*s24 - s13*s23 + s12*s34));   
endrepeat;

#endprocedure
