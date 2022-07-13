#procedure ColorConservation 
id den(s14 + s13) * s13 = 1 - s14 * den(s14 + s13);
if (match(sumi));* sum_i T_i 
    if (count(T1, 1) == 1);
        if((occurs(s12) == 0) && (occurs(s13) == 0) && (occurs(s14) == 0) && (occurs(p1n) == 0) && (occurs(p1) == 0)) discard;
    endif;
elseif (match(sumj)); *sum_j T_j
    if (count(T2, 1) == 1);
        if((occurs(s12) == 0) && (occurs(s23) == 0) && (occurs(s24) == 0) && (occurs(p2n) == 0) && (occurs(p2) == 0)) discard;
    endif;
endif;

if (match(sumij));
    if ((occurs(s12) == 0) && (occurs(s23) == 0) && (occurs(s24) == 0) && (occurs(p2n) == 0) && (occurs(p2) == 0) && 
                             (occurs(s13) == 0) && (occurs(s14) == 0) && (occurs(p1n) == 0) && (occurs(p1) == 0));
        id T1(c1?) * T2(c2?) * sumij = -1/2 * (T1(c1) * T1(c2) * sumi + T2(c2) * T2(c1) * sumj);
    elseif((occurs(s12) == 0) && (occurs(s23) == 0) && (occurs(s24) == 0) && (occurs(p2n) == 0) && (occurs(p2) == 0));
        id T2(c1?) = -T1(c1); 
        id sumij = sumi;
    elseif((occurs(s12) == 0) && (occurs(s13) == 0) && (occurs(s14) == 0) && (occurs(p1n) == 0) && (occurs(p1) == 0));
        if (count(T2, 1) == 1);
            id T1(c1?) * T2(c2?) = -T2(c2) * T2(c1); 
        elseif (count(T2, 1) == 1); 
            id T1(c1?) * T2(c2?) * T2(c3?) = -T2(c2) * T2(c3) * T2(c1);
        endif;
        id sumij = sumj;
    endif;
endif; 

#call Color 

#endprocedure