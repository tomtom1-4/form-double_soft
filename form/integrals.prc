#procedure integrals 
 
* FORM code generated by masters.nb 
 
 

* I10011
id Int(DS(k) * Eik(k+p3, p1) * Eik(k - p4, p2)) = -((4/ep^2 + Pi^2 + 2*(Log(-s34) - Log((s12*s34)/(s13*s24)))*(-2/ep + Log(-s34) - Log((s12*s34)/(s13*s24))))/s12);
 

* I11110
id Int(DS(k) * DS(k+p3) * DS(k - p4) * Eik(k+p3, p1)) = (12/ep^2 - Pi^2 + 6*(Log(-s34) + Log(s13*den(s13 + s14)))*(-2/ep + Log(-s34) + Log(s13*den(s13 + s14))) + 12*Li( s14*den(s13 + s14)))/(3*s13*s34);
 
id Int(DS(k) * DS(k+p3) * DS(k - p4) * Eik(k+p3, p2)) = (12/ep^2 - Pi^2 + 6*(Log(-s34) + Log(s23*den(s23 + s24)))*(-2/ep + Log(-s34) + Log(s23*den(s23 + s24))) + 12*Li( s24*den(s23 + s24)))/(3*s23*s34);
 

* I11101
id Int(DS(k) * DS(k+p3) * DS(k - p4) * Eik(k-p4, p1)) = (-12/ep^2 + Pi^2 - 6*(Log(-s34) + Log(s14*den(s13 + s14)))*(-2/ep + Log(-s34) + Log(s14*den(s13 + s14))) - 12*Li( s13*den(s13 + s14)))/(3*s14*s34);
 
id Int(DS(k) * DS(k+p3) * DS(k - p4) * Eik(k-p4, p2)) = (-12/ep^2 + Pi^2 - 6*(Log(-s34) + Log(s24*den(s23 + s24)))*(-2/ep + Log(-s34) + Log(s24*den(s23 + s24))) - 12*Li( s23*den(s23 + s24)))/(3*s24*s34);
 

* I11011
id Int(DS(k) * DS(k+p3) * Eik(k+p3,p1) * Eik(k-p4, p2)) = -((den(s23 + s24)*(4/ep^2 + Pi^2 + 2*(2*Log((s23 + s24)/s24) + Log(-s34) - Log((s12*s34)/(s13*s24)))*(-2/ep + 2*Log((s23 + s24)/s24) + Log(-s34) - Log((s12*s34)/(s13*s24))) + 8*Li( -(s23/s24))))/s13);
 
id Int(DS(k) * DS(k+p3) * Eik(k+p3,p2) * Eik(k-p4, p1)) = -((den(s13 + s14)*(4/ep^2 + Pi^2 + 2*(2*Log((s13 + s14)/s14) + Log(-s34) - Log((s12*s34)/(s14*s23)))*(-2/ep + 2*Log((s13 + s14)/s14) + Log(-s34) - Log((s12*s34)/(s14*s23))) + 8*Li( -(s13/s14))))/s23);
 

* I10111
id Int(DS(k) * DS(k-p4) * Eik(k+p3,p1) * Eik(k-p4, p2)) = -((den(s13 + s14)*(4/ep^2 + Pi^2 + 2*(2*Log((s13 + s14)/s13) + Log(-s34) - Log((s12*s34)/(s13*s24)))*(-2/ep + 2*Log((s13 + s14)/s13) + Log(-s34) - Log((s12*s34)/(s13*s24))) + 8*Li( -(s14/s13))))/s24);
 

* I01111
id Int(DS(k+p3) * DS(k-p4) * Eik(k+p3,p2) * Eik(k-p4, p1)) = -4*den(3*(s13 + s14)*(s23 + s24) - 3*s12*s34)*(Pi^2 + 3*Log(s12*s34*den(s13 + s14)*den(s23 + s24))*(2/ep - 2*Log(-s34) + Log(s12*s34*den(s13 + s14)*den(s23 + s24)) - 2*Log(1 - s12*s34*den(s13 + s14)*den(s23 + s24))) - 6*Li( s12*s34*den(s13 + s14)*den(s23 + s24)));
 

