use application "polytope";

declare $points = new Matrix<Integer>([[1,2,1,0],[1,1,2,1],[1,-1,2,1],[1,-2,1,0],[1,-2,-1,0],[1,-1,-2,1],[1,1,-2,1],[1,2,-1,0]]);
declare $Q = new Polytope<Rational>(POINTS=>$points);
declare $Proj = new Matrix<Integer>([[1,0,0],[0,1,0]]);

printf("Q's vertices:\n%s", $Q->VERTICES);
printf("\nProjection matrix:\n%s", $Proj);

declare $P,$T,$U;
($P,$T,$U) = projection2factorization($Q, $Proj);

printf("\nT:\n%s", $T);
printf("\nU:\n%s", $U);
printf("\n\$T*\$U == slack_matrix(\$P): %s\n", $T*$U == slack_matrix($P) ? "true" : "false");

declare $Q2 = construct_extended_formulation($P, $T);
printf("construct_extended_formulation(\$P, \$T) isomorphic to cube(3): %s", isomorphic($Q2, cube(3)) ? "true" : "false");
