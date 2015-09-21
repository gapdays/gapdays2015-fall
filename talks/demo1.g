q := 25;
pg := PG(2,q);
pts := Points(pg);
List(pts);
p := Random(pts);
lines := List(Lines(pg));
l := Random(lines);
p * l;
Lines(p);
List(last);
Points(l);
List(last);

conic := ParabolicQuadric(2,q);
EquationForPolarSpace(conic);
pts := Points(conic);
pts := List(pts);

group := CollineationGroup(pg);
g := Random(group);
p^g;
OnProjSubspaces(l,g);

Stabilizer(group,pts[1],\^);
time;
FiningStabiliser(group,pts[1]);
time;

stab := FiningSetwiseStabiliser(group,pts);
CollineationGroup(conic);

mat := IdentityMat(3,GF(q));
form := QuadraticFormByMatrix(mat,GF(q));
conic2 := PolarSpace(form);

EquationForPolarSpace(conic2);
pts := List(Points(conic2));
p := Random(pts);

stab := FiningSetwiseStabiliser(group,pts);
CollineationGroup(conic2);

ppts := List(Points(pg));;
orbs := FiningOrbits(stab,ppts);
o1 := orbs[1];
p := Random(o1);
List(Lines(p),x->Number(pts,y->y in x));
Collected(last);


