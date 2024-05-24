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
