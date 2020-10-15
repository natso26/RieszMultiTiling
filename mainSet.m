G = input('Input G: ');
checkG(G);

E = input('Input E: ');
checkE(G, E);

answer = tightSet(G, E, false);
bestQ = answer{1};
bestB = answer{2};