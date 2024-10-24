% Задание 2: Реляционные данные

% Данные из four.pl (Вариант 2)

% Определение групп и студентов
group(102, ['Петров', 'Ивановский', 'Биткоинов', 'Шарпин', 'Эксель', 'Текстописов', 'Криптовалютников', 'Азурин', 'Круглотличников']).
group(101, ['Петровский', 'Сидоров', 'Мышин', 'Безумников', 'Густобуквенникова']).
group(104, ['Иванов', 'Запорожцев', 'Джаво', 'Фулл', 'Круглосчиталкин', 'Блокчейнис']).
group(103, ['Сидоркин', 'Эфиркина', 'Сиплюсплюсов', 'Программиро', 'Клавиатурникова', 'Решетников', 'Текстописова', 'Вебсервисов']).

% Определение предметов и оценок
subject('Логическое программирование', [grade('Петров',4), grade('Петровский',2), grade('Иванов',5), grade('Ивановский',5), grade('Запорожцев',5), grade('Сидоров',2), grade('Сидоркин',4), grade('Биткоинов',4), grade('Эфиркина',3), grade('Сиплюсплюсов',4), grade('Программиро',4), grade('Джаво',2), grade('Клавиатурникова',5), grade('Мышин',3), grade('Фулл',5), grade('Безумников',5), grade('Шарпин',5), grade('Круглосчиталкин',4), grade('Решетников',5), grade('Эксель',4), grade('Текстописов',4), grade('Текстописова',5), grade('Густобуквенникова',5), grade('Криптовалютников',5), grade('Блокчейнис',3), grade('Азурин',5), grade('Вебсервисов',5), grade('Круглотличников',3)]).
subject('Математический анализ', [grade('Петров',2), grade('Петровский',4), grade('Иванов',4), grade('Ивановский',4), grade('Запорожцев',4), grade('Сидоров',5), grade('Сидоркин',4), grade('Биткоинов',5), grade('Эфиркина',4), grade('Сиплюсплюсов',5), grade('Программиро',3), grade('Джаво',4), grade('Клавиатурникова',3), grade('Мышин',5), grade('Фулл',4), grade('Безумников',3), grade('Шарпин',4), grade('Круглосчиталкин',4), grade('Решетников',5), grade('Эксель',3), grade('Текстописов',4), grade('Текстописова',4), grade('Густобуквенникова',5), grade('Криптовалютников',4), grade('Блокчейнис',3), grade('Азурин',5), grade('Вебсервисов',4), grade('Круглотличников',5)]).
subject('Функциональное программирование', [grade('Петров',3), grade('Петровский',5), grade('Иванов',4), grade('Ивановский',3), grade('Запорожцев',3), grade('Сидоров',3), grade('Сидоркин',4), grade('Биткоинов',5), grade('Эфиркина',5), grade('Сиплюсплюсов',5), grade('Программиро',4), grade('Джаво',5), grade('Клавиатурникова',5), grade('Мышин',5), grade('Фулл',4), grade('Безумников',5), grade('Шарпин',3), grade('Круглосчиталкин',3), grade('Решетников',4), grade('Эксель',4), grade('Текстописов',3), grade('Текстописова',4), grade('Густобуквенникова',4), grade('Криптовалютников',5), grade('Блокчейнис',5), grade('Азурин',4), grade('Вебсервисов',4), grade('Круглотличников',4)]).
subject('Информатика', [grade('Петров',4), grade('Петровский',3), grade('Иванов',3), grade('Ивановский',4), grade('Запорожцев',3), grade('Сидоров',4), grade('Сидоркин',4), grade('Биткоинов',4), grade('Эфиркина',3), grade('Сиплюсплюсов',2), grade('Программиро',4), grade('Джаво',5), grade('Клавиатурникова',4), grade('Мышин',5), grade('Фулл',3), grade('Безумников',4), grade('Шарпин',5), grade('Круглосчиталкин',5), grade('Решетников',4), grade('Эксель',4), grade('Текстописов',3), grade('Текстописова',5), grade('Густобуквенникова',3), grade('Криптовалютников',2), grade('Блокчейнис',4), grade('Азурин',5), grade('Вебсервисов',4), grade('Круглотличников',4)]).
subject('Английский язык', [grade('Петров',4), grade('Петровский',5), grade('Иванов',3), grade('Ивановский',4), grade('Запорожцев',4), grade('Сидоров',5), grade('Сидоркин',3), grade('Биткоинов',5), grade('Эфиркина',5), grade('Сиплюсплюсов',5), grade('Программиро',4), grade('Джаво',4), grade('Клавиатурникова',3), grade('Мышин',5), grade('Фулл',4), grade('Безумников',3), grade('Шарпин',4), grade('Круглосчиталкин',4), grade('Решетников',2), grade('Эксель',4), grade('Текстописов',4), grade('Текстописова',5), grade('Густобуквенникова',5), grade('Криптовалютников',5), grade('Блокчейнис',3), grade('Азурин',2), grade('Вебсервисов',4), grade('Круглотличников',4)]).
subject('Психология', [grade('Петров',5), grade('Петровский',3), grade('Иванов',3), grade('Ивановский',3), grade('Запорожцев',5), grade('Сидоров',3), grade('Сидоркин',5), grade('Биткоинов',4), grade('Эфиркина',5), grade('Сиплюсплюсов',5), grade('Программиро',3), grade('Джаво',4), grade('Клавиатурникова',4), grade('Мышин',4), grade('Фулл',4), grade('Безумников',2), grade('Шарпин',3), grade('Круглосчиталкин',2), grade('Решетников',4), grade('Эксель',3), grade('Текстописов',3), grade('Текстописова',5), grade('Густобуквенникова',4), grade('Криптовалютников',5), grade('Блокчейнис',5), grade('Азурин',3), grade('Вебсервисов',5), grade('Круглотличников',4)]).

