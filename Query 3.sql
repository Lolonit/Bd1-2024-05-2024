select `groups`.`gr` as 'Номер группы', 
	   `groups`.`shifr_napr` as 'Шифр направления', 
       `groups`.`napr` as 'Наименование направления'
from `groups`;

select knamedisc as 'Дисциплина', 'читается', hours as 'Часов', 
	   hours/36 as 'Зачётных единиц' from `discipl`;
/*Использование диапазона дат при помощи выражения INTERVAL*/
SELECT 
    *
FROM
    students
WHERE
    dob > '1999-12-31'
        AND dob < '1999-12-31' + INTERVAL '1' YEAR;
        
SELECT 
    *
FROM
    students
WHERE
    dob > '1999-12-31'
        AND dob < '1999-12-31' + INTERVAL '10' MONTH;
/* Выражение в предложении select, меняющее дату в результате отбора*/        
SELECT 
    dob + Interval '1' month
FROM
    students
WHERE
    dob > '1999-12-31';

select 
case `students`.`docum` 
when '1'
then `students`.`docum` 
else 'Нет документов'
end as 'Наличие документов', `students`.`name`
from students;

select 
case shifr_napr 
when '09.03.02'
then '11.11.11'
when '40.03.05'
then '22.22.22' 
else shifr_napr
end as 'Устаревшие шифры направлений', `groups`.`napr`
from `groups`;


/* Упращенная форма работы с совпадающими значениями - 
заменяет второй параметр функции nullif() */   
select 
nullif(shifr_napr, '09.03.02'), napr
from `groups`;

/* Сортировка результатов отбора*/

SELECT 
    *
FROM
    students
ORDER BY `name` DESC;

/*Самостоятельный запрос на сортировку результатов отбора*/
SELECT 
    pnamedisc as 'Полное наименование дисциплины - на нее приходится', hours as 'столько часов'
FROM
    discipl
ORDER BY `hours`;

/*Упорядочивание агрегатов*/
SELECT 
    `hours`, COUNT(knamedisc)
FROM
    discipl
GROUP BY hours
ORDER BY hours;

/*Сомостоятельное упорядочивание агрегатов*/
SELECT 
    idgroups, MAX(dob)
FROM
    students
WHERE
    NOT idgroups IS NULL
GROUP BY idgroups
ORDER BY 2;