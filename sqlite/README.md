# SQLite Practice
This is where I practice SQLite
Majority of the queries are based on the sample [chinook database](https://www.sqlitetutorial.net/sqlite-sample-database/) available in the [official sqlite tutorial](https://www.sqlitetutorial.net/)

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