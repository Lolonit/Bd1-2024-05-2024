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


/*еще одна форма соединения таблиц cправа, добавили условия отбора*/    
    SELECT 
    `name`, napr, prof
FROM
    students
        JOIN
    `groups` on students.idgroups = `groups`.idgroups;