q := 2;
ps := HermitianPolarSpace(4,q^2);
EquationForPolarSpace(ps);
CategoriesOfObject(ps);
group := CollineationGroup(ps);
graph := IncidenceGraph(ps);;
Diameter(graph);
Girth(graph);

adj := function(x,y)
return ProjectiveDimension(Meet(x,y))=-1;
end;

lines := AsList(Lines(ps));;

graph := Graph(group,lines,\^,adj,true);;

size := q^5+1;
cliques := CompleteSubgraphs(graph,size);

