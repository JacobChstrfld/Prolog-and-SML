fun removeAll(x, []) = []
| removeAll (x, list) = 
if hd(list) = x then removeAll(x, tl(list))
else hd(list)::removeAll(x, tl(list));


fun insertElement([], x) = [x]
| insertElement(list, x)= 
	if hd(list) >= x then x::list
	else hd(list)::(insertElement(tl(list), x));


fun insertElement([], e) = [e]
| insertElement(L, e)= 
	if hd(L) >= e then e::L
	else hd(L)::(insertElement(tl(L), e));

fun insert(S, []) = S
| insert(S, U) = 
let val new = insertElement(S,hd(U))
in insert(new, tl(U)) end;


fun inSort(list) = insert([hd(list)], tl(list));

fun makeEven([]) = []
| makeEven([x]) = x::[x]
| makeEven(h1::h2::tail) = if not(h1 = h2) 
	then h1::h1::makeEven(h2::tail)
	else h1::h2::makeEven(tail);