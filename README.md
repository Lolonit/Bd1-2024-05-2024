SELECT 
    *
FROM
    `students`
WHERE
    `dob` BETWEEN '2000-01-01' AND '2000-12-31'
        AND `dob` NOT IN ('2000-01-01' , '2000-12-04');
