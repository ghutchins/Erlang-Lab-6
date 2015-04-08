-module(lab6Tester).
-export([test1/0,test2a/0,test2b/0,test2c/0,test3a/0,test3b/0,test3c/0,test4/0,test5/0,test6a/0,test6b/0]).

test1() ->
	io:write(lab6:productOfPairs([])), 
	io:format("\n"), 
	io:write(lab6:productOfPairs([3])), 
	io:format("\n"),
	io:write(lab6:productOfPairs([3,2])),
	io:format("\n"),
	io:write(lab6:productOfPairs([2,3,4,5])),
	io:format("\n"),
	io:write(lab6:productOfPairs([2,3,4,5,6])),
	io:format("\n").

test2a() ->
	io:write(lab6:polyadd([],[2.0,4.0,6.0])), 
	io:format("\n"), 
	io:write(lab6:polyadd([2.0,4.0,6.0],[])), 
	io:format("\n"),
	io:write(lab6:polyadd([2.0,4.0,6.0],[2.0,4.0,6.0,8.0])),
	io:format("\n").

test2b() ->
	io:write(lab6:polydiff([],[2.0,4.0,6.0])), 
	io:format("\n"), 
	io:write(lab6:polydiff([2.0,4.0,6.0],[])), 
	io:format("\n"),
	io:write(lab6:polydiff([2.0,4.0,6.0],[2.0,4.0,6.0,8.0])),
	io:format("\n").

test2c() ->
	io:write(lab6:polyeval([2.0],2.0)),
	io:format("\n"), 
	io:write(lab6:polyeval([1.0,2.0],2.0)),
	io:format("\n"), 
	io:write(lab6:polyeval([0.0,0.0,3.0],2.0)),
	io:format("\n").

test3a() ->
	io:write(lab6:member(2,[1,2,3])),
	io:format("\n"),
	io:write(lab6:member(4,[1,2,3])),
	io:format("\n").

test3b() ->
	io:write(lab6:delete(2,[1,2,3])),
	io:format("\n"),
	io:write(lab6:delete(4,[1,2,3])),
	io:format("\n").

test3c() ->
	io:write(lab6:insert(2,[1,2,3])),
	io:format("\n"),
	io:write(lab6:insert(4,[1,2,3])),
	io:format("\n"),
	io:write(lab6:insert(9,[])),
	io:format("\n").

test4() ->
	io:write(lab6:largest([5])),
	io:format("\n"),
	io:write(lab6:largest([4,5])),
	io:format("\n"),
	io:write(lab6:largest([4,6,5])),
	io:format("\n"),
	io:write(lab6:largest([3,1,0,8,4,9])),
	io:format("\n").

test5() ->
	io:write(lab6:selectionSort([-1,-2,-4])),
	io:format("\n"),
	io:write(lab6:selectionSort([])),
	io:format("\n"),
	io:write(lab6:selectionSort([5])),
	io:format("\n"),
	io:write(lab6:selectionSort([3,5])),
	io:format("\n"),
	io:write(lab6:selectionSort([3,7,7,4,1])),
	io:format("\n").


test6a() ->
	io:write(lab6:flipSigns([1.0,2.0,3.0])),
	io:format("\n"),
	io:write(lab6:flipSigns([-1.0,-2.0,-3.0])),
	io:format("\n"),
	io:write(lab6:flipSigns([])),
	io:format("\n").


test6b() ->
	io:write(lab6:truncateWords([])),
	io:format("\n"),
	io:format("[~p,~p,~p]",lab6:truncateWords(["short","longword","longword"])),
	io:format("\n"),
	io:format("[~p]",lab6:truncateWords(["t"])),
	io:format("\n"),
	io:format("[~p,~p,~p,~p,~p]",lab6:truncateWords(["mix","of","longish","and","shortish"])),
	io:format("\n").
