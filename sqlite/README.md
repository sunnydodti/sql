# SQLite Practice
This is where I practice SQLite

Majority of the queries are based on the sample [chinook database](https://www.sqlitetutorial.net/sqlite-sample-database/) available in the [sqlite tutorial](https://www.sqlitetutorial.net/) website

## open/create a database file
- open a db file - `sqlite3 <db-filename>`
    - `sqlite3 main.db`
    - defaults to a in memory database if file is not specified

## basic SQLite commands
- sqlite commands starting with a `.` do not have a semicolon `;`

- help
    - `.help`
- open a db
    - `.open FILENAME1`
- exit
    - `.exit`
- show databases
    - `.databases`
- add a database to existing connection
    - `attach database` - `attach database <db-file> AS <name>`
    - `attach database "D:\learn\sql\sqlite\sales.db" as sales;`
- show tables
    - `.tables`
    - `.tables '%types'` - finds all table names ending with `types`
- show schema
    - `.schema <tablename>` - `.schema tracks` - specific table
    - `.schema` - all tables
    - `.fullschema` - schema and contents of `sqlite_stat` tables
- show indexes
    - `.index` - all indexes
    - `.index <tablename>` - indexes for a specific table
- save output to file
    - `.output <filename>` - `.output output.txt`
    - then run any select query - output will be saved to `output.txt`
    - type `.output` back to print results normally
- run a query from a file
    - `.read <filename-with-path>` - `.read D:\learn\sql\sqlite\query.txt`

# Sqls

## SQL Query Examples

1. **SELECT** - [select.sql](queries/select.sql)
2. **ORDER BY** - [order-by.sql](queries/order-by.sql)
3. **SELECT DISTINCT** - [distinct.sql](queries/distinct.sql)
4. **WHERE** - [where.sql](queries/where.sql)
5. **AND OPERATOR** - [and.sql](queries/and.sql)
6. **OR OPERATOR** - [or.sql](queries/or.sql)
7. **LIMIT** - [limit.sql](queries/limit.sql)
8. **BETWEEN** - [between.sql](queries/between.sql)
9. **IN** - [in.sql](queries/in.sql)
10. **LIKE** - [like.sql](queries/like.sql)
11. **GLOB** - [glob.sql](queries/glob.sql)
12. **IS NULL** - [is-null.sql](queries/is-null.sql)
13. **JOINS** - [joins](queries/join/)
    - **INNER JOIN** - [inner-join.sql](queries/join/inner-join.sql)
    - **LEFT JOIN** - [left-join.sql](queries/join/left-join.sql)
    - **RIGHT JOIN** - [right-join.sql](queries/join/right-join.sql)
    - **FULL OUTER JOIN** - [full-outer-join.sql](queries/join/full-outer-join.sql)
    - **CROSS JOIN** - [cross-join.sql](queries/join/cross-join.sql)
    - **SELF JOIN** - [self-join.sql](queries/join/self-join.sql)
    - **JOIN (general)** - [join.sql](queries/join/join.sql)
14. **GROUP BY** - [group-by.sql](queries/group-by.sql)
14. **HAVING** - [having.sql](queries/having.sql)