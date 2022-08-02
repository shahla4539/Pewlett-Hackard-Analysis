
-- Creating new table retirement_title
-- for employees who are born between '1952-01-01' AND '1955-12-31'

SELECT e.emp_no,
    e.first_name,
e.last_name, t.title, t.from_date, t.to_date
INTO retirement_title
FROM employees as e
RIGHT JOIN titles as t
ON (e.emp_no = t.emp_no)	
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no, from_date DESC;

SELECT * FROM retirement_title;

-- Creating new table unique_titles
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
    rt.first_name,
rt.last_name, rt.title
INTO unique_titles
FROM retirement_title as rt
WHERE to_date = '9999-01-01'
ORDER BY (emp_no)ASC, (to_date) DESC;

SELECT * FROM unique_titles;

-- Creating table retiring_titles, group the table by title,
-- then sort the count column in descending order.
SELECT COUNT(emp_no), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no)DESC;

SELECT * FROM retiring_titles;


DELIVERABLE 2

--  Creating a Mentorship Eligibility table 
--  for current employees who were born between 
--  January 1, 1965 and December 31, 1965. 
SELECT DISTINCT ON (emp_no) e.emp_no,
    e.first_name,
e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)	
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
     	  AND (de.to_date = '9999-01-01');

SELECT* FROM mentorship_eligibility;
