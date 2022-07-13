g test1 = (d_(a1,a4)*d_(a2,a3)+d_(a1,a3)*d_(a2,a4)+d_(a1,a2)*d_(a3,a4))*K(a1,a2,a3,a4)*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test2 = K(a1,a2,a3,a4)*(d_(a3,a4)*n(a1)*n(a2)+d_(a2,a4)*n(a1)*n(a3)+d_(a1,a4)*n(a2)*n(a3)+d_(a2,a3)*n(a1)*n(a4)+d_(a1,a3)*n(a2)*n(a4)+d_(a1,a2)*n(a3)*n(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test3 = K(a1,a2,a3,a4)*(d_(a3,a4)*n(a2)*p13(a1)+d_(a2,a4)*n(a3)*p13(a1)+d_(a2,a3)*n(a4)*p13(a1)+d_(a3,a4)*n(a1)*p13(a2)+d_(a1,a4)*n(a3)*p13(a2)+d_(a1,a3)*n(a4)*p13(a2)+d_(a2,a4)*n(a1)*p13(a3)+d_(a1,a4)*n(a2)*p13(a3)+d_(a1,a2)*n(a4)*p13(a3)+d_(a2,a3)*n(a1)*p13(a4)+d_(a1,a3)*n(a2)*p13(a4)+d_(a1,a2)*n(a3)*p13(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test4 = K(a1,a2,a3,a4)*(d_(a3,a4)*n(a2)*p2(a1)+d_(a2,a4)*n(a3)*p2(a1)+d_(a2,a3)*n(a4)*p2(a1)+d_(a3,a4)*n(a1)*p2(a2)+d_(a1,a4)*n(a3)*p2(a2)+d_(a1,a3)*n(a4)*p2(a2)+d_(a2,a4)*n(a1)*p2(a3)+d_(a1,a4)*n(a2)*p2(a3)+d_(a1,a2)*n(a4)*p2(a3)+d_(a2,a3)*n(a1)*p2(a4)+d_(a1,a3)*n(a2)*p2(a4)+d_(a1,a2)*n(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test5 = K(a1,a2,a3,a4)*(d_(a3,a4)*p13(a1)*p13(a2)+d_(a2,a4)*p13(a1)*p13(a3)+d_(a1,a4)*p13(a2)*p13(a3)+d_(a2,a3)*p13(a1)*p13(a4)+d_(a1,a3)*p13(a2)*p13(a4)+d_(a1,a2)*p13(a3)*p13(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test6 = K(a1,a2,a3,a4)*(d_(a3,a4)*p13(a2)*p2(a1)+d_(a2,a4)*p13(a3)*p2(a1)+d_(a2,a3)*p13(a4)*p2(a1)+d_(a3,a4)*p13(a1)*p2(a2)+d_(a1,a4)*p13(a3)*p2(a2)+d_(a1,a3)*p13(a4)*p2(a2)+d_(a2,a4)*p13(a1)*p2(a3)+d_(a1,a4)*p13(a2)*p2(a3)+d_(a1,a2)*p13(a4)*p2(a3)+d_(a2,a3)*p13(a1)*p2(a4)+d_(a1,a3)*p13(a2)*p2(a4)+d_(a1,a2)*p13(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test7 = K(a1,a2,a3,a4)*(d_(a3,a4)*p2(a1)*p2(a2)+d_(a2,a4)*p2(a1)*p2(a3)+d_(a1,a4)*p2(a2)*p2(a3)+d_(a2,a3)*p2(a1)*p2(a4)+d_(a1,a3)*p2(a2)*p2(a4)+d_(a1,a2)*p2(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test8 = K(a1,a2,a3,a4)*n(a1)*n(a2)*n(a3)*n(a4)*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test9 = K(a1,a2,a3,a4)*(n(a2)*n(a3)*n(a4)*p13(a1)+n(a1)*n(a3)*n(a4)*p13(a2)+n(a1)*n(a2)*n(a4)*p13(a3)+n(a1)*n(a2)*n(a3)*p13(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test10 = K(a1,a2,a3,a4)*(n(a2)*n(a3)*n(a4)*p2(a1)+n(a1)*n(a3)*n(a4)*p2(a2)+n(a1)*n(a2)*n(a4)*p2(a3)+n(a1)*n(a2)*n(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test11 = K(a1,a2,a3,a4)*(n(a3)*n(a4)*p13(a1)*p13(a2)+n(a2)*n(a4)*p13(a1)*p13(a3)+n(a1)*n(a4)*p13(a2)*p13(a3)+n(a2)*n(a3)*p13(a1)*p13(a4)+n(a1)*n(a3)*p13(a2)*p13(a4)+n(a1)*n(a2)*p13(a3)*p13(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test12 = K(a1,a2,a3,a4)*(n(a3)*n(a4)*p13(a2)*p2(a1)+n(a2)*n(a4)*p13(a3)*p2(a1)+n(a2)*n(a3)*p13(a4)*p2(a1)+n(a3)*n(a4)*p13(a1)*p2(a2)+n(a1)*n(a4)*p13(a3)*p2(a2)+n(a1)*n(a3)*p13(a4)*p2(a2)+n(a2)*n(a4)*p13(a1)*p2(a3)+n(a1)*n(a4)*p13(a2)*p2(a3)+n(a1)*n(a2)*p13(a4)*p2(a3)+n(a2)*n(a3)*p13(a1)*p2(a4)+n(a1)*n(a3)*p13(a2)*p2(a4)+n(a1)*n(a2)*p13(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test13 = K(a1,a2,a3,a4)*(n(a3)*n(a4)*p2(a1)*p2(a2)+n(a2)*n(a4)*p2(a1)*p2(a3)+n(a1)*n(a4)*p2(a2)*p2(a3)+n(a2)*n(a3)*p2(a1)*p2(a4)+n(a1)*n(a3)*p2(a2)*p2(a4)+n(a1)*n(a2)*p2(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test14 = K(a1,a2,a3,a4)*(n(a4)*p13(a1)*p13(a2)*p13(a3)+n(a3)*p13(a1)*p13(a2)*p13(a4)+n(a2)*p13(a1)*p13(a3)*p13(a4)+n(a1)*p13(a2)*p13(a3)*p13(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test15 = K(a1,a2,a3,a4)*(n(a4)*p13(a2)*p13(a3)*p2(a1)+n(a3)*p13(a2)*p13(a4)*p2(a1)+n(a2)*p13(a3)*p13(a4)*p2(a1)+n(a4)*p13(a1)*p13(a3)*p2(a2)+n(a3)*p13(a1)*p13(a4)*p2(a2)+n(a1)*p13(a3)*p13(a4)*p2(a2)+n(a4)*p13(a1)*p13(a2)*p2(a3)+n(a2)*p13(a1)*p13(a4)*p2(a3)+n(a1)*p13(a2)*p13(a4)*p2(a3)+n(a3)*p13(a1)*p13(a2)*p2(a4)+n(a2)*p13(a1)*p13(a3)*p2(a4)+n(a1)*p13(a2)*p13(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test16 = K(a1,a2,a3,a4)*(n(a4)*p13(a3)*p2(a1)*p2(a2)+n(a3)*p13(a4)*p2(a1)*p2(a2)+n(a4)*p13(a2)*p2(a1)*p2(a3)+n(a2)*p13(a4)*p2(a1)*p2(a3)+n(a4)*p13(a1)*p2(a2)*p2(a3)+n(a1)*p13(a4)*p2(a2)*p2(a3)+n(a3)*p13(a2)*p2(a1)*p2(a4)+n(a2)*p13(a3)*p2(a1)*p2(a4)+n(a3)*p13(a1)*p2(a2)*p2(a4)+n(a1)*p13(a3)*p2(a2)*p2(a4)+n(a2)*p13(a1)*p2(a3)*p2(a4)+n(a1)*p13(a2)*p2(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test17 = K(a1,a2,a3,a4)*(n(a4)*p2(a1)*p2(a2)*p2(a3)+n(a3)*p2(a1)*p2(a2)*p2(a4)+n(a2)*p2(a1)*p2(a3)*p2(a4)+n(a1)*p2(a2)*p2(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test18 = K(a1,a2,a3,a4)*p13(a1)*p13(a2)*p13(a3)*p13(a4)*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test19 = K(a1,a2,a3,a4)*(p13(a2)*p13(a3)*p13(a4)*p2(a1)+p13(a1)*p13(a3)*p13(a4)*p2(a2)+p13(a1)*p13(a2)*p13(a4)*p2(a3)+p13(a1)*p13(a2)*p13(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test20 = K(a1,a2,a3,a4)*(p13(a3)*p13(a4)*p2(a1)*p2(a2)+p13(a2)*p13(a4)*p2(a1)*p2(a3)+p13(a1)*p13(a4)*p2(a2)*p2(a3)+p13(a2)*p13(a3)*p2(a1)*p2(a4)+p13(a1)*p13(a3)*p2(a2)*p2(a4)+p13(a1)*p13(a2)*p2(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test21 = K(a1,a2,a3,a4)*(p13(a4)*p2(a1)*p2(a2)*p2(a3)+p13(a3)*p2(a1)*p2(a2)*p2(a4)+p13(a2)*p2(a1)*p2(a3)*p2(a4)+p13(a1)*p2(a2)*p2(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test22 = K(a1,a2,a3,a4)*p2(a1)*p2(a2)*p2(a3)*p2(a4)*(ORIGINAL-REDUCED*tensor(4,n,p2,p13));

g test23 = (d_(a1,a4)*d_(a2,a3)+d_(a1,a3)*d_(a2,a4)+d_(a1,a2)*d_(a3,a4))*K(a1,a2,a3,a4)*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test24 = K(a1,a2,a3,a4)*(d_(a3,a4)*n(a1)*n(a2)+d_(a2,a4)*n(a1)*n(a3)+d_(a1,a4)*n(a2)*n(a3)+d_(a2,a3)*n(a1)*n(a4)+d_(a1,a3)*n(a2)*n(a4)+d_(a1,a2)*n(a3)*n(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test25 = K(a1,a2,a3,a4)*(d_(a3,a4)*n(a2)*p1(a1)+d_(a2,a4)*n(a3)*p1(a1)+d_(a2,a3)*n(a4)*p1(a1)+d_(a3,a4)*n(a1)*p1(a2)+d_(a1,a4)*n(a3)*p1(a2)+d_(a1,a3)*n(a4)*p1(a2)+d_(a2,a4)*n(a1)*p1(a3)+d_(a1,a4)*n(a2)*p1(a3)+d_(a1,a2)*n(a4)*p1(a3)+d_(a2,a3)*n(a1)*p1(a4)+d_(a1,a3)*n(a2)*p1(a4)+d_(a1,a2)*n(a3)*p1(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test26 = K(a1,a2,a3,a4)*(d_(a3,a4)*n(a2)*p23(a1)+d_(a2,a4)*n(a3)*p23(a1)+d_(a2,a3)*n(a4)*p23(a1)+d_(a3,a4)*n(a1)*p23(a2)+d_(a1,a4)*n(a3)*p23(a2)+d_(a1,a3)*n(a4)*p23(a2)+d_(a2,a4)*n(a1)*p23(a3)+d_(a1,a4)*n(a2)*p23(a3)+d_(a1,a2)*n(a4)*p23(a3)+d_(a2,a3)*n(a1)*p23(a4)+d_(a1,a3)*n(a2)*p23(a4)+d_(a1,a2)*n(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test27 = K(a1,a2,a3,a4)*(d_(a3,a4)*p1(a1)*p1(a2)+d_(a2,a4)*p1(a1)*p1(a3)+d_(a1,a4)*p1(a2)*p1(a3)+d_(a2,a3)*p1(a1)*p1(a4)+d_(a1,a3)*p1(a2)*p1(a4)+d_(a1,a2)*p1(a3)*p1(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test28 = K(a1,a2,a3,a4)*(d_(a3,a4)*p1(a2)*p23(a1)+d_(a2,a4)*p1(a3)*p23(a1)+d_(a2,a3)*p1(a4)*p23(a1)+d_(a3,a4)*p1(a1)*p23(a2)+d_(a1,a4)*p1(a3)*p23(a2)+d_(a1,a3)*p1(a4)*p23(a2)+d_(a2,a4)*p1(a1)*p23(a3)+d_(a1,a4)*p1(a2)*p23(a3)+d_(a1,a2)*p1(a4)*p23(a3)+d_(a2,a3)*p1(a1)*p23(a4)+d_(a1,a3)*p1(a2)*p23(a4)+d_(a1,a2)*p1(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test29 = K(a1,a2,a3,a4)*(d_(a3,a4)*p23(a1)*p23(a2)+d_(a2,a4)*p23(a1)*p23(a3)+d_(a1,a4)*p23(a2)*p23(a3)+d_(a2,a3)*p23(a1)*p23(a4)+d_(a1,a3)*p23(a2)*p23(a4)+d_(a1,a2)*p23(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test30 = K(a1,a2,a3,a4)*n(a1)*n(a2)*n(a3)*n(a4)*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test31 = K(a1,a2,a3,a4)*(n(a2)*n(a3)*n(a4)*p1(a1)+n(a1)*n(a3)*n(a4)*p1(a2)+n(a1)*n(a2)*n(a4)*p1(a3)+n(a1)*n(a2)*n(a3)*p1(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test32 = K(a1,a2,a3,a4)*(n(a2)*n(a3)*n(a4)*p23(a1)+n(a1)*n(a3)*n(a4)*p23(a2)+n(a1)*n(a2)*n(a4)*p23(a3)+n(a1)*n(a2)*n(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test33 = K(a1,a2,a3,a4)*(n(a3)*n(a4)*p1(a1)*p1(a2)+n(a2)*n(a4)*p1(a1)*p1(a3)+n(a1)*n(a4)*p1(a2)*p1(a3)+n(a2)*n(a3)*p1(a1)*p1(a4)+n(a1)*n(a3)*p1(a2)*p1(a4)+n(a1)*n(a2)*p1(a3)*p1(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test34 = K(a1,a2,a3,a4)*(n(a3)*n(a4)*p1(a2)*p23(a1)+n(a2)*n(a4)*p1(a3)*p23(a1)+n(a2)*n(a3)*p1(a4)*p23(a1)+n(a3)*n(a4)*p1(a1)*p23(a2)+n(a1)*n(a4)*p1(a3)*p23(a2)+n(a1)*n(a3)*p1(a4)*p23(a2)+n(a2)*n(a4)*p1(a1)*p23(a3)+n(a1)*n(a4)*p1(a2)*p23(a3)+n(a1)*n(a2)*p1(a4)*p23(a3)+n(a2)*n(a3)*p1(a1)*p23(a4)+n(a1)*n(a3)*p1(a2)*p23(a4)+n(a1)*n(a2)*p1(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test35 = K(a1,a2,a3,a4)*(n(a3)*n(a4)*p23(a1)*p23(a2)+n(a2)*n(a4)*p23(a1)*p23(a3)+n(a1)*n(a4)*p23(a2)*p23(a3)+n(a2)*n(a3)*p23(a1)*p23(a4)+n(a1)*n(a3)*p23(a2)*p23(a4)+n(a1)*n(a2)*p23(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test36 = K(a1,a2,a3,a4)*(n(a4)*p1(a1)*p1(a2)*p1(a3)+n(a3)*p1(a1)*p1(a2)*p1(a4)+n(a2)*p1(a1)*p1(a3)*p1(a4)+n(a1)*p1(a2)*p1(a3)*p1(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test37 = K(a1,a2,a3,a4)*(n(a4)*p1(a2)*p1(a3)*p23(a1)+n(a3)*p1(a2)*p1(a4)*p23(a1)+n(a2)*p1(a3)*p1(a4)*p23(a1)+n(a4)*p1(a1)*p1(a3)*p23(a2)+n(a3)*p1(a1)*p1(a4)*p23(a2)+n(a1)*p1(a3)*p1(a4)*p23(a2)+n(a4)*p1(a1)*p1(a2)*p23(a3)+n(a2)*p1(a1)*p1(a4)*p23(a3)+n(a1)*p1(a2)*p1(a4)*p23(a3)+n(a3)*p1(a1)*p1(a2)*p23(a4)+n(a2)*p1(a1)*p1(a3)*p23(a4)+n(a1)*p1(a2)*p1(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test38 = K(a1,a2,a3,a4)*(n(a4)*p1(a3)*p23(a1)*p23(a2)+n(a3)*p1(a4)*p23(a1)*p23(a2)+n(a4)*p1(a2)*p23(a1)*p23(a3)+n(a2)*p1(a4)*p23(a1)*p23(a3)+n(a4)*p1(a1)*p23(a2)*p23(a3)+n(a1)*p1(a4)*p23(a2)*p23(a3)+n(a3)*p1(a2)*p23(a1)*p23(a4)+n(a2)*p1(a3)*p23(a1)*p23(a4)+n(a3)*p1(a1)*p23(a2)*p23(a4)+n(a1)*p1(a3)*p23(a2)*p23(a4)+n(a2)*p1(a1)*p23(a3)*p23(a4)+n(a1)*p1(a2)*p23(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test39 = K(a1,a2,a3,a4)*(n(a4)*p23(a1)*p23(a2)*p23(a3)+n(a3)*p23(a1)*p23(a2)*p23(a4)+n(a2)*p23(a1)*p23(a3)*p23(a4)+n(a1)*p23(a2)*p23(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test40 = K(a1,a2,a3,a4)*p1(a1)*p1(a2)*p1(a3)*p1(a4)*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test41 = K(a1,a2,a3,a4)*(p1(a2)*p1(a3)*p1(a4)*p23(a1)+p1(a1)*p1(a3)*p1(a4)*p23(a2)+p1(a1)*p1(a2)*p1(a4)*p23(a3)+p1(a1)*p1(a2)*p1(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test42 = K(a1,a2,a3,a4)*(p1(a3)*p1(a4)*p23(a1)*p23(a2)+p1(a2)*p1(a4)*p23(a1)*p23(a3)+p1(a1)*p1(a4)*p23(a2)*p23(a3)+p1(a2)*p1(a3)*p23(a1)*p23(a4)+p1(a1)*p1(a3)*p23(a2)*p23(a4)+p1(a1)*p1(a2)*p23(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test43 = K(a1,a2,a3,a4)*(p1(a4)*p23(a1)*p23(a2)*p23(a3)+p1(a3)*p23(a1)*p23(a2)*p23(a4)+p1(a2)*p23(a1)*p23(a3)*p23(a4)+p1(a1)*p23(a2)*p23(a3)*p23(a4))*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test44 = K(a1,a2,a3,a4)*p23(a1)*p23(a2)*p23(a3)*p23(a4)*(ORIGINAL-REDUCED*tensor(4,n,p1,p23));

g test45 = (d_(a1,a4)*d_(a2,a3)+d_(a1,a3)*d_(a2,a4)+d_(a1,a2)*d_(a3,a4))*K(a1,a2,a3,a4)*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test46 = K(a1,a2,a3,a4)*(d_(a3,a4)*p1(a1)*p1(a2)+d_(a2,a4)*p1(a1)*p1(a3)+d_(a1,a4)*p1(a2)*p1(a3)+d_(a2,a3)*p1(a1)*p1(a4)+d_(a1,a3)*p1(a2)*p1(a4)+d_(a1,a2)*p1(a3)*p1(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test47 = K(a1,a2,a3,a4)*(d_(a3,a4)*p1(a2)*p2(a1)+d_(a2,a4)*p1(a3)*p2(a1)+d_(a2,a3)*p1(a4)*p2(a1)+d_(a3,a4)*p1(a1)*p2(a2)+d_(a1,a4)*p1(a3)*p2(a2)+d_(a1,a3)*p1(a4)*p2(a2)+d_(a2,a4)*p1(a1)*p2(a3)+d_(a1,a4)*p1(a2)*p2(a3)+d_(a1,a2)*p1(a4)*p2(a3)+d_(a2,a3)*p1(a1)*p2(a4)+d_(a1,a3)*p1(a2)*p2(a4)+d_(a1,a2)*p1(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test48 = K(a1,a2,a3,a4)*(d_(a3,a4)*p1(a2)*p3(a1)+d_(a2,a4)*p1(a3)*p3(a1)+d_(a2,a3)*p1(a4)*p3(a1)+d_(a3,a4)*p1(a1)*p3(a2)+d_(a1,a4)*p1(a3)*p3(a2)+d_(a1,a3)*p1(a4)*p3(a2)+d_(a2,a4)*p1(a1)*p3(a3)+d_(a1,a4)*p1(a2)*p3(a3)+d_(a1,a2)*p1(a4)*p3(a3)+d_(a2,a3)*p1(a1)*p3(a4)+d_(a1,a3)*p1(a2)*p3(a4)+d_(a1,a2)*p1(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test49 = K(a1,a2,a3,a4)*(d_(a3,a4)*p2(a1)*p2(a2)+d_(a2,a4)*p2(a1)*p2(a3)+d_(a1,a4)*p2(a2)*p2(a3)+d_(a2,a3)*p2(a1)*p2(a4)+d_(a1,a3)*p2(a2)*p2(a4)+d_(a1,a2)*p2(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test50 = K(a1,a2,a3,a4)*(d_(a3,a4)*p2(a2)*p3(a1)+d_(a2,a4)*p2(a3)*p3(a1)+d_(a2,a3)*p2(a4)*p3(a1)+d_(a3,a4)*p2(a1)*p3(a2)+d_(a1,a4)*p2(a3)*p3(a2)+d_(a1,a3)*p2(a4)*p3(a2)+d_(a2,a4)*p2(a1)*p3(a3)+d_(a1,a4)*p2(a2)*p3(a3)+d_(a1,a2)*p2(a4)*p3(a3)+d_(a2,a3)*p2(a1)*p3(a4)+d_(a1,a3)*p2(a2)*p3(a4)+d_(a1,a2)*p2(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test51 = K(a1,a2,a3,a4)*(d_(a3,a4)*p3(a1)*p3(a2)+d_(a2,a4)*p3(a1)*p3(a3)+d_(a1,a4)*p3(a2)*p3(a3)+d_(a2,a3)*p3(a1)*p3(a4)+d_(a1,a3)*p3(a2)*p3(a4)+d_(a1,a2)*p3(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test52 = K(a1,a2,a3,a4)*p1(a1)*p1(a2)*p1(a3)*p1(a4)*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test53 = K(a1,a2,a3,a4)*(p1(a2)*p1(a3)*p1(a4)*p2(a1)+p1(a1)*p1(a3)*p1(a4)*p2(a2)+p1(a1)*p1(a2)*p1(a4)*p2(a3)+p1(a1)*p1(a2)*p1(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test54 = K(a1,a2,a3,a4)*(p1(a2)*p1(a3)*p1(a4)*p3(a1)+p1(a1)*p1(a3)*p1(a4)*p3(a2)+p1(a1)*p1(a2)*p1(a4)*p3(a3)+p1(a1)*p1(a2)*p1(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test55 = K(a1,a2,a3,a4)*(p1(a3)*p1(a4)*p2(a1)*p2(a2)+p1(a2)*p1(a4)*p2(a1)*p2(a3)+p1(a1)*p1(a4)*p2(a2)*p2(a3)+p1(a2)*p1(a3)*p2(a1)*p2(a4)+p1(a1)*p1(a3)*p2(a2)*p2(a4)+p1(a1)*p1(a2)*p2(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test56 = K(a1,a2,a3,a4)*(p1(a3)*p1(a4)*p2(a2)*p3(a1)+p1(a2)*p1(a4)*p2(a3)*p3(a1)+p1(a2)*p1(a3)*p2(a4)*p3(a1)+p1(a3)*p1(a4)*p2(a1)*p3(a2)+p1(a1)*p1(a4)*p2(a3)*p3(a2)+p1(a1)*p1(a3)*p2(a4)*p3(a2)+p1(a2)*p1(a4)*p2(a1)*p3(a3)+p1(a1)*p1(a4)*p2(a2)*p3(a3)+p1(a1)*p1(a2)*p2(a4)*p3(a3)+p1(a2)*p1(a3)*p2(a1)*p3(a4)+p1(a1)*p1(a3)*p2(a2)*p3(a4)+p1(a1)*p1(a2)*p2(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test57 = K(a1,a2,a3,a4)*(p1(a3)*p1(a4)*p3(a1)*p3(a2)+p1(a2)*p1(a4)*p3(a1)*p3(a3)+p1(a1)*p1(a4)*p3(a2)*p3(a3)+p1(a2)*p1(a3)*p3(a1)*p3(a4)+p1(a1)*p1(a3)*p3(a2)*p3(a4)+p1(a1)*p1(a2)*p3(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test58 = K(a1,a2,a3,a4)*(p1(a4)*p2(a1)*p2(a2)*p2(a3)+p1(a3)*p2(a1)*p2(a2)*p2(a4)+p1(a2)*p2(a1)*p2(a3)*p2(a4)+p1(a1)*p2(a2)*p2(a3)*p2(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test59 = K(a1,a2,a3,a4)*(p1(a4)*p2(a2)*p2(a3)*p3(a1)+p1(a3)*p2(a2)*p2(a4)*p3(a1)+p1(a2)*p2(a3)*p2(a4)*p3(a1)+p1(a4)*p2(a1)*p2(a3)*p3(a2)+p1(a3)*p2(a1)*p2(a4)*p3(a2)+p1(a1)*p2(a3)*p2(a4)*p3(a2)+p1(a4)*p2(a1)*p2(a2)*p3(a3)+p1(a2)*p2(a1)*p2(a4)*p3(a3)+p1(a1)*p2(a2)*p2(a4)*p3(a3)+p1(a3)*p2(a1)*p2(a2)*p3(a4)+p1(a2)*p2(a1)*p2(a3)*p3(a4)+p1(a1)*p2(a2)*p2(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test60 = K(a1,a2,a3,a4)*(p1(a4)*p2(a3)*p3(a1)*p3(a2)+p1(a3)*p2(a4)*p3(a1)*p3(a2)+p1(a4)*p2(a2)*p3(a1)*p3(a3)+p1(a2)*p2(a4)*p3(a1)*p3(a3)+p1(a4)*p2(a1)*p3(a2)*p3(a3)+p1(a1)*p2(a4)*p3(a2)*p3(a3)+p1(a3)*p2(a2)*p3(a1)*p3(a4)+p1(a2)*p2(a3)*p3(a1)*p3(a4)+p1(a3)*p2(a1)*p3(a2)*p3(a4)+p1(a1)*p2(a3)*p3(a2)*p3(a4)+p1(a2)*p2(a1)*p3(a3)*p3(a4)+p1(a1)*p2(a2)*p3(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test61 = K(a1,a2,a3,a4)*(p1(a4)*p3(a1)*p3(a2)*p3(a3)+p1(a3)*p3(a1)*p3(a2)*p3(a4)+p1(a2)*p3(a1)*p3(a3)*p3(a4)+p1(a1)*p3(a2)*p3(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test62 = K(a1,a2,a3,a4)*p2(a1)*p2(a2)*p2(a3)*p2(a4)*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test63 = K(a1,a2,a3,a4)*(p2(a2)*p2(a3)*p2(a4)*p3(a1)+p2(a1)*p2(a3)*p2(a4)*p3(a2)+p2(a1)*p2(a2)*p2(a4)*p3(a3)+p2(a1)*p2(a2)*p2(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test64 = K(a1,a2,a3,a4)*(p2(a3)*p2(a4)*p3(a1)*p3(a2)+p2(a2)*p2(a4)*p3(a1)*p3(a3)+p2(a1)*p2(a4)*p3(a2)*p3(a3)+p2(a2)*p2(a3)*p3(a1)*p3(a4)+p2(a1)*p2(a3)*p3(a2)*p3(a4)+p2(a1)*p2(a2)*p3(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test65 = K(a1,a2,a3,a4)*(p2(a4)*p3(a1)*p3(a2)*p3(a3)+p2(a3)*p3(a1)*p3(a2)*p3(a4)+p2(a2)*p3(a1)*p3(a3)*p3(a4)+p2(a1)*p3(a2)*p3(a3)*p3(a4))*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test66 = K(a1,a2,a3,a4)*p3(a1)*p3(a2)*p3(a3)*p3(a4)*(ORIGINAL-REDUCED*tensor(4,p1,p2,p3));

g test67 = (d_(a1,a4)*d_(a2,a3)+d_(a1,a3)*d_(a2,a4)+d_(a1,a2)*d_(a3,a4))*K(a1,a2,a3,a4)*(ORIGINAL-REDUCED*tensor(4,n,p123));

g test68 = K(a1,a2,a3,a4)*(d_(a3,a4)*n(a1)*n(a2)+d_(a2,a4)*n(a1)*n(a3)+d_(a1,a4)*n(a2)*n(a3)+d_(a2,a3)*n(a1)*n(a4)+d_(a1,a3)*n(a2)*n(a4)+d_(a1,a2)*n(a3)*n(a4))*(ORIGINAL-REDUCED*tensor(4,n,p123));

g test69 = K(a1,a2,a3,a4)*(d_(a3,a4)*n(a2)*p123(a1)+d_(a2,a4)*n(a3)*p123(a1)+d_(a2,a3)*n(a4)*p123(a1)+d_(a3,a4)*n(a1)*p123(a2)+d_(a1,a4)*n(a3)*p123(a2)+d_(a1,a3)*n(a4)*p123(a2)+d_(a2,a4)*n(a1)*p123(a3)+d_(a1,a4)*n(a2)*p123(a3)+d_(a1,a2)*n(a4)*p123(a3)+d_(a2,a3)*n(a1)*p123(a4)+d_(a1,a3)*n(a2)*p123(a4)+d_(a1,a2)*n(a3)*p123(a4))*(ORIGINAL-REDUCED*tensor(4,n,p123));

g test70 = K(a1,a2,a3,a4)*(d_(a3,a4)*p123(a1)*p123(a2)+d_(a2,a4)*p123(a1)*p123(a3)+d_(a1,a4)*p123(a2)*p123(a3)+d_(a2,a3)*p123(a1)*p123(a4)+d_(a1,a3)*p123(a2)*p123(a4)+d_(a1,a2)*p123(a3)*p123(a4))*(ORIGINAL-REDUCED*tensor(4,n,p123));

g test71 = K(a1,a2,a3,a4)*n(a1)*n(a2)*n(a3)*n(a4)*(ORIGINAL-REDUCED*tensor(4,n,p123));

g test72 = K(a1,a2,a3,a4)*(n(a2)*n(a3)*n(a4)*p123(a1)+n(a1)*n(a3)*n(a4)*p123(a2)+n(a1)*n(a2)*n(a4)*p123(a3)+n(a1)*n(a2)*n(a3)*p123(a4))*(ORIGINAL-REDUCED*tensor(4,n,p123));

g test73 = K(a1,a2,a3,a4)*(n(a3)*n(a4)*p123(a1)*p123(a2)+n(a2)*n(a4)*p123(a1)*p123(a3)+n(a1)*n(a4)*p123(a2)*p123(a3)+n(a2)*n(a3)*p123(a1)*p123(a4)+n(a1)*n(a3)*p123(a2)*p123(a4)+n(a1)*n(a2)*p123(a3)*p123(a4))*(ORIGINAL-REDUCED*tensor(4,n,p123));

g test74 = K(a1,a2,a3,a4)*(n(a4)*p123(a1)*p123(a2)*p123(a3)+n(a3)*p123(a1)*p123(a2)*p123(a4)+n(a2)*p123(a1)*p123(a3)*p123(a4)+n(a1)*p123(a2)*p123(a3)*p123(a4))*(ORIGINAL-REDUCED*tensor(4,n,p123));

g test75 = K(a1,a2,a3,a4)*p123(a1)*p123(a2)*p123(a3)*p123(a4)*(ORIGINAL-REDUCED*tensor(4,n,p123));

g test76 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test77 = K(a1,a2,a3)*(d_(a2,a3)*p2(a1)+d_(a1,a3)*p2(a2)+d_(a1,a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test78 = K(a1,a2,a3)*(d_(a2,a3)*p3(a1)+d_(a1,a3)*p3(a2)+d_(a1,a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test79 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test80 = K(a1,a2,a3)*(n(a2)*n(a3)*p2(a1)+n(a1)*n(a3)*p2(a2)+n(a1)*n(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test81 = K(a1,a2,a3)*(n(a2)*n(a3)*p3(a1)+n(a1)*n(a3)*p3(a2)+n(a1)*n(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test82 = K(a1,a2,a3)*(n(a3)*p2(a1)*p2(a2)+n(a2)*p2(a1)*p2(a3)+n(a1)*p2(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test83 = K(a1,a2,a3)*(n(a3)*p2(a2)*p3(a1)+n(a2)*p2(a3)*p3(a1)+n(a3)*p2(a1)*p3(a2)+n(a1)*p2(a3)*p3(a2)+n(a2)*p2(a1)*p3(a3)+n(a1)*p2(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test84 = K(a1,a2,a3)*(n(a3)*p3(a1)*p3(a2)+n(a2)*p3(a1)*p3(a3)+n(a1)*p3(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test85 = K(a1,a2,a3)*p2(a1)*p2(a2)*p2(a3)*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test86 = K(a1,a2,a3)*(p2(a2)*p2(a3)*p3(a1)+p2(a1)*p2(a3)*p3(a2)+p2(a1)*p2(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test87 = K(a1,a2,a3)*(p2(a3)*p3(a1)*p3(a2)+p2(a2)*p3(a1)*p3(a3)+p2(a1)*p3(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test88 = K(a1,a2,a3)*p3(a1)*p3(a2)*p3(a3)*(ORIGINAL-REDUCED*tensor(3,n,p2,p3));

g test89 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test90 = K(a1,a2,a3)*(d_(a2,a3)*p13(a1)+d_(a1,a3)*p13(a2)+d_(a1,a2)*p13(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test91 = K(a1,a2,a3)*(d_(a2,a3)*p2(a1)+d_(a1,a3)*p2(a2)+d_(a1,a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test92 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test93 = K(a1,a2,a3)*(n(a2)*n(a3)*p13(a1)+n(a1)*n(a3)*p13(a2)+n(a1)*n(a2)*p13(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test94 = K(a1,a2,a3)*(n(a2)*n(a3)*p2(a1)+n(a1)*n(a3)*p2(a2)+n(a1)*n(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test95 = K(a1,a2,a3)*(n(a3)*p13(a1)*p13(a2)+n(a2)*p13(a1)*p13(a3)+n(a1)*p13(a2)*p13(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test96 = K(a1,a2,a3)*(n(a3)*p13(a2)*p2(a1)+n(a2)*p13(a3)*p2(a1)+n(a3)*p13(a1)*p2(a2)+n(a1)*p13(a3)*p2(a2)+n(a2)*p13(a1)*p2(a3)+n(a1)*p13(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test97 = K(a1,a2,a3)*(n(a3)*p2(a1)*p2(a2)+n(a2)*p2(a1)*p2(a3)+n(a1)*p2(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test98 = K(a1,a2,a3)*p13(a1)*p13(a2)*p13(a3)*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test99 = K(a1,a2,a3)*(p13(a2)*p13(a3)*p2(a1)+p13(a1)*p13(a3)*p2(a2)+p13(a1)*p13(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test100 = K(a1,a2,a3)*(p13(a3)*p2(a1)*p2(a2)+p13(a2)*p2(a1)*p2(a3)+p13(a1)*p2(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test101 = K(a1,a2,a3)*p2(a1)*p2(a2)*p2(a3)*(ORIGINAL-REDUCED*tensor(3,n,p2,p13));

g test102 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test103 = K(a1,a2,a3)*(d_(a2,a3)*p1(a1)+d_(a1,a3)*p1(a2)+d_(a1,a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test104 = K(a1,a2,a3)*(d_(a2,a3)*p3(a1)+d_(a1,a3)*p3(a2)+d_(a1,a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test105 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test106 = K(a1,a2,a3)*(n(a2)*n(a3)*p1(a1)+n(a1)*n(a3)*p1(a2)+n(a1)*n(a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test107 = K(a1,a2,a3)*(n(a2)*n(a3)*p3(a1)+n(a1)*n(a3)*p3(a2)+n(a1)*n(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test108 = K(a1,a2,a3)*(n(a3)*p1(a1)*p1(a2)+n(a2)*p1(a1)*p1(a3)+n(a1)*p1(a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test109 = K(a1,a2,a3)*(n(a3)*p1(a2)*p3(a1)+n(a2)*p1(a3)*p3(a1)+n(a3)*p1(a1)*p3(a2)+n(a1)*p1(a3)*p3(a2)+n(a2)*p1(a1)*p3(a3)+n(a1)*p1(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test110 = K(a1,a2,a3)*(n(a3)*p3(a1)*p3(a2)+n(a2)*p3(a1)*p3(a3)+n(a1)*p3(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test111 = K(a1,a2,a3)*p1(a1)*p1(a2)*p1(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test112 = K(a1,a2,a3)*(p1(a2)*p1(a3)*p3(a1)+p1(a1)*p1(a3)*p3(a2)+p1(a1)*p1(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test113 = K(a1,a2,a3)*(p1(a3)*p3(a1)*p3(a2)+p1(a2)*p3(a1)*p3(a3)+p1(a1)*p3(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test114 = K(a1,a2,a3)*p3(a1)*p3(a2)*p3(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1,p3));

g test115 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test116 = K(a1,a2,a3)*(d_(a2,a3)*p1(a1)+d_(a1,a3)*p1(a2)+d_(a1,a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test117 = K(a1,a2,a3)*(d_(a2,a3)*p23(a1)+d_(a1,a3)*p23(a2)+d_(a1,a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test118 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test119 = K(a1,a2,a3)*(n(a2)*n(a3)*p1(a1)+n(a1)*n(a3)*p1(a2)+n(a1)*n(a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test120 = K(a1,a2,a3)*(n(a2)*n(a3)*p23(a1)+n(a1)*n(a3)*p23(a2)+n(a1)*n(a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test121 = K(a1,a2,a3)*(n(a3)*p1(a1)*p1(a2)+n(a2)*p1(a1)*p1(a3)+n(a1)*p1(a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test122 = K(a1,a2,a3)*(n(a3)*p1(a2)*p23(a1)+n(a2)*p1(a3)*p23(a1)+n(a3)*p1(a1)*p23(a2)+n(a1)*p1(a3)*p23(a2)+n(a2)*p1(a1)*p23(a3)+n(a1)*p1(a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test123 = K(a1,a2,a3)*(n(a3)*p23(a1)*p23(a2)+n(a2)*p23(a1)*p23(a3)+n(a1)*p23(a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test124 = K(a1,a2,a3)*p1(a1)*p1(a2)*p1(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test125 = K(a1,a2,a3)*(p1(a2)*p1(a3)*p23(a1)+p1(a1)*p1(a3)*p23(a2)+p1(a1)*p1(a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test126 = K(a1,a2,a3)*(p1(a3)*p23(a1)*p23(a2)+p1(a2)*p23(a1)*p23(a3)+p1(a1)*p23(a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test127 = K(a1,a2,a3)*p23(a1)*p23(a2)*p23(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1,p23));

g test128 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test129 = K(a1,a2,a3)*(d_(a2,a3)*p1(a1)+d_(a1,a3)*p1(a2)+d_(a1,a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test130 = K(a1,a2,a3)*(d_(a2,a3)*p2(a1)+d_(a1,a3)*p2(a2)+d_(a1,a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test131 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test132 = K(a1,a2,a3)*(n(a2)*n(a3)*p1(a1)+n(a1)*n(a3)*p1(a2)+n(a1)*n(a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test133 = K(a1,a2,a3)*(n(a2)*n(a3)*p2(a1)+n(a1)*n(a3)*p2(a2)+n(a1)*n(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test134 = K(a1,a2,a3)*(n(a3)*p1(a1)*p1(a2)+n(a2)*p1(a1)*p1(a3)+n(a1)*p1(a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test135 = K(a1,a2,a3)*(n(a3)*p1(a2)*p2(a1)+n(a2)*p1(a3)*p2(a1)+n(a3)*p1(a1)*p2(a2)+n(a1)*p1(a3)*p2(a2)+n(a2)*p1(a1)*p2(a3)+n(a1)*p1(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test136 = K(a1,a2,a3)*(n(a3)*p2(a1)*p2(a2)+n(a2)*p2(a1)*p2(a3)+n(a1)*p2(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test137 = K(a1,a2,a3)*p1(a1)*p1(a2)*p1(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test138 = K(a1,a2,a3)*(p1(a2)*p1(a3)*p2(a1)+p1(a1)*p1(a3)*p2(a2)+p1(a1)*p1(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test139 = K(a1,a2,a3)*(p1(a3)*p2(a1)*p2(a2)+p1(a2)*p2(a1)*p2(a3)+p1(a1)*p2(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test140 = K(a1,a2,a3)*p2(a1)*p2(a2)*p2(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1,p2));

g test141 = K(a1,a2,a3)*(d_(a2,a3)*p1(a1)+d_(a1,a3)*p1(a2)+d_(a1,a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test142 = K(a1,a2,a3)*(d_(a2,a3)*p2(a1)+d_(a1,a3)*p2(a2)+d_(a1,a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test143 = K(a1,a2,a3)*(d_(a2,a3)*p3(a1)+d_(a1,a3)*p3(a2)+d_(a1,a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test144 = K(a1,a2,a3)*p1(a1)*p1(a2)*p1(a3)*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test145 = K(a1,a2,a3)*(p1(a2)*p1(a3)*p2(a1)+p1(a1)*p1(a3)*p2(a2)+p1(a1)*p1(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test146 = K(a1,a2,a3)*(p1(a2)*p1(a3)*p3(a1)+p1(a1)*p1(a3)*p3(a2)+p1(a1)*p1(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test147 = K(a1,a2,a3)*(p1(a3)*p2(a1)*p2(a2)+p1(a2)*p2(a1)*p2(a3)+p1(a1)*p2(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test148 = K(a1,a2,a3)*(p1(a3)*p2(a2)*p3(a1)+p1(a2)*p2(a3)*p3(a1)+p1(a3)*p2(a1)*p3(a2)+p1(a1)*p2(a3)*p3(a2)+p1(a2)*p2(a1)*p3(a3)+p1(a1)*p2(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test149 = K(a1,a2,a3)*(p1(a3)*p3(a1)*p3(a2)+p1(a2)*p3(a1)*p3(a3)+p1(a1)*p3(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test150 = K(a1,a2,a3)*p2(a1)*p2(a2)*p2(a3)*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test151 = K(a1,a2,a3)*(p2(a2)*p2(a3)*p3(a1)+p2(a1)*p2(a3)*p3(a2)+p2(a1)*p2(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test152 = K(a1,a2,a3)*(p2(a3)*p3(a1)*p3(a2)+p2(a2)*p3(a1)*p3(a3)+p2(a1)*p3(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test153 = K(a1,a2,a3)*p3(a1)*p3(a2)*p3(a3)*(ORIGINAL-REDUCED*tensor(3,p1,p2,p3));

g test154 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p23));

g test155 = K(a1,a2,a3)*(d_(a2,a3)*p23(a1)+d_(a1,a3)*p23(a2)+d_(a1,a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,n,p23));

g test156 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p23));

g test157 = K(a1,a2,a3)*(n(a2)*n(a3)*p23(a1)+n(a1)*n(a3)*p23(a2)+n(a1)*n(a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,n,p23));

g test158 = K(a1,a2,a3)*(n(a3)*p23(a1)*p23(a2)+n(a2)*p23(a1)*p23(a3)+n(a1)*p23(a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,n,p23));

g test159 = K(a1,a2,a3)*p23(a1)*p23(a2)*p23(a3)*(ORIGINAL-REDUCED*tensor(3,n,p23));

g test160 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2));

g test161 = K(a1,a2,a3)*(d_(a2,a3)*p2(a1)+d_(a1,a3)*p2(a2)+d_(a1,a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2));

g test162 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p2));

g test163 = K(a1,a2,a3)*(n(a2)*n(a3)*p2(a1)+n(a1)*n(a3)*p2(a2)+n(a1)*n(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2));

g test164 = K(a1,a2,a3)*(n(a3)*p2(a1)*p2(a2)+n(a2)*p2(a1)*p2(a3)+n(a1)*p2(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,n,p2));

g test165 = K(a1,a2,a3)*p2(a1)*p2(a2)*p2(a3)*(ORIGINAL-REDUCED*tensor(3,n,p2));

g test166 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p13));

g test167 = K(a1,a2,a3)*(d_(a2,a3)*p13(a1)+d_(a1,a3)*p13(a2)+d_(a1,a2)*p13(a3))*(ORIGINAL-REDUCED*tensor(3,n,p13));

g test168 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p13));

g test169 = K(a1,a2,a3)*(n(a2)*n(a3)*p13(a1)+n(a1)*n(a3)*p13(a2)+n(a1)*n(a2)*p13(a3))*(ORIGINAL-REDUCED*tensor(3,n,p13));

g test170 = K(a1,a2,a3)*(n(a3)*p13(a1)*p13(a2)+n(a2)*p13(a1)*p13(a3)+n(a1)*p13(a2)*p13(a3))*(ORIGINAL-REDUCED*tensor(3,n,p13));

g test171 = K(a1,a2,a3)*p13(a1)*p13(a2)*p13(a3)*(ORIGINAL-REDUCED*tensor(3,n,p13));

g test172 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p123));

g test173 = K(a1,a2,a3)*(d_(a2,a3)*p123(a1)+d_(a1,a3)*p123(a2)+d_(a1,a2)*p123(a3))*(ORIGINAL-REDUCED*tensor(3,n,p123));

g test174 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p123));

g test175 = K(a1,a2,a3)*(n(a2)*n(a3)*p123(a1)+n(a1)*n(a3)*p123(a2)+n(a1)*n(a2)*p123(a3))*(ORIGINAL-REDUCED*tensor(3,n,p123));

g test176 = K(a1,a2,a3)*(n(a3)*p123(a1)*p123(a2)+n(a2)*p123(a1)*p123(a3)+n(a1)*p123(a2)*p123(a3))*(ORIGINAL-REDUCED*tensor(3,n,p123));

g test177 = K(a1,a2,a3)*p123(a1)*p123(a2)*p123(a3)*(ORIGINAL-REDUCED*tensor(3,n,p123));

g test178 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p12));

g test179 = K(a1,a2,a3)*(d_(a2,a3)*p12(a1)+d_(a1,a3)*p12(a2)+d_(a1,a2)*p12(a3))*(ORIGINAL-REDUCED*tensor(3,n,p12));

g test180 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p12));

g test181 = K(a1,a2,a3)*(n(a2)*n(a3)*p12(a1)+n(a1)*n(a3)*p12(a2)+n(a1)*n(a2)*p12(a3))*(ORIGINAL-REDUCED*tensor(3,n,p12));

g test182 = K(a1,a2,a3)*(n(a3)*p12(a1)*p12(a2)+n(a2)*p12(a1)*p12(a3)+n(a1)*p12(a2)*p12(a3))*(ORIGINAL-REDUCED*tensor(3,n,p12));

g test183 = K(a1,a2,a3)*p12(a1)*p12(a2)*p12(a3)*(ORIGINAL-REDUCED*tensor(3,n,p12));

g test184 = K(a1,a2,a3)*(d_(a2,a3)*n(a1)+d_(a1,a3)*n(a2)+d_(a1,a2)*n(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1));

g test185 = K(a1,a2,a3)*(d_(a2,a3)*p1(a1)+d_(a1,a3)*p1(a2)+d_(a1,a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1));

g test186 = K(a1,a2,a3)*n(a1)*n(a2)*n(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1));

g test187 = K(a1,a2,a3)*(n(a2)*n(a3)*p1(a1)+n(a1)*n(a3)*p1(a2)+n(a1)*n(a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1));

g test188 = K(a1,a2,a3)*(n(a3)*p1(a1)*p1(a2)+n(a2)*p1(a1)*p1(a3)+n(a1)*p1(a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,n,p1));

g test189 = K(a1,a2,a3)*p1(a1)*p1(a2)*p1(a3)*(ORIGINAL-REDUCED*tensor(3,n,p1));

g test190 = K(a1,a2,a3)*(d_(a2,a3)*p12(a1)+d_(a1,a3)*p12(a2)+d_(a1,a2)*p12(a3))*(ORIGINAL-REDUCED*tensor(3,p3,p12));

g test191 = K(a1,a2,a3)*(d_(a2,a3)*p3(a1)+d_(a1,a3)*p3(a2)+d_(a1,a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p3,p12));

g test192 = K(a1,a2,a3)*p12(a1)*p12(a2)*p12(a3)*(ORIGINAL-REDUCED*tensor(3,p3,p12));

g test193 = K(a1,a2,a3)*(p12(a2)*p12(a3)*p3(a1)+p12(a1)*p12(a3)*p3(a2)+p12(a1)*p12(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p3,p12));

g test194 = K(a1,a2,a3)*(p12(a3)*p3(a1)*p3(a2)+p12(a2)*p3(a1)*p3(a3)+p12(a1)*p3(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p3,p12));

g test195 = K(a1,a2,a3)*p3(a1)*p3(a2)*p3(a3)*(ORIGINAL-REDUCED*tensor(3,p3,p12));

g test196 = K(a1,a2,a3)*(d_(a2,a3)*p2(a1)+d_(a1,a3)*p2(a2)+d_(a1,a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p2,p3));

g test197 = K(a1,a2,a3)*(d_(a2,a3)*p3(a1)+d_(a1,a3)*p3(a2)+d_(a1,a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p2,p3));

g test198 = K(a1,a2,a3)*p2(a1)*p2(a2)*p2(a3)*(ORIGINAL-REDUCED*tensor(3,p2,p3));

g test199 = K(a1,a2,a3)*(p2(a2)*p2(a3)*p3(a1)+p2(a1)*p2(a3)*p3(a2)+p2(a1)*p2(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p2,p3));

g test200 = K(a1,a2,a3)*(p2(a3)*p3(a1)*p3(a2)+p2(a2)*p3(a1)*p3(a3)+p2(a1)*p3(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p2,p3));

g test201 = K(a1,a2,a3)*p3(a1)*p3(a2)*p3(a3)*(ORIGINAL-REDUCED*tensor(3,p2,p3));

g test202 = K(a1,a2,a3)*(d_(a2,a3)*p13(a1)+d_(a1,a3)*p13(a2)+d_(a1,a2)*p13(a3))*(ORIGINAL-REDUCED*tensor(3,p2,p13));

g test203 = K(a1,a2,a3)*(d_(a2,a3)*p2(a1)+d_(a1,a3)*p2(a2)+d_(a1,a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p2,p13));

g test204 = K(a1,a2,a3)*p13(a1)*p13(a2)*p13(a3)*(ORIGINAL-REDUCED*tensor(3,p2,p13));

g test205 = K(a1,a2,a3)*(p13(a2)*p13(a3)*p2(a1)+p13(a1)*p13(a3)*p2(a2)+p13(a1)*p13(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p2,p13));

g test206 = K(a1,a2,a3)*(p13(a3)*p2(a1)*p2(a2)+p13(a2)*p2(a1)*p2(a3)+p13(a1)*p2(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p2,p13));

g test207 = K(a1,a2,a3)*p2(a1)*p2(a2)*p2(a3)*(ORIGINAL-REDUCED*tensor(3,p2,p13));

g test208 = K(a1,a2,a3)*(d_(a2,a3)*p1(a1)+d_(a1,a3)*p1(a2)+d_(a1,a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p3));

g test209 = K(a1,a2,a3)*(d_(a2,a3)*p3(a1)+d_(a1,a3)*p3(a2)+d_(a1,a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p3));

g test210 = K(a1,a2,a3)*p1(a1)*p1(a2)*p1(a3)*(ORIGINAL-REDUCED*tensor(3,p1,p3));

g test211 = K(a1,a2,a3)*(p1(a2)*p1(a3)*p3(a1)+p1(a1)*p1(a3)*p3(a2)+p1(a1)*p1(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p3));

g test212 = K(a1,a2,a3)*(p1(a3)*p3(a1)*p3(a2)+p1(a2)*p3(a1)*p3(a3)+p1(a1)*p3(a2)*p3(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p3));

g test213 = K(a1,a2,a3)*p3(a1)*p3(a2)*p3(a3)*(ORIGINAL-REDUCED*tensor(3,p1,p3));

g test214 = K(a1,a2,a3)*(d_(a2,a3)*p1(a1)+d_(a1,a3)*p1(a2)+d_(a1,a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p23));

g test215 = K(a1,a2,a3)*(d_(a2,a3)*p23(a1)+d_(a1,a3)*p23(a2)+d_(a1,a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p23));

g test216 = K(a1,a2,a3)*p1(a1)*p1(a2)*p1(a3)*(ORIGINAL-REDUCED*tensor(3,p1,p23));

g test217 = K(a1,a2,a3)*(p1(a2)*p1(a3)*p23(a1)+p1(a1)*p1(a3)*p23(a2)+p1(a1)*p1(a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p23));

g test218 = K(a1,a2,a3)*(p1(a3)*p23(a1)*p23(a2)+p1(a2)*p23(a1)*p23(a3)+p1(a1)*p23(a2)*p23(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p23));

g test219 = K(a1,a2,a3)*p23(a1)*p23(a2)*p23(a3)*(ORIGINAL-REDUCED*tensor(3,p1,p23));

g test220 = K(a1,a2,a3)*(d_(a2,a3)*p1(a1)+d_(a1,a3)*p1(a2)+d_(a1,a2)*p1(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2));

g test221 = K(a1,a2,a3)*(d_(a2,a3)*p2(a1)+d_(a1,a3)*p2(a2)+d_(a1,a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2));

g test222 = K(a1,a2,a3)*p1(a1)*p1(a2)*p1(a3)*(ORIGINAL-REDUCED*tensor(3,p1,p2));

g test223 = K(a1,a2,a3)*(p1(a2)*p1(a3)*p2(a1)+p1(a1)*p1(a3)*p2(a2)+p1(a1)*p1(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2));

g test224 = K(a1,a2,a3)*(p1(a3)*p2(a1)*p2(a2)+p1(a2)*p2(a1)*p2(a3)+p1(a1)*p2(a2)*p2(a3))*(ORIGINAL-REDUCED*tensor(3,p1,p2));

g test225 = K(a1,a2,a3)*p2(a1)*p2(a2)*p2(a3)*(ORIGINAL-REDUCED*tensor(3,p1,p2));

g test226 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test227 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test228 = K(a1,a2)*(n(a2)*p1(a1)+n(a1)*p1(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test229 = K(a1,a2)*(n(a2)*p2(a1)+n(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test230 = K(a1,a2)*(n(a2)*p3(a1)+n(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test231 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test232 = K(a1,a2)*(p1(a2)*p2(a1)+p1(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test233 = K(a1,a2)*(p1(a2)*p3(a1)+p1(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test234 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test235 = K(a1,a2)*(p2(a2)*p3(a1)+p2(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test236 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p2,p3));

g test237 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p3,p12));

g test238 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p3,p12));

g test239 = K(a1,a2)*(n(a2)*p12(a1)+n(a1)*p12(a2))*(ORIGINAL-REDUCED*tensor(2,n,p3,p12));

g test240 = K(a1,a2)*(n(a2)*p3(a1)+n(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p3,p12));

g test241 = K(a1,a2)*p12(a1)*p12(a2)*(ORIGINAL-REDUCED*tensor(2,n,p3,p12));

g test242 = K(a1,a2)*(p12(a2)*p3(a1)+p12(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p3,p12));

g test243 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,n,p3,p12));

g test244 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p2,p3));

g test245 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p2,p3));

g test246 = K(a1,a2)*(n(a2)*p2(a1)+n(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,n,p2,p3));

g test247 = K(a1,a2)*(n(a2)*p3(a1)+n(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p2,p3));

g test248 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,n,p2,p3));

g test249 = K(a1,a2)*(p2(a2)*p3(a1)+p2(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p2,p3));

g test250 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,n,p2,p3));

g test251 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p2,p13));

g test252 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p2,p13));

g test253 = K(a1,a2)*(n(a2)*p13(a1)+n(a1)*p13(a2))*(ORIGINAL-REDUCED*tensor(2,n,p2,p13));

g test254 = K(a1,a2)*(n(a2)*p2(a1)+n(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,n,p2,p13));

g test255 = K(a1,a2)*p13(a1)*p13(a2)*(ORIGINAL-REDUCED*tensor(2,n,p2,p13));

g test256 = K(a1,a2)*(p13(a2)*p2(a1)+p13(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,n,p2,p13));

g test257 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,n,p2,p13));

g test258 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p3));

g test259 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p3));

g test260 = K(a1,a2)*(n(a2)*p1(a1)+n(a1)*p1(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p3));

g test261 = K(a1,a2)*(n(a2)*p3(a1)+n(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p3));

g test262 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p3));

g test263 = K(a1,a2)*(p1(a2)*p3(a1)+p1(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p3));

g test264 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p3));

g test265 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p23));

g test266 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p23));

g test267 = K(a1,a2)*(n(a2)*p1(a1)+n(a1)*p1(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p23));

g test268 = K(a1,a2)*(n(a2)*p23(a1)+n(a1)*p23(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p23));

g test269 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p23));

g test270 = K(a1,a2)*(p1(a2)*p23(a1)+p1(a1)*p23(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p23));

g test271 = K(a1,a2)*p23(a1)*p23(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p23));

g test272 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p2));

g test273 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p2));

g test274 = K(a1,a2)*(n(a2)*p1(a1)+n(a1)*p1(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p2));

g test275 = K(a1,a2)*(n(a2)*p2(a1)+n(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p2));

g test276 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p2));

g test277 = K(a1,a2)*(p1(a2)*p2(a1)+p1(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1,p2));

g test278 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1,p2));

g test279 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p1,p2,p3));

g test280 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,p1,p2,p3));

g test281 = K(a1,a2)*(p1(a2)*p2(a1)+p1(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,p1,p2,p3));

g test282 = K(a1,a2)*(p1(a2)*p3(a1)+p1(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,p1,p2,p3));

g test283 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,p1,p2,p3));

g test284 = K(a1,a2)*(p2(a2)*p3(a1)+p2(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,p1,p2,p3));

g test285 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,p1,p2,p3));

g test286 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p3));

g test287 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p3));

g test288 = K(a1,a2)*(n(a2)*p3(a1)+n(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,n,p3));

g test289 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,n,p3));

g test290 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p23));

g test291 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p23));

g test292 = K(a1,a2)*(n(a2)*p23(a1)+n(a1)*p23(a2))*(ORIGINAL-REDUCED*tensor(2,n,p23));

g test293 = K(a1,a2)*p23(a1)*p23(a2)*(ORIGINAL-REDUCED*tensor(2,n,p23));

g test294 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p2));

g test295 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p2));

g test296 = K(a1,a2)*(n(a2)*p2(a1)+n(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,n,p2));

g test297 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,n,p2));

g test298 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p13));

g test299 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p13));

g test300 = K(a1,a2)*(n(a2)*p13(a1)+n(a1)*p13(a2))*(ORIGINAL-REDUCED*tensor(2,n,p13));

g test301 = K(a1,a2)*p13(a1)*p13(a2)*(ORIGINAL-REDUCED*tensor(2,n,p13));

g test302 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p123));

g test303 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p123));

g test304 = K(a1,a2)*(n(a2)*p123(a1)+n(a1)*p123(a2))*(ORIGINAL-REDUCED*tensor(2,n,p123));

g test305 = K(a1,a2)*p123(a1)*p123(a2)*(ORIGINAL-REDUCED*tensor(2,n,p123));

g test306 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p12));

g test307 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p12));

g test308 = K(a1,a2)*(n(a2)*p12(a1)+n(a1)*p12(a2))*(ORIGINAL-REDUCED*tensor(2,n,p12));

g test309 = K(a1,a2)*p12(a1)*p12(a2)*(ORIGINAL-REDUCED*tensor(2,n,p12));

g test310 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n,p1));

g test311 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1));

g test312 = K(a1,a2)*(n(a2)*p1(a1)+n(a1)*p1(a2))*(ORIGINAL-REDUCED*tensor(2,n,p1));

g test313 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,n,p1));

g test314 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p3,p12));

g test315 = K(a1,a2)*p12(a1)*p12(a2)*(ORIGINAL-REDUCED*tensor(2,p3,p12));

g test316 = K(a1,a2)*(p12(a2)*p3(a1)+p12(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,p3,p12));

g test317 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,p3,p12));

g test318 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p2,p3));

g test319 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,p2,p3));

g test320 = K(a1,a2)*(p2(a2)*p3(a1)+p2(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,p2,p3));

g test321 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,p2,p3));

g test322 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p2,p13));

g test323 = K(a1,a2)*p13(a1)*p13(a2)*(ORIGINAL-REDUCED*tensor(2,p2,p13));

g test324 = K(a1,a2)*(p13(a2)*p2(a1)+p13(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,p2,p13));

g test325 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,p2,p13));

g test326 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p1,p3));

g test327 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,p1,p3));

g test328 = K(a1,a2)*(p1(a2)*p3(a1)+p1(a1)*p3(a2))*(ORIGINAL-REDUCED*tensor(2,p1,p3));

g test329 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,p1,p3));

g test330 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p1,p23));

g test331 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,p1,p23));

g test332 = K(a1,a2)*(p1(a2)*p23(a1)+p1(a1)*p23(a2))*(ORIGINAL-REDUCED*tensor(2,p1,p23));

g test333 = K(a1,a2)*p23(a1)*p23(a2)*(ORIGINAL-REDUCED*tensor(2,p1,p23));

g test334 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p1,p2));

g test335 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,p1,p2));

g test336 = K(a1,a2)*(p1(a2)*p2(a1)+p1(a1)*p2(a2))*(ORIGINAL-REDUCED*tensor(2,p1,p2));

g test337 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,p1,p2));

g test338 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,n));

g test339 = K(a1,a2)*n(a1)*n(a2)*(ORIGINAL-REDUCED*tensor(2,n));

g test340 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p3));

g test341 = K(a1,a2)*p3(a1)*p3(a2)*(ORIGINAL-REDUCED*tensor(2,p3));

g test342 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p23));

g test343 = K(a1,a2)*p23(a1)*p23(a2)*(ORIGINAL-REDUCED*tensor(2,p23));

g test344 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p2));

g test345 = K(a1,a2)*p2(a1)*p2(a2)*(ORIGINAL-REDUCED*tensor(2,p2));

g test346 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p13));

g test347 = K(a1,a2)*p13(a1)*p13(a2)*(ORIGINAL-REDUCED*tensor(2,p13));

g test348 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p123));

g test349 = K(a1,a2)*p123(a1)*p123(a2)*(ORIGINAL-REDUCED*tensor(2,p123));

g test350 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p12));

g test351 = K(a1,a2)*p12(a1)*p12(a2)*(ORIGINAL-REDUCED*tensor(2,p12));

g test352 = d_(a1,a2)*K(a1,a2)*(ORIGINAL-REDUCED*tensor(2,p1));

g test353 = K(a1,a2)*p1(a1)*p1(a2)*(ORIGINAL-REDUCED*tensor(2,p1));

g test354 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p2,p3));

g test355 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p2,p3));

g test356 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p2,p3));

g test357 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p2,p3));

g test358 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p3,p12));

g test359 = K(a1)*p12(a1)*(ORIGINAL-REDUCED*tensor(1,n,p3,p12));

g test360 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,n,p3,p12));

g test361 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p2,p3));

g test362 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,n,p2,p3));

g test363 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,n,p2,p3));

g test364 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p2,p13));

g test365 = K(a1)*p13(a1)*(ORIGINAL-REDUCED*tensor(1,n,p2,p13));

g test366 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,n,p2,p13));

g test367 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p3));

g test368 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p3));

g test369 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p3));

g test370 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p23));

g test371 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p23));

g test372 = K(a1)*p23(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p23));

g test373 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p2));

g test374 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p2));

g test375 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1,p2));

g test376 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,p1,p2,p3));

g test377 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,p1,p2,p3));

g test378 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,p1,p2,p3));

g test379 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p3));

g test380 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,n,p3));

g test381 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p23));

g test382 = K(a1)*p23(a1)*(ORIGINAL-REDUCED*tensor(1,n,p23));

g test383 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p2));

g test384 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,n,p2));

g test385 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p13));

g test386 = K(a1)*p13(a1)*(ORIGINAL-REDUCED*tensor(1,n,p13));

g test387 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p123));

g test388 = K(a1)*p123(a1)*(ORIGINAL-REDUCED*tensor(1,n,p123));

g test389 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p12));

g test390 = K(a1)*p12(a1)*(ORIGINAL-REDUCED*tensor(1,n,p12));

g test391 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1));

g test392 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,n,p1));

g test393 = K(a1)*p12(a1)*(ORIGINAL-REDUCED*tensor(1,p3,p12));

g test394 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,p3,p12));

g test395 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,p2,p3));

g test396 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,p2,p3));

g test397 = K(a1)*p13(a1)*(ORIGINAL-REDUCED*tensor(1,p2,p13));

g test398 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,p2,p13));

g test399 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,p1,p3));

g test400 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,p1,p3));

g test401 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,p1,p23));

g test402 = K(a1)*p23(a1)*(ORIGINAL-REDUCED*tensor(1,p1,p23));

g test403 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,p1,p2));

g test404 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,p1,p2));

g test405 = K(a1)*n(a1)*(ORIGINAL-REDUCED*tensor(1,n));

g test406 = K(a1)*p3(a1)*(ORIGINAL-REDUCED*tensor(1,p3));

g test407 = K(a1)*p23(a1)*(ORIGINAL-REDUCED*tensor(1,p23));

g test408 = K(a1)*p2(a1)*(ORIGINAL-REDUCED*tensor(1,p2));

g test409 = K(a1)*p13(a1)*(ORIGINAL-REDUCED*tensor(1,p13));

g test410 = K(a1)*p123(a1)*(ORIGINAL-REDUCED*tensor(1,p123));

g test411 = K(a1)*p12(a1)*(ORIGINAL-REDUCED*tensor(1,p12));

g test412 = K(a1)*p1(a1)*(ORIGINAL-REDUCED*tensor(1,p1));

#define ntests "412"
