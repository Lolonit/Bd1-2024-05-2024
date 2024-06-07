/*декартово произведение таблица*/
SELECT 
    *
FROM
    students,
    `groups`;
    
    /*соединение таблиц по общему значению*/
    
SELECT 
    `name`, napr, prof
FROM
    students,
    `groups`
where students.idgroups = `groups`.idgroups;

    /*Альтернативная форма соединения таблиц c использованием общих полей*/
    
SELECT 
    `name`, napr, prof
FROM
    students
        JOIN
    `groups` USING (idgroups);
    
   /*соединениt таблиц cлева*/    
    SELECT 
    `name`, napr, prof
FROM
    students
        LEFT JOIN
    `groups` USING (idgroups);
    
      /*соединениt таблиц cправа*/    
    SELECT 
    `name`, napr, prof
FROM
    students
        RIGHT JOIN
    `groups` USING (idgroups)
ORDER BY `name`;


/*еще одна форма соединения таблиц cправа, добавили условия отбора discipl*/    
    SELECT 
    `name`, napr, prof
FROM
    students
        JOIN
    `groups` on students.idgroups = `groups`.idgroups;
    
    
/*Использование составных условий при соединении таблиц*/

SELECT 
    `students`.`name`, `groups`.`napr`, `groups`.`prof`
FROM
    students,
    `groups`
WHERE
    shifr_napr IN ('09.03.02' , '44.03.02')
        AND students.idgroups = `groups`.idgroups;
        
/*Использование операторов сравнения при соединении таблиц*/

SELECT 
    `students`.`name`, `groups`.`napr`, `groups`.`prof`
FROM
    students,
    `groups`
WHERE
    shifr_napr > '09.03.02'
        AND students.idgroups < `groups`.idgroups;
    
/*соединение таблицы с собой*/   
SELECT 
    `first`.`name`, `second`.`name`
FROM
    students `first`, students `second`
WHERE
    `first`.idgroups = `second`.idgroups and `first`.`name` > `second`.`name`;
    
/*поиск образцов*/ 
SELECT 
    a.`name` AS '3.054.2.19',
    b.`name` AS '3.114.2.21',
    c.`name` AS '3.114.1.20'
FROM
    students a,
    students b,
    students c
WHERE
    a.idgroups = 2 AND b.idgroups = 3
        AND c.idgroups = 5;
        
/*соединение таблиц не входящих в результат запроса*/

SELECT 
    `students`.`name`, `students`.`dob`
FROM
    students,
    `groups`
WHERE
    shifr_napr = '09.03.02'
        AND students.idgroups = `groups`.idgroups;
        
