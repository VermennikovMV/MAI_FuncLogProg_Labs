# Отчет по лабораторной работе №1
## Работа со списками и реляционным представлением данных
## по курсу "Логическое программирование"

## Введение

Списки в Прологе являются фундаментальной структурой данных и представляют собой упорядоченные последовательности элементов, которые могут быть любого типа. Каждый список либо пуст, либо состоит из головы и хвоста, где хвост сам является списком. Это рекурсивное определение позволяет эффективно обрабатывать списки с помощью рекурсивных предикатов.

В отличие от императивных языков программирования, где для работы со списками часто используются циклы и итераторы, в Прологе обработка списков осуществляется путем распаковки их на голову и хвост. Это позволяет создавать мощные и гибкие предикаты для обработки данных, хотя и требует иного подхода к программированию.

Стандартные предикаты обработки списков, такие как append, member, length, позволяют работать со списками как с множествами, хотя порядок элементов в списке имеет значение, и повторяющиеся элементы допускаются.


## Задание 1.1: Предикат обработки списка

`insert_end_std(Element, List1, List2)` — добавляет элемент в конец списка с использованием стандартных предикатов.
`insert_end(Element, List1, List2)` — добавляет элемент в конец списка без использования стандартных предикатов.

Примеры использования:
```prolog
?- insert_end_std(1, [], X).
X = [1].

?- insert_end_std(1, [2, 1, 2, 1, 2], X).
X = [2, 1, 2, 1, 2, 1].

?- insert_end(2, [0, 0, 0], X).
X = [0, 0, 0, 2].

?- insert_end(5, [1, 2, 3, 4], X).
X = [1, 2, 3, 4, 5].
```

Реализация:
```prolog
% Добавление элемента в конец списка с использованием стандартного предиката
insert_end_std(Elem, List1, List2) :-
    append(List1, [Elem], List2).
```
В данной реализации мы используем стандартный предикат append для конкатенации исходного списка List1 и списка [Elem], состоящего из единственного элемента, который необходимо добавить в конец. Результат конкатенации записывается в List2.

```prolog
% Добавление элемента в конец списка без использования стандартных предикатов
insert_end(Elem, [], [Elem]).
insert_end(Elem, [Head|Tail], [Head|Result]) :-
    insert_end(Elem, Tail, Result).
```
В этом предикате мы рекурсивно проходим по исходному списку List1. Когда достигаем пустого списка, создаем новый список, состоящий из добавляемого элемента Elem. При выходе из рекурсии, восстанавливаем элементы исходного списка в Result, добавляя их в голову результирующего списка.

## Задание 1.2: Предикат обработки числового списка

`is_arith_prog(List)` — проверяет, является ли список арифметической прогрессией.

Примеры использования:
```prolog
?- is_arith_prog([1, 2, 3, 4, 5]).
true.

?- is_arith_prog([0, 10, 20, 30, 40, 50]).
true.

?- is_arith_prog([1, 3, 4, 7, 10]).
false.

?- is_arith_prog([1, 3, 5, 7, 9, 10]).
false.

?- is_arith_prog([1, 3, 5, 7, 9, 11]).
true.
```

Реализация:
```prolog
% Проверка списка на арифметическую прогрессию
is_arith_prog([_, _]).
is_arith_prog([A, B, C|Rest]) :-
    D1 is B - A,
    D2 is C - B,
    D1 =:= D2,
    is_arith_prog([B, C|Rest]).
```
В данном предикате мы рекурсивно проверяем равенство разностей между последовательными элементами списка. Если список содержит менее трех элементов, он считается арифметической прогрессией. В противном случае мы вычисляем разности D1 и D2 и сравниваем их. Если разности равны, продолжаем проверку для оставшейся части списка.

## Задание 2: Реляционное представление данных

Реляционное представление данных позволяет описывать отношения между различными объектами в предметной области. В Прологе такие отношения можно моделировать с помощью фактов и правил, что позволяет эффективно выполнять запросы к данным.

В данном задании используется представление данных из файла four.pl, которое включает информацию о студентах, группах и их оценках по предметам.

Выбранное представление данных хранит информацию о группах и списках студентов в виде фактов group, а также информацию об оценках студентов по каждому предмету в виде фактов subject. Внутри каждого предмета хранится список структур grade(Student, Mark), где Student — имя студента, а Mark — его оценка по данному предмету.

Это представление удобно для анализа успеваемости по каждому предмету, однако может быть менее удобным для выполнения запросов, связанных с группами студентов, поскольку информация о принадлежности студента к группе хранится отдельно.


Для работы я выбрал вариант 2.

1 задание: Напечатать средний балл для каждого предмета.

`average_grade(Subject, Average)` — вычисляет средний балл по заданному предмету.

Примеры использования:
```prolog
?- average_grade('Логическое программирование', Avg).
Avg = 4.357142857142857.

?- average_grade('Математический анализ', Avg).
Avg = 4.071428571428571.

?- average_grade('Психология', Avg).
Avg = 4.035714285714286.
```

