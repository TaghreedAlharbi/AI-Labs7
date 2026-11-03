
% Task 1: Delete all occurrences of an element

% Base case: empty list
deleteElement(_, [], []).

% If the head equals X, skip it
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% Otherwise, keep the head
deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).



% Task 2: Add an element at the end of a list

% Base case: empty list
add_at_the_end(X, [], [X]).

% Recursive case: keep the head and process the tail
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
