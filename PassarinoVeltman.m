BeginPackage["PassarinoVeltman`"]

Print["Simple tool for Passarino-Veltman reduction"];
Print["M. Czakon, 13 Oct 12"];
Print["Type ?ReduceTensor for documentation"];

(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)

ReduceTensor::usage = "ReduceTensor[k_, momenta_List, indices_List, scalars_list:{}, fermat_:\"fer64\"]\n\nProvides a Passarino-Veltman reduction expression corresponding to a tensor in the loop momentum k with the specified indices and external momenta. Scalars are a list of substitution rules for scalar products of the external momenta. If fermat is a name of an executable of fermat (http://home.bway.net/lewis/), then the routine will use it for the solution of a system of linear equations. Otherwise, if it is an empty string, internal Mathematica routines will be used.\n\nExample:\n\nReduceTensor[k,{p1,p2},{a1,a2},{S[p1,p1]->0,S[p2,p2]->0,S[p1,p2]->s/2}]"

SymmetricTensors::usage = "SymmetricTensors[momenta_List, indices_List]"

SimplifyScalarProducts::usage = "Linearity of scalar products."

S::usage = "S[p1,p2] represents the scalar product of the vectors p1 and p2."
Attributes[S] = {Orderless};

g::usage = "g[a1,a2] represents metric tensor with indices a1 and a2."
Attributes[g] = {Orderless};

den::usage = "den[x] = 1/x."

d::usage = "Spacetime dimension."

Begin["`Private`"]

(******************************************************************************
 *                                                                            *
 * Private                                                                    *
 *                                                                            *
 ******************************************************************************)

ReduceTensor[k_, momenta_List, indices_List, scalars_List:{}, fermat_:"/home/tom/Uni/Semester_X/master/programs/fermat/ferl6/ferl6/fer64"] :=
Module[{tensors, projector, contractions, products, matrix, vars, input = CreateFile[], solved = True, solution, n, m, i},
  tensors = SymmetricTensors[momenta, indices];
  n = Length[tensors];
  projector = ExpandAll[Outer[Times, tensors, tensors]] //. SimplifyScalarProducts /. scalars;
  contractions = ExpandAll[InsertIndices[ConstantArray[k, Length[indices]], indices]*tensors] //. SimplifyScalarProducts;
  products = Union[Cases[{projector, contractions}, S[__], -1]];

  If[fermat =!= "",

    matrix = MapThread[Append, {projector, contractions} /. (#1 -> scalarToDot[#1] & ) /@ products];
    vars = Variables[matrix];

    Do[WriteString[input, "&(J=", vars[[i]], ");\n"], {i, Length[vars]}];
    WriteString[input, "Array m", StringReplace[ToString[Dimensions[matrix]], {"{" -> "[", "}" -> "]"}], ";\n"];
    Do[WriteString[input, "m[", i, ",", j, "] := ", ToString[matrix[[i,j]], InputForm], ";\n"], {i, n}, {j, n + 1}];
    WriteString[input, "Redrowech([m]);\n", StringJoin["&(S='", input, ".out');\n"], "&U;\n", "!(&o,[m]);\n", "&x;\n"]; Close[input];
    Run[StringJoin["printf \"&(R='", input, "')\n&q\n\" | ", fermat]];
    ToExpression[StringReplace[Import[StringJoin[input, ".out"], "String"], "m[" -> StringJoin[ToString[m], "["]]];

    solution = Table[If[m[i, i] =!= 1, solved = False; 0, m[i, n + 1]], {i, n}];
    If[!solved, Print["Passarino-Veltman reduction impossible 1"]; Return[]],

    solution = LinearSolve[projector, contractions];
    If[Head[solution] =!= List, Print["Passarino-Veltman reduction impossible 2"]; Return[]]];

    Sum[tensors[[i]]*Collect[Factor[solution[[i]]] /. (scalarToDot[#1] -> #1 & ) /@ products /. ((a_) + (b__))^(n_) :> normalizedDen[a + b]^(-n) /; n < 0,
                             den[_], Together], {i, n}]]

SymmetricTensors[momenta_List, indices_List] :=
Module[{n = Length[indices], tensors},
  tensors = Flatten[(ConstantArray[#1, n] & ) /@ momenta];
  tensors = Union[Subsets[tensors, n]];
  tensors = Select[tensors, Mod[n - Length[#1], 2] == 0 & ];
  tensors = (InsertIndices[#1, indices] & ) /@ tensors;
  tensors = (SymmetrizeIndices[#1, indices] & ) /@ tensors;
  Return[tensors]]

InsertIndices[momenta_List, indices_List] := Module[{indexed, i},
  indexed = Product[momenta[[i]][indices[[i]]], {i, Length[momenta]}];
  Do[indexed *= g @@ Take[indices, Length[momenta] + 2*i + {-1, 0}],
     {i, Floor[(Length[indices] - Length[momenta])/2]}]; Return[indexed]]

SymmetrizeIndices[expr_, indices_List] := Module[{symmetrized, permutations},
  permutations = Permutations[indices];
  permutations = (Thread[indices -> #1] & ) /@ permutations;
  symmetrized = (expr /. #1 & ) /@ permutations;
  symmetrized = Plus @@ Union[symmetrized];
  Return[symmetrized]]

SimplifyScalarProducts = {
  g[mu1_, mu2_]*(p_Symbol)[mu1_] -> p[mu2],
  g[mu1_, mu2_]*g[mu2_, mu3_] -> g[mu1, mu3],
  g[mu1_, mu2_]^2 :> d /; mu1 =!= mu2,
  (p_Symbol)[mu_Symbol]^2 -> S[p, p],
  (p1_Symbol)[mu_Symbol]*(p2_Symbol)[mu_Symbol] -> S[p1, p2],
  S[(p1_) + (p2_), p3_] -> S[p1, p3] + S[p2, p3],
  S[-(p1_), p2_] -> -S[p1, p2]
};

scalarToDot[S[p1_, p2_]] := ToExpression[StringJoin[ToString[p1], "dot", ToString[p2]]]

normalizedDen[x_] := Module[{vars = Variables[x], lcoeff},
  lcoeff = First[MonomialList[x, vars]] /. Thread[vars -> 1];
  If[lcoeff < 0, -den[-x], den[x]]]

End[]

EndPackage[]