Реализация:
```prolog
% Сумма оценок по списку
sum_grades([], 0).
sum_grades([grade(_, Mark)|Tail], Total) :-
    sum_grades(Tail, SumTail),
    Total is Mark + SumTail.

% Средний балл по предмету
average_grade(Subject, Average) :-
    subject(Subject, Grades),
    sum_grades(Grades, Sum),
    length(Grades, Count),
    Average is Sum / Count.
```
В данном решении мы сначала суммируем все оценки по предмету с помощью предиката sum_grades, а затем делим полученную сумму на количество оценок, используя стандартный предикат length. Это позволяет получить средний балл по предмету.

2 задание: Для каждой группы, найти количество несдавших студентов

`failed_in_group(GroupNum, Count)` — находит количество не сдавших студентов в заданной группе.

Примеры использования:
```prolog
?- failed_in_group(101, Count).
Count = 0.

?- failed_in_group(102, Count).
Count = 1.

?- failed_in_group(103, Count).
Count = 1.

?- failed_in_group(104, Count).
Count = 1.
```

Реализация:
```prolog
% Сбор всех оценок по всем предметам
collect_all_grades([], []).
collect_all_grades([Subj|Rest], AllGrades) :-
    subject(Subj, Grades),
    collect_all_grades(Rest, RestGrades),
    append(Grades, RestGrades, AllGrades).

% Выборка не сдавших студентов без повторений
failed_students([], []).
failed_students([grade(Student, Mark)|Tail], [Student|FailedRest]) :-
    Mark < 3,
    failed_students(Tail, FailedRest),
    not_member(Student, FailedRest).
failed_students([grade(_, Mark)|Tail], FailedList) :-
    Mark >= 3,
    failed_students(Tail, FailedList).

% Проверка отсутствия элемента в списке
not_member(_, []).
not_member(X, [Y|T]) :-
    X \= Y,
    not_member(X, T).

% Пересечение двух списков
list_intersection([], _, []).
list_intersection([H|T], L2, [H|Res]) :-
    member_custom(H, L2),
    list_intersection(T, L2, Res).
list_intersection([_|T], L2, Res) :-
    list_intersection(T, L2, Res).

% Проверка принадлежности элемента списку
member_custom(X, [X|_]).
member_custom(X, [_|T]) :-
    member_custom(X, T).

% Количество не сдавших студентов в группе
failed_in_group(GroupNum, Count) :-
    group(GroupNum, GroupStudents),
    findall(Subj, subject(Subj, _), Subjects),
    collect_all_grades(Subjects, AllGrades),
    failed_students(AllGrades, FailedStudents),
    list_intersection(FailedStudents, GroupStudents, GroupFailed),
    length(GroupFailed, Count).
```
1. Сбор всех оценок: Сначала собираем все оценки по всем предметам в один список с помощью предиката collect_all_grades.
2. Выборка не сдавших студентов: Из общего списка оценок выбираем студентов, получивших неудовлетворительные оценки (меньше 3), используя предикат failed_students. При этом удаляем дубликаты студентов с помощью предиката not_member.
3. Нахождение пересечения с группой: Используя предикат list_intersection, находим пересечение между списком не сдавших студентов и списком студентов конкретной группы.
4. Подсчет количества: С помощью предиката length определяем количество не сдавших студентов в группе.

3 задание: Найти количество несдавших студентов для каждого из предметов

`failed_in_subject(Subject, Count)` — находит количество не сдавших студентов по заданному предмету.

Примеры использования:
```prolog
?- failed_in_subject('Логическое программирование', Count).
Count = 3.

?- failed_in_subject('Математический анализ', Count).
Count = 1.

?- failed_in_subject('Психология', Count).
Count = 2.
```

Реализация:
```prolog
% Подсчет не сдавших студентов по списку оценок
count_failed([], 0).
count_failed([grade(_, Mark)|Tail], Count) :-
    Mark < 3,
    count_failed(Tail, RestCount),
    Count is RestCount + 1.
count_failed([grade(_, Mark)|Tail], Count) :-
    Mark >= 3,
    count_failed(Tail, Count).

% Количество не сдавших студентов по предмету
failed_in_subject(Subject, Count) :-
    subject(Subject, Grades),
    count_failed(Grades, Count).
```
Предикат count_failed рекурсивно проходит по списку оценок и увеличивает счетчик Count на 1 для каждой неудовлетворительной оценки (меньше 3).
Предикат failed_in_subject использует count_failed для подсчета количества не сдавших студентов по конкретному предмету.

## Выводы

Лабораторная работа позволила ознакомиться с основными концепциями логического программирования и практическими навыками работы с Прологом. Были реализованы предикаты для обработки списков и анализа реляционных данных, что способствует пониманию механизмов работы языка и его возможностей.
Понимание логического программирования открывает новые горизонты в подходах к решению задач и может быть полезно в областях, где требуется моделирование знаний, логический вывод и работа с неструктурированными данными.