#procedure Numerators5liners

* Generated by FormCode.nb

b DS,k;
.sort
Keep Brackets;

#do i=1,1

if (count(DS,1) == 5);

endif;

if (occurs(numtag)) redefine i "0";
id numtag = 1;

b DS,k;
.sort
Keep Brackets;

#enddo

.sort

#call Kinematics
#call NormalizePropagators

#endprocedure