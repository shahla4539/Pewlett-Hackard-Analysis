# Pewlett-Hackard-Analysis
Module-7


# Overview of the analysis:

Pewlett Hackard is a large company and it has been around for a long time and many of its old employees are about to retire at a rapid rate. Pewlett Hackard is offering a retirement package for those who who meet certain criteria also its starting to think about which position will need to be filled in the near future. The number of up coming retirements will lead thousands of job openiing,

Bobby is an HR Analyst whose job is to perform employee research. I will be helping Bobby to build a employee database with SQL and find answers to the following questions
* Whol will be retiring in the next few years?
* How many positions Pewlett Hackard needs to fill?
* determine the number of retiring employees per title?
* Identify employees who are eligible to participate in a mentorship program? 
The purpose of the new analysis is well defined. (3 pt)


## Results:

### Retirement Titles Table
* A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. 
* The Retirement Titles table is exported as retirement_titles.csv. 

![image](https://user-images.githubusercontent.com/105535250/182487599-344319c8-c997-4802-8671-9a099a4b354c.png)


### Unique Titles Table
* A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title. 
* The Unique Titles table is exported as unique_titles.csv.

![image](https://user-images.githubusercontent.com/105535250/182487718-bd6ba48c-3e70-46b2-95f2-54357e7918b2.png)


### Retiring Titles Table
* A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring. 
* The Retiring Titles table is exported as retiring_titles.csv.

![image](https://user-images.githubusercontent.com/105535250/182487472-a081c851-f141-4cb1-af57-f7275dcf2cc3.png)


### Mentorship Eligibilty Table
* Using the ERD I created a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
* The Mentorship Eligibility table is exported as mentorship_eligibility.csv.

![image](https://user-images.githubusercontent.com/105535250/182487264-f0e77ad4-7051-410d-89f7-98bdfe7da36f.png)


## Summary:

To determine the number of retiring employees per title, I created **retirement_titles** table. 

There are duplicate entries for some employees because they have switched titles over the years, to remove these duplicates and keep only the most recent title of each employee I created **unique_titles** table. Also excluded those employees who have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
 
Then, I created a **retiring_titles** table to hold the required information of employees counted by their most recent job title who are about to retire.

The **mentorship_eligibility** table holds the employees who are eligible to participate in a mentorship program. I added a **WHERE CLAUSE**  to extract the current employees who were born between January 1, 1965 and December 31, 1965.

### Sales and Development Dept:
I create another query that will return the following information for the Sales and Development teams:
* Employee numbers
* Employee first name
* Employee last name
* Employee department name
This table is created to help the managers in both the Sales and Development departments as they wanted to try a new mentoring program for employees getting ready to retire

SELECT *
FROM dept_info
WHERE dept_name IN ('Sales', 'Development');

-- Creating table for Sales info
SELECT emp_no,
first_name,
last_name,
dept_name
INTO sales_dept_info
FROM dept_info
WHERE dept_name IN ('Sales', 'Development');
SELECT * FROM sales_dept_info;

![image](https://user-images.githubusercontent.com/105535250/182495458-2479e4a8-20f3-479f-baf5-0533f23b33cc.png)


