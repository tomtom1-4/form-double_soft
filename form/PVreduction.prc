#procedure PVreduction
********************************************************************************
* Passarino-Veltman reduction

b tensor,K;
.sort
Keep Brackets;

#define count "0"

#do i=1,1

#redefine count "{`count'+1}"
#message Passarino-Veltman reduction step `count'

#include PVreduction5liners.h
#do j=1,2
#call WaveFunctions
#call SimplifyIntegrals
#enddo
#call SimplifyRationals

b tensor,K;
.sort
Keep Brackets;

#include PVreduction4liners.h
#do j=1,2
#call WaveFunctions
#call SimplifyIntegrals
#enddo
#call SimplifyRationals

b tensor,K;
.sort
Keep Brackets;

#include PVreduction3liners.h
#do j=1,2
#call WaveFunctions
#call SimplifyIntegrals
#enddo
#call SimplifyRationals

b tensor,K;
.sort
Keep Brackets;

#include PVreduction2liners.h
#do j=1,2
#call WaveFunctions
#call SimplifyIntegrals
#enddo
#call SimplifyRationals

if (occurs(tensor));
  print "%t";
  exit "missing tensor reduction";
endif;

#call TensorTags

if (occurs(tensor)) redefine i "0";

b tensor,K;
.sort
Keep Brackets;

#enddo

.sort

#endprocedure
