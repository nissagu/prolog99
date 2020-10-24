% find the k_th element of a list
% element_at/3
% (Element, Liste, Integer)

% einfachster Fall
element_at(H,[H|_],1).

% funktioniert nur, wenn Element == Variable
element_at(Element,[_|T],Position) :- Position > 1,
                                      PositionNeu is Position-1,
                                      element_at(Element,T,PositionNeu).

% funktioniert nur, wenn PositionNeu == Variable
% element_at(Element,[_|T],PositionNeu) :- element_at(Element,T,Position),
%                                          PositionNeu is Position+1.

% https://www.swi-prolog.org/pldoc/man?predicate=nth0/3
% nth1(?Index, ?List, ?Elem)
% type_error(integer, Index) if Index is not an integer or unbound.
% d. h. Index darf gar keine Variable sein! Daher Variante auch nicht zu berücksichtigen.
