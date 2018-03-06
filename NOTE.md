## SECTION 2

### What is database ?

Khái niệm database được sử dụng rộng rãi hiện nay nếu gọi một cách chính xác phải là "Database Management System" (DMS). Có thể định nghĩa database là: <b>A structured set of computerized data with an accessible interface</b>

### SQL and MySQL

- SQL là ngôn ngữ chung của các hệ quản trị cơ sở dữ liệu quan hệ dùng để tương tác với dữ liệu.

- Các relational database đều sử dụng SQL để tương tác với dữ liệu.
Các hệ quản trị cơ sở dữ liệu quan hệ khác nhau không khác nhau về câu query mà sự khác biệt đến từ các tính năng của từng loại như độ bảo mật, performance, user management trong DMS đó.

### MySQL

- SIGNED vs UNSIGNED 

https://stackoverflow.com/questions/3895692/what-does-unsigned-in-mysql-mean-and-when-to-use-it/3895705#3895705
- Strict mode vs non strict mode
    + check strict mode or not: SHOW VARIABLES LIKE ’sql_mode’, if the mode show this one ‘STRICT_TRANS_TABLES’ -> mySQL is in strict mode;
    + disable strict mode: set global sql_mode=“”, hoặc 1 mode nào đó khác ’STRICT_TRANS_TABLES’;
    + enable strict mode: set global sql_mode=’STRICT_TRANS_TABLES’;
    + Stop Mysql Mac OS High Sierria: sudo launchctl unload -F /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist
    + Start MySql Mac OS High Sierria: sudo launchctl load -F /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist
    + When restarting mysql server, it will be run with default config (when my.cnf file is not created). When have my.cnf file, it will load the config in my.cnf file. Config file and its affected scope are listed here: https://dev.mysql.com/doc/refman/5.6/en/option-files.html table 4.2.
- NOT NULL DEFAULT ’some value’, cấu trúc này đi cùng với nhau để khi không INSERT giá trị, vẫn có giá trị default, nhưng cũng không thể INSERT giá trị NULL thủ công (manually) qua câu lệnh INSERT
- By default, WHERE condition with text is case insensitive (SELECT * FROM cats WHERE name=‘Egg’ === SELECT * FROM cats WHERE name=‘EGG’);
- LIMIT 5  actually is LIMIT 0, 5. From where to where with zero index.
- To get from fifth to the end, we use a gigantic number at the end with LIMIT
    LIMIT 5, 1238948932432473247236473264782364

- By default, LIKE is case insensitive LIKE 'a' the same with LIKE 'A'
- LIKE '%something' search for something that ends with 'something'
- LIKE 'something%' search for something that starts with 'something'
- LIKE '%something%' search for something that contains 'something'
- When querying with LIKE, if need to find data that contains special (SQL patterns keyword) characters like '%' and '_'. Use escape character
    Ex: 
    -- SELECT title FROM books WHERE title LIKE '%\%%'; -> query all title that contains character %
    -- SELECT title FROM books WHERE title LIKE '%\_%'; -> query all title that contains character _

- GROUP BY summarizes or aggregates identical data into single rows

- CHAR is always fixed length. For example, if title of book is CHAR(5), it always has 5 chracter, if longer, it will be truncated, if shorter, spaces will be added. CHAR length range is from 0 to 255.

- When retrieving CHAR data type, the padded spaces are removed. Unless, the PAD_CHAR_FULL_LENGTH SQL mode is enabled.

- If the data you want to store has fixed length (state abbreviation: CA, NY, etc --- Yes/No flag: Y/N --- Sex: M/F) Use CHAR because CHAR is faster for fixed length text

- If strict SQL mode is not enabled and you assign a value to a CHAR or VARCHAR column that exceeds the column's maximum length, the value is truncated to fit and a warning is generated. If SQL strict mode is enabled, the exceeded data can not be inserted, and an error is generated.




