#procedure SimplifyIntegrals
********************************************************************************
* Standard momentum flow in loops
* Cancellation of numerators and denominators
* Removal of scaleless integrals

#call Kinematics
#call NormalizePropagators

#call Integrands6liners

#call Integrands5liners

#call Integrands4liners
id DS(k)*DS(k + p3 + p4)*Eik(k,p2)*Eik(k + p3 + p4,p1) = DS(k)*DS(k + p3 + p4)*Eik(k,p2)*Eik(k + p3 + p4,p1) * replace_(k, -k - p3 - p4);

#call Numerators4liners

#call Integrands3liners
#call Numerators3liners

#call Integrands2liners
#call Numerators2liners

* Integrand1liners
if ((count(DS, 1) == 1) && (count(Eik, 1) == 0));
  id DS(k + p3) = DS(k + p3) * replace_(k, k-p3); 
  id DS(k + p3 + p4) = DS(k + p3 + p4) * replace_(k, k-p3-p4); 
  id DS(k + p4) = DS(k + p4) * replace_(k, k - p4); 
endif;
****************************************
* scaleless integrals
if (count(k, 1) == 0);
  if ((match(DS(k))) && (count(DS, 1) == 1) && (count(Eik, 1) <= 2) && (match(Eik(k, p1?)))) discard;

  if ((count(DS, 1) == 2 ) && (count(Eik, 1) == 0)); 
    id DS(k) * DS(k + p4) = 0; 
    id DS(k) * DS(k + p3) = 0; 
  elseif ((count(DS, 1) == 2) && (count(Eik, 1) == 1)); 
    id DS(k) * DS(k + p3) * Eik(p4?, n?) = 0; 
    id DS(k) * DS(k + p4) * Eik(p3?, n?) = 0;
  elseif((count(DS, 1) == 1) && (count(Eik, 1) == 1)); 
    id DS(k) = 0;
  elseif((count(DS, 1) == 1) && (count(Eik, 1) == 0)); 
    id DS(k) = 0;
  endif;
endif;


****************************************
* normalize eikonal propagators

*#do P={p1,p2,p3,p1+p2,p1+p3,p2+p3,p1+p2+p3}
*  id DS(k,?args)*DS(k+`P') = DS(k,?args,k+`P');
*#enddo

* reverse the loop direction if it reduces the number of momenta in the eikonal
* propagator, e.g. if the propagator with the most momenta is DS(k+p1+p2), then
*
* Eik(k+p1+p2+p3) -> Eik(k-p3)
* Eik(k+p1+p2) ->    Eik(k)
*
* after removing scaleless integrals, there is at least one propagator with two
* external momenta, i.e. DS(k+p1+p2), DS(k+p1+p3), DS(k+p2+p3), DS(k+p1+p2+p3)

*#do P={p1+p2,p1+p3,p2+p3,p1+p2+p3}
*  id DS(?args,p?)*Eik(k+`P', n?) = DS(?args,p)*Eik(k+`P', n)*replace_(k,-p);
*#enddo

*repeat id DS(k?,?args,p?) = DS(k,?args)*DS(p);

#call NormalizePropagators

#endprocedure
