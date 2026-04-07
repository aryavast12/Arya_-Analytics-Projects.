CREATE DATABASE HospitalDB;
USE HospitalDB;
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE
);

CREATE TABLE Lab_Results (
    test_id INT PRIMARY KEY,
    dept_id INT,
    test_name VARCHAR(50),
    tat_hours DECIMAL(4,2),

    FOREIGN KEY (dept_id)
    REFERENCES Departments(dept_id)
);

INSERT INTO Departments VALUES
(1, 'Hematology'),
(2, 'Biochemistry'),
(3, 'Microbiology');

INSERT INTO Lab_Results VALUES
(101, 1, 'CBC', 3.0),
(102, 1, 'CBC', 4.5),
(103, 1, 'ESR', 2.5),
(104, 2, 'LFT', 6.0),
(105, 2, 'KFT', 7.5),
(106, 2, 'Glucose', 5.5),
(107, 3, 'Culture', 48.0),
(108, 3, 'Culture', 52.0);

select * from departments;
select * from Lab_Results;

-- group by 
SELECT 
    d.dept_name,
    COUNT(l.test_id) AS total_tests,
    AVG(l.tat_hours) AS avg_tat,
    MIN(l.tat_hours) AS min_tat,
    MAX(l.tat_hours) AS max_tat,
    SUM(l.tat_hours) AS total_tat
FROM Lab_Results l
JOIN Departments d
ON l.dept_id = d.dept_id
GROUP BY d.dept_name;

-- order by 
SELECT 
    d.dept_name,
    AVG(l.tat_hours) AS avg_tat
FROM Lab_Results l
JOIN Departments d
ON l.dept_id = d.dept_id
GROUP BY d.dept_name
order by avg_tat desc;

# having 
SELECT 
    d.dept_name,
    AVG(l.tat_hours) AS avg_tat
FROM Lab_Results l
JOIN Departments d
ON l.dept_id = d.dept_id
GROUP BY d.dept_name
having avg_tat > 6 
order by avg_tat desc;

-- FROM → JOIN → WHERE → GROUP BY → HAVING → SELECT → ORDER BY


select * from departments;
select * from Lab_Results;
-- inner join 
-- Keep only rows where matching keys exist in BOTH tables

select
d.dept_name,
l.test_name,
l.tat_hours
from departments as d 
inner join lab_results l
on  d.dept_id = l.dept_id;

-- Preserve all rows from the left table, even if no match exists

SELECT
    d.dept_name,
    l.test_name,
    l.tat_hours
FROM Departments d
LEFT JOIN Lab_Results l
    ON d.dept_id = l.dept_id;
    
    -- INNER JOIN → analysis on existing activity
-- LEFT JOIN → audit, coverage, completeness

-- case when 

select
test_name,
tat_hours,
case
when tat_hours <= 4 then 'Fast'
when tat_hours <= 12 then 'Moderate'
else 'slow'
end as tat_category
from lab_results;

-- case when + join 
 SELECT
    d.dept_name,
    l.test_name,
    l.tat_hours,
    CASE
        WHEN l.tat_hours > 24 THEN 'Critical Delay'
        ELSE 'Within Limit'
    END AS tat_status
FROM Departments d
LEFT JOIN Lab_Results l
    ON d.dept_id = l.dept_id;
  
  -- How do I look at other rows while staying on the current row?: window function 
  
SELECT
    dept_id,
    test_name,
    tat_hours,
    ROW_NUMBER() OVER (
        PARTITION BY dept_id
        ORDER BY tat_hours
    ) AS rn
FROM Lab_Results;

select * from lab_results;
-- window functions 
-- row number 
select dept_id,
    test_name,
    test_id,
    tat_hours,
    row_number() over(order by tat_hours desc) as results
    from lab_results;
    
-- rank and dense rank 
select dept_id,
    test_name,
    test_id,
    tat_hours,
    row_number() over(order by tat_hours desc) as results,
    rank() over(order by tat_hours desc) as results_rank,
    dense_rank() over(order by tat_hours desc) as results_dense_rank
    from lab_results;
    
    -- lead and lag 
    CREATE TABLE sales_data (
    id INT,
    employee VARCHAR(10),
    sale_date DATE,
    revenue INT
);

INSERT INTO sales_data VALUES
(1, 'A', '2024-01-01', 100),
(2, 'A', '2024-01-02', 150),
(3, 'A', '2024-01-03', 130),
(4, 'B', '2024-01-01', 200),
(5, 'B', '2024-01-02', 180),
(6, 'B', '2024-01-03', 220);

select * from sales_data;
-- lag
SELECT 
    employee,
    sale_date,
    revenue,
    LAG(revenue) OVER (
        PARTITION BY employee 
        ORDER BY sale_date
    ) AS prev_day_revenue
FROM sales_data;

-- lead()

SELECT 
    employee,
    sale_date,
    revenue,
    LEAD(revenue) OVER (
        PARTITION BY employee 
        ORDER BY sale_date
    ) AS next_day_revenue
FROM sales_data;
