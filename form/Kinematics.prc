#procedure Kinematics


id p1234 = p1+p2+p3+p4;
id p123 = p1 + p2 + p3;
*id p34 = p3 + p4; 

argument DS,Eik;
  id p1234 = p1+p2+p3+p4;
  id p123 = p1 + p2 + p3;
endargument;

id n.n = 0;
id p1.p1 = 0;
id p2.p2 = 0;
id p3.p3 = 0;
id p4.p4 = 0;

id p1.p2^m? = (s12/2)^m;
id p1.p3^m? = (s13/2)^m;
id p1.p4^m? = (s14/2)^m;
id p2.p3^m? = (s23/2)^m;
id p2.p4^m? = (s24/2)^m; 
id p3.p4^m? = (s34/2)^m;
id p34.p34^m? = s34^m; 
id p34.p1^m? = (s13/2 + s14/2)^m;   
id p34.p2^m? = (s23/2 + s24/2)^m;   
id p34.p3^m? = (s34/2)^m;   
id p34.p4^m? = (s34/2)^m;

id p34.E3 = p4.E3; 
id p34.E4 = p3.E4;

id p1.n^m? = (p1n)^m;
id p2.n^m? = (p2n)^m;
id p3.n^m? = (p3n)^m;
id p4.n^m? = (p4n)^m;

.sort

#endprocedure