% 1) Напечатать средний балл для каждого предмета

% Сумма оценок по списку
% (Список оценок, Сумма)

sum_grades([], 0).
sum_grades([grade(_, Mark)|Tail], Total) :-
    sum_grades(Tail, SumTail),
    Total is Mark + SumTail.

% Средний балл по предмету
% (Название предмета, Средний балл)

average_grade(Subject, Average) :-
    subject(Subject, Grades),
    sum_grades(Grades, Sum),
    length(Grades, Count),
    Average is Sum / Count.

% Пример использования:
% ?- average_grade('Логическое программирование', Avg).
% Avg = 4.357142857142857.

% 2) Для каждой группы, найти количество не сдавших студентов

% Сбор всех оценок по всем предметам
% (Список предметов, Список оценок)

collect_all_grades([], []).
collect_all_grades([Subj|Rest], AllGrades) :-
    subject(Subj, Grades),
    collect_all_grades(Rest, RestGrades),
    append(Grades, RestGrades, AllGrades).

% Выборка не сдавших студентов без повторений
% (Список оценок, Список студентов)

failed_students([], []).
failed_students([grade(Student, Mark)|Tail], [Student|FailedRest]) :-
    Mark < 3,
    failed_students(Tail, FailedRest),
    not_member(Student, FailedRest).
failed_students([grade(_, Mark)|Tail], FailedList) :-
    Mark >= 3,
    failed_students(Tail, FailedList).

% Проверка отсутствия элемента в списке
% (Элемент, Список)

not_member(_, []).
not_member(X, [Y|T]) :-
    X \= Y,
    not_member(X, T).

% Пересечение двух списков
% (Список1, Список2, Результат)

list_intersection([], _, []).
list_intersection([H|T], L2, [H|Res]) :-
    member_custom(H, L2),
    list_intersection(T, L2, Res).
list_intersection([_|T], L2, Res) :-
    list_intersection(T, L2, Res).

% Проверка принадлежности элемента списку
% (Элемент, Список)

member_custom(X, [X|_]).
member_custom(X, [_|T]) :-
    member_custom(X, T).

% Количество не сдавших студентов в группе
% (Номер группы, Количество)

failed_in_group(GroupNum, Count) :-
    group(GroupNum, GroupStudents),
    findall(Subj, subject(Subj, _), Subjects),
    collect_all_grades(Subjects, AllGrades),
    failed_students(AllGrades, FailedStudents),
    list_intersection(FailedStudents, GroupStudents, GroupFailed),
    length(GroupFailed, Count).

% Пример использования:
% ?- failed_in_group(102, Count).
% Count = 1.

% 3) Найти количество не сдавших студентов для каждого из предметов

% Подсчет не сдавших студентов по списку оценок
% (Список оценок, Количество)

count_failed([], 0).
count_failed([grade(_, Mark)|Tail], Count) :-
    Mark < 3,
    count_failed(Tail, RestCount),
    Count is RestCount + 1.
count_failed([grade(_, Mark)|Tail], Count) :-
    Mark >= 3,
    count_failed(Tail, Count).

% Количество не сдавших студентов по предмету
% (Название предмета, Количество)

failed_in_subject(Subject, Count) :-
    subject(Subject, Grades),
    count_failed(Grades, Count).

% Пример использования:
% ?- failed_in_subject('Информатика', Count).
% Count = 2.

/*
Примеры использования:

?- average_grade('Логическое программирование', Avg).
Avg = 4.357142857142857.

?- average_grade('Математический анализ', Avg).
Avg = 4.071428571428571.

?- failed_in_group(101, Count).
Count = 0.

?- failed_in_group(102, Count).
Count = 1.

?- failed_in_subject('Логическое программирование', Count).
Count = 3.

?- failed_in_subject('Математический анализ', Count).
Count = 1.
*/