Java Server Pages (JSP)
=======================

5.11 JSP JSTL SQL Tags
----------------------
rewrite program 5.4 using SQL tags.

part 2. do following
Create following table:

```sql
create table Students
    (
     id int not null,
     first varchar (255),
     last varchar (255),
     dob date
    );
```

Insert following records: 
```sql
INSERT INTO Students VALUES (100, 'Nirav', 'Baldha', '2002/05/16');
INSERT INTO Students VALUES (101, 'Kaushik', 'Vaghani', '1978/11/28');
INSERT INTO Students VALUES (102, 'Ankit', 'Desai', '1980/10/10');
INSERT INTO Students VALUES (103, 'Ruhi', 'Desai', '1971/05/08');
```

Now let us write a JSP which will make use of `<sql:update>` along with `<sql:param>` and `<sql:dataParam>` to execute a SQL UPDATE statement to update date of birth for Ruhi. Also Display all records on browser.

![5 11 1](https://cloud.githubusercontent.com/assets/16961604/14279777/cbf2adc8-fb4c-11e5-9593-ec53a248bfdf.png)
![5 11 2](https://cloud.githubusercontent.com/assets/16961604/14279778/cbf31128-fb4c-11e5-9a4c-621283fd7688.png)
![5 11 3](https://cloud.githubusercontent.com/assets/16961604/14279779/cbfc1a98-fb4c-11e5-8d45-adb0678e86c1.png)

