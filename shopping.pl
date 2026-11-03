
:- dynamic basket/1.

% Initial basket with five items
basket([coffee, milk, chocolate, apple, juice]).

% Start the shopping program
start :-
    menu.

% Display the menu
menu :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice).

% Display items
action(d) :-
    basket(Items),
    display_items(Items),
    menu.

% Add an item
action(a) :-
    write('Enter the item you want to add: '),
    read(Item),
    basket(Items),
    append(Items, [Item], NewItems),
    retractall(basket(_)),
    assertz(basket(NewItems)),
    writeln('The item has been added.'),
    menu.

% Exit
action(e) :-
    writeln('Goodbye!').

% Invalid choice
action(_) :-
    writeln('Invalid choice.'),
    menu.

% Recursively display each item
display_items([]).
display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).
