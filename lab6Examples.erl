-module(lab6Examples).
-export([reverseLab5/1, reverse/1, merge/2, contains/2, power20/1, split/1, mergeSort/1, square/1, map/2, squareList/1]).
reverseLab5(L) ->
if 
	L == [] ->
			[];
	true -> 
			reverseLab5(tl(L)) ++ [hd(L)]
end.

reverse([]) -> 
	[];
reverse([X|XS]) ->
	reverse(XS) ++ [X|[]].

merge(List1,[]) ->
	List1;
merge([],List2) ->
	List2;
merge([X|XS],[Y|YS]) ->
	if (X < Y) -> 
		[X | merge(XS,[Y|YS])];
	true ->
		[Y | merge([X|XS],YS)]
	end.

contains(_,[]) -> %always false if list empty, regardless of query item
	false;
contains(X,[X|_]) -> %true if query item matches head, regardless of what else in list
	true;
contains(X,[_|YS]) -> %can assume if matched head, would not get here; this tests against rest of list
	contains(X,YS).


power20(X) ->
	Two = X*X, Four = Two*Two, Four*Four*Four*Four*Four.

split([]) ->	%an empty list gives 2 empty lists
	{[],[]};
split([X]) ->  %a 1-element list gives the 1-element list, and an empty
	{[X],[]};
split([X|[Y|YS]]) -> %handle multi-element by breaking odd/even elements
	{M,N} = split(YS), {[X|M],[Y|N]}.

mergeSort([]) -> 
	[];
mergeSort([X]) ->
	[X];
mergeSort(Y) ->
	{M,N} = split(Y), A = mergeSort(M), B = mergeSort(N), merge(A,B).

square(X) ->
	X*X.

map(F,[]) ->
	[];
map(F,[X|XS]) ->
	[F(X)|map(F,XS)].

squareList(L) ->
	map(fun square/1, L).
