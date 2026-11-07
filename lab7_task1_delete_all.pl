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
