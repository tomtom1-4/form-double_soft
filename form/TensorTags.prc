#procedure TensorTags
********************************************************************************
* Tensor tags are used to substitute the appropriate Passarino-Veltman reduction

* In the case of fermion chains, the first WaveFunctions may lead to
* cancellation of numerators with denominators, which will be corrected by
* SimplifyIntegrals. However, afterwards, the fermion chain may still be further
* simplified which is taken care of by the additional calls

#do i=1,2
#call WaveFunctions
#call SimplifyIntegrals
#enddo

b DS,Eik,k;
.sort
Keep Brackets;
* assumes standard propagators as obtained after #call SimplifyIntegrals
#do P={p3, p4, p3 + p4}
  id DS(k,?args)*DS(k+`P') = DS(k,?args,k+`P');
#enddo

id DS(k,p1?,p2?,p3?) = DS(k)*DS(p1)*DS(p2)*DS(p3)*tensor(p1-k,p2-p1,p3-p2);
id DS(k,p1?,p2?) =     DS(k)*DS(p1)*DS(p2)*       tensor(p1-k,p2-p1);
id DS(k,p1?) =         DS(k)*DS(p1)*              tensor(p1-k);

if (count(Eik, 1) == 3);
  id Eik(k?, p1?) * Eik(p3?, p2?) * Eik(k1?, n?) = tensor(p1, p2, n) * Eik(k, p1) * Eik(p3, p2) * Eik(k1, n);
elseif(count(Eik, 1) == 2);
  id Eik(k?, p1?) * Eik(p3?, p2?) = tensor(p1, p2) * Eik(k, p1) * Eik(p3, p2);
elseif(count(Eik, 1) == 1);
  id Eik(k?, p1?) = tensor(p1) * Eik(k, p1);
endif;

id tensor(?args1) * tensor(?args2) = tensor(?args1, ?args2);

#do P={p1,p2,n} 
  id tensor(?args, `P', ?args1, `P', ?args2) = tensor(?args, `P', ?args1, ?args2);
#enddo

* notation for linear combinations of external momenta
id tensor(?args1,p3+p4,?args2) = tensor(?args1,p34,?args2);
symmetrize tensor;

.sort 
*if (match(tensor(p1?, p2?))) discard;
*id once tensor(?args)*Eik(p?) = tensor(n,?args)*Eik(p); * why p: p must contain k, because else it would have been reduced to some scalar product
* like p1n. Then for PV reduction only the linear term is relevant, i.e. k.n yielding n as a possible PV-scale.

id k = ranktag*k;
if (occurs(ranktag) == 0) id tensor(?args) = 1;
id ranktag^m?*tensor(?args) = tensor(m,?args);

totensor nosquare k K;

.sort

#endprocedure
