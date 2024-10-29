% Конкатенация списков (append)
% (Список1, Список2, Результат)
concat_lists([], L, L).
concat_lists([Head|Tail], L2, [Head|Result]) :-
    concat_lists(Tail, L2, Result).

% Удаление элемента из списка (remove)
% (Элемент, Список, Результат)
delete_elem(Elem, [Elem|Tail], Tail).
delete_elem(Elem, [Head|Tail], [Head|Result]) :-
    delete_elem(Elem, Tail, Result).

% Перестановки списка (permute)
% (Список, Перестановка)
list_permutation([], []).
list_permutation(L, [Elem|Perm]) :-
    delete_elem(Elem, L, Rest),
    list_permutation(Rest, Perm).

% Подсписки списка (sublist)
% (Подсписок, Список)
sublist(Sub, List) :-
    concat_lists(_, Temp, List),
    concat_lists(Sub, _, Temp).

% Длина списка (length)
% (Список, Длина)
list_length([], 0).
list_length([_|Tail], Length) :-
    list_length(Tail, N),
    Length is N + 1.

% Проверка наличия элемента в списке (member)
% (Элемент, Список)
contains(Element, [Element|_]).
contains(Element, [_|Tail]) :-
    contains(Element, Tail).

% Добавление элемента в конец списка (с использованием стандартных предикатов)
% (Элемент, Список1, Список2)
insert_end_std(Elem, List1, List2) :-
    append(List1, [Elem], List2).

% Добавление элемента в конец списка (без использования стандартных предикатов)
% (Элемент, Список1, Список2)
insert_end(Elem, [], [Elem]).
insert_end(Elem, [Head|Tail], [Head|Result]) :-
    insert_end(Elem, Tail, Result).

% Проверка списка на арифметическую прогрессию
% (Список)
is_arith_prog([_, _]).
is_arith_prog([A, B, C|Rest]) :-
    D1 is B - A,
    D2 is C - B,
    D1 =:= D2,
    is_arith_prog([B, C|Rest]).

% Пример совместного использования предикатов
% Вставка элемента в конец списка и проверка на арифметическую прогрессию
% (Элемент, Список)
insert_end_arith_prog(Elem, List) :-
    insert_end(Elem, List, NewList),
    is_arith_prog(NewList).
