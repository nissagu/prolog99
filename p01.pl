% find the last element of a list
% my_last/2

my_last(X,[X]). % list with one element only contains its last (and first) element
my_last(X,[H|T]) :- my_last(X,T). % recursively check the list
