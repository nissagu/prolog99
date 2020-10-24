% find the last but one element of a list
% find_last_but_one/2

% find_last_but_one([H|_],H).
% falsch, weil es auf die Ebene [3|[]] runtergeht, bei [1,2,3] = [1|[2|[3|[]]]]
% und [] nicht als Element zählt, sondern 3 das
% find_last_but_one(X, [H|T]):- find_last_but_one(X, T).

find_last_but_one(X, [X,_]).
% zweites Element einer Liste hat immer die Form X|[] (falls keine leere Liste)
% z.B. [1,2,3] = [1|[2|[3|[]]]] bzw. [2|[3|[]]] bzw. [3|[]]
% da [3|[]] nicht [X,_] entspricht, wird beim Aufruf von X=3 ein Fail ausgelöst
find_last_but_one(X,[_,Y|Ys]) :- find_last_but_one(X,[Y|Ys]).
