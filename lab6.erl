
% CSC 231 Lab 6 - Intermediate Erlang, Part 1
% Georgina Hutchins

-module(lab6).
-export([productOfPairs/1, polyadd/2, polydiff/2, polyeval/2, member/2, delete/2, largest/1, selectionSort/1, selectionSort/2, insert/2, map/2, flipSign/1, flipSigns/1, truncate/1, chop/2, remove/2, truncateWords/1]).


%probelm 1
productOfPairs([]) ->
	[];
productOfPairs([Y]) ->
	[Y];
productOfPairs([X|[Y|YS]]) ->
	[X*Y, productOfPairs(YS)].


%problem 2a
polyadd([],[]) ->
	[];
polyadd(List1,[]) ->
	List1;
polyadd([],List2) ->
	List2;
polyadd([X|XS],[Y|YS]) ->
	[(X+Y) | polyadd(XS,YS)].


%problem 2b
polydiff([],[]) ->
	[];
polydiff(List1,[]) ->
	List1;
polydiff([],[X|XS]) ->
	[(0-X) | polydiff([],XS)];	

polydiff([X|XS],[Y|YS]) ->
	[(X-Y) | polydiff(XS,YS)].


%problem 2c
polyeval([],_) ->
	0;
polyeval([Y],_) ->
	Y;
polyeval([Y|YS],X) ->
	if
		X == 0 -> Y;
		true -> (Y + X * (polyeval(YS,X)))
	end.


%problem 3a 
member(_,[]) ->		
	false;
member(X,[X|_]) ->
	true;
member(X,[_|YS]) ->
	member(X,YS).
	

%problem 3b
delete(_,[]) -> 
	[];
delete(X,[Y|YS]) ->
	if
		X == Y ->
			YS;
		true -> 
			[Y] ++ delete(X,YS)			
	end.


%problem 3c   
insert(X,[]) ->
	[X]; 
insert(X,[Y|YS]) ->
	List_ = [Y|YS],
	Exists_ = member(X,List_),
	if
		Exists_ == true ->
			List_;
		true ->
			[X|List_]

	end.		

%problem 4
largest(L) ->
	Tail = tl(L),
	if
		(hd(L) > hd(Tail)) ->
			largest([hd(L)|tl(Tail)]);
		Tail == [] -> 
			hd(L);
		true ->
			largest(Tail)
	end.


%problem 5		
remove(_,[]) -> 
	[];          
remove(X,[Y|YS]) ->
	if 
		X == Y ->
			YS;
		true ->
			[Y] ++ remove(X,YS)
		
	end.

selectionSort([]) ->
	[];
selectionSort([X]) ->
	[X];
selectionSort(List) ->
	selectionSort(List,[]).

selectionSort([],Sorted) -> 
	Sorted;
selectionSort(List, Sorted) ->
	Largest_ = largest(List),
	selectionSort(delete(Largest_,List), Sorted++[Largest_]).



map(F,[]) ->
	[];
map(F,[X|XS]) ->
	[F(X)|map(F,XS)].


%problem 6a
flipSign(N) ->
	(-N).

flipSigns(List) ->
	map(fun flipSign/1, List).


%problem 6b
truncate(List) ->
	chop(List,4).

chop([],_) ->
	[];
chop([X|XS],S) ->
	if
		S == 0 -> 
			[];
			
		true ->
			[X] ++ chop(XS,(S-1))
	end.

truncateWords(StringList) ->
	map(fun truncate/1, StringList).
			


