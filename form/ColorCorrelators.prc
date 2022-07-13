#procedure ColorCorrelators

.sort

i cc0,cc1,cc2,cc3;

mul replace_(c0,cc0,c1,cc1,c2,cc2,c3,cc3);

if (occurs(U0));
  mul delta(c0,cc0)-T(0)*cOlT(cc0,c0,cOli99);
else;
  mul d_(c0,cc0)+T(0)*i_*cOlf(c0,cOli99,cc0);
endif;

if (occurs(UBar1));
  mul delta(c1,cc1)+T(1)*cOlT(c1,cc1,cOli99);
else;
  mul d_(c1,cc1)+T(1)*i_*cOlf(c1,cOli99,cc1);
endif;

*if (0);*occurs(UBar2));
*  mul delta(c2,cc2)+T(2)*cOlT(c2,cc2,cOli99);
*else;
*  mul d_(c2,cc2)+T(2)*i_*cOlf(c2,cOli99,cc2);
*endif;

if (occurs(V2));
  mul delta(c2,cc2)-T(2)*cOlT(cc2,c2,cOli99);
else;
  mul d_(c2,cc2)+T(2)*i_*cOlf(c2,cOli99,cc2);
endif;

if (count(T,1) != multipleof(2)) discard;
if (count(T,1) > 2) discard;

* correlations with the off-shell line are not needed
id T(0) = 0;

.sort

#endprocedure
