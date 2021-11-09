

nodeCount(node(nil,R,_), [N0,N1,N2]) :- 
	R\= nil, 
	A=0, B=1, C=0, 
	nodeCount(R, [X,Y,Z]),
	N0 = A + X, 
	N1 = B + Y,
	N2 = C + Z.

nodeCount(node(L,nil,_), [N0,N1,N2]) :- 
	L\= nil, 
	A=0, B=1, C=0, 
	nodeCount(L, [X,Y,Z]),
	N0 = A + X,
	N1 = B + Y,
	N2 = C + Z.

nodeCount(node(L,R,_), [N0,N1,N2]) :- 
	R\= nil, 
	L\= nil, 
	A=0, B=0, C=1, 
	nodeCount(R, [D,E,F]), 
	nodeCount(L, [X,Y,Z]),
	N0 is A + D + X,
	N1 is B + E + Y,
	N2 is C + F + Z.

nodeCount(node(L,R,_), [N0,N1,N2]) :- 
	R= nil, 
	L= nil, 
	A=1, B=0, C=0, 
	N0 =  A,
	N1 = B,
	N2 = C.




T = node(node(nil, node(nil, nil, 5/5), 2/2), node(nil, nil, 4/4), 3/3)



remSub([], _, _,_).
remSub([H|T], S, L, RLst):-

remSub([H|T], S, L, RLst) :- 
	nth0(S,List, X),
	X = H,
	remSub(T, S, L, RLst2),
	append(H, RLst2, RLst).