* I11111
id Int(DS(k) * DS(k+p3) * DS(k-p4) * Eik(k+p3,p1) * Eik(k-p4, p2)) = (2*den(s13 + s14)*den(s23 + s24)*(2*Pi^2*(s13 + s14)*(s23 + s24) - (6*(2*s13*s23 + s14*s23 + 3*s13*s24 + 2*s14*s24))/ep^2 + ((2*s13*s23 + s14*s23 + 3*s13*s24 + 2*s14*s24)*(Pi^2 - 6*Log(-s34)^2))/2 - 3*s13*(s23 + s24)*Log((s13*(s23 + s24)*den(s13 + s14))/s24)^2 - 3*(s13 + s14)*s24*Log(((s13 + s14)*s24*den(s23 + s24))/s13)^2 - 3*(s13 + s14)*(s23 + s24)*Log(s13*s24*den(s13 + s14)*den(s23 + s24))^2 - (6*(-((2*s13*s23 + s14*s23 + 3*s13*s24 + 2*s14*s24)*Log(-s34)) + s13*(s23 + s24)*Log((s13*(s23 + s24)*den(s13 + s14))/s24) + (s13 + s14)*s24*Log(((s13 + s14)*s24*den(s23 + s24))/s13) - (s13 + s14)*(s23 + s24)*Log(s13*s24*den(s13 + s14)*den(s23 + s24)) - s12*(s13 + s14)*s24*s34*den((s13 + s14)*(s23 + s24) - s12*s34)*Log(s12*s34*den(s13 + s14)*den(s23 + s24)) - s12*s13*(s23 + s24)*s34*den((s13 + s14)*(s23 + s24) - s12*s34)*Log(s12*s34*den(s13 + s14)*den(s23 + s24))))/ep + 6*Log(-s34)*(s13*(s23 + s24)*Log((s13*(s23 + s24)*den(s13 + s14))/s24) + (s13 + s14)*s24*Log(((s13 + s14)*s24*den(s23 + s24))/s13) - (s13 + s14)*(s23 + s24)*Log(s13*s24*den(s13 + s14)*den(s23 + s24)) + s12*(s14*s24 + s13*(s23 + 2*s24))*s34*den(-(s13*(s23 + s24)) - s14*(s23 + s24) + s12*s34)*Log(s12*s34*den(s13 + s14)*den(s23 + s24))) - 3*s12*(s13 + s14)*s24*s34*den((s13 + s14)*(s23 + s24) - s12*s34)*(Log(s13*den(s13 + s14))^2 + Log((s12*s34*den(s13 + s14))/s24) - Log(s24*den(s23 + s24))^2 - Log((s12*s34*den(s23 + s24))/s13)^2 - Log(s12*s34*den(s13 + s14)*den(s23 + s24))^2) - 3*s12*s13*(s23 + s24)*s34*den((s13 + s14)*(s23 + s24) - s12*s34)*(-Log(s13*den(s13 + s14))^2 - Log((s12*s34*den(s13 + s14))/s24) + Log(s24*den(s23 + s24))^2 + Log((s12*s34*den(s23 + s24))/s13)^2 - Log(s12*s34*den(s13 + s14)*den(s23 + s24))^2) - 2*s13*(s23 + s24)*(Pi^2 + 6*Li( -(s14/s13))) - 2*(s13 + s14)*s24*(Pi^2 + 6*Li( -(s23/s24))) - 12*(s13 + s14)*(s23 + s24)*(Li( s14*den(s13 + s14)) + Li( s23*den(s23 + s24))) + 6*(s13 + s14)*(s23 + s24)*(-(s14*s23) + s13*s24 + s12*s34)*den(s13*(s23 + s24) + s14*(s23 + s24) - s12*s34)*Li( 1 - s12*s34*den(s13 + s14)*den(s23 + s24))))/(3*s13*s24*s34);
 

* I01100
id Int(DS(k) * DS(k+p3+p4)) = 2 + ep^(-1) + ep*(4 - Pi^2/12) + (Log(-s34)*(-2 - 4*ep + ep*Log(-s34)))/2;
 

#endprocedure