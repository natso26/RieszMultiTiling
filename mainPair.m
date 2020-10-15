G = input('Input G: ');
checkG(G)

E = input('Input E: ');
checkE(G, E);

B = input('Input B: ');
checkB(G, E, B);

Q = tightPair(G, E, B, false);