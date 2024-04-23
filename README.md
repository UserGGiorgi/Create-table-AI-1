# Database design and SQL (DDL) using AI tools

## Task  

Using the experience gained in the previous problem, try to solve it using artificial intelligence.

1. Using ChatGPT and task Domain Description, ask it (ChatGPT) to generate SQL code to create a SQLite database.

2. Evaluate the solution that was proposed by ChatGPT, check it using your local unit tests.

3. Save the result of communication with ChatGPT to the file [gpt-stage-1](CreateTable\gpt\gpt-stage-1.txt)

4. Using the «Restriction for create table statements» section, ask ChatGPT to correct the proposed solution

5. Evaluate the solution that was proposed by ChatGPT, check it using your local unit tests.

6. Save the result of communication with ChatGPT to the file [gpt-stage-2](CreateTable\gpt\gpt-stage-2.txt)

7. Using the create.sql file obtained from the create-table repository without using AI, ask ChatGPT to find all the design anomalies you made in that task.

8. Save the result of communication with ChatGPT to the file [gpt-stage-3](CreateTable\gpt\gpt-stage-3.txt)

9. Using the file [creat.sql](CreateTable\sql_queries) obtained at stages 4-6 of this task, ask ChatGPT to find all the design anomalies it made in that task.

10. Save the result of communication with ChatGPT to the file [gpt-stage-4](CreateTable\gpt\gpt-stage-4.txt)
### Restriction for create table statements
- Do not use ALTER operations 
- Don’t use cascading deletion from tables (is forbitten).
- Please use only simple primary and foreign keys (single column/attribute).
- Do not use IF NOT EXISTS statement.
- Do not use `` to escape a table name or column name.
- Don`t use digits in table names or column names.
- Use CHECK statement only in next format ColumnName ColumnType ColumnSpecification CHECK(CheckExpression). CheckExpression must contains only: column name, <,<=,>,>= , <>, BETWEEN (for example Age INTEGER NOT NULL CHECK (Age>0 and Age < 200))
- Use only  CREATE TABLE statements (CREATE index, etc. are forbitten) 
- Create a database scheme for the domain (see description). The BD scheme must correspond to at least the third normal form (3NF).
- DB should contain at least 7 tables with primary and foreign keys, unique, not null attributes where it is suitable.


### Domain description   

- The company employees carry out projects (project data: name, date of creation, status open / closed, date of closure).   
- An employee can carry out several projects, on different projects his position may differ.  
- Tasks for the project are issued to the employee with a deadline. The task can be in the status: open, completed, requires revision, accepted (closed), indicating the date of setting the status and the employee setting the status. 

### How to complete task solution

1. Design DB scheme and save it’s screenshot in file **DBScheme.jpg**. Upload it to folder **sql_queries**. 
1. Save script with queries to file  **sql_queries** / **create.sql**. Separate queries with “;”.
______
