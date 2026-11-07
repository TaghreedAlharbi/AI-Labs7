% Task 2: Add an element at the end of a list

% Base case: empty list
add_at_the_end(X, [], [X]).

% Recursive case: keep the head and process the tail
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
