Java Server Pages (JSP)
=======================
5.1 JSP date example
--------------------
Create a simple dynamic JSP page that prints the current date and time.

5.2 Reading Request Information
-------------------------------
When an HTTP client such as web browser sends a request to a web server, along with the request it also sends some HTTP variables like Remote address, Remote host, Content type etc. In some cases these variables are useful to the programmers.
use: request.getMethod(), request.getRequestURI(), request.getProtocol(), request.getPathInfo(), request.getPathTranslated(), request.getQueryString(), request.getContentLength(), request.getContentType(), request.getServerName(), request.getServerPort(), request.getRemoteUser(), request.getRemoteAddr(), request.getRemoteHost(), request.getAuthType()

5.3 Retrieving the data posted to a JSP file from HTML file
-----------------------------------------------------------
Consider an html page that prompts the user to enter his/her name, let's call it getname.htm. 
The target of form is "showname.jsp", which displays the name entered by the user. To retrieve the value entered by the user we uses the request.getParameter("username"); code.

5.4 Accessing database from JSP
-------------------------------
we take a example of Books database. This database contains a table named books_details. This table contains three fields- id, book_name& author. we starts from very beginning. First we create how to create tables in MySQl database after that we write a html page for inserting the values in 'books_details' table in database. After submitting values a table will be showed that contains the book name and author name.
Sample output:
--------------
![sample output1](http://www.roseindia.net/jsp/Access3.gif)
Fill the book name and author fields and press Submit button. A page will open and show  a table of book name and authors like.
On Same JSP Page
![sample output2](http://www.roseindia.net/jsp/Access4.gif)

5.5 Implement JavaScript with JSP (Complete DB Example)
-------------------------------------------------------
Step 1: Create employee form (EmployeeInformation.jsp).
In this step first of all create Employee information form and retrieved employee id from database using with JDBC database.

Step 2 : Create "ProcessAction.jsp"  for Process the Data and forward  according to user requirement. 
In this step first of all we will create ProcessAction.jsp for getting all string value using with getParameter() method and forward on different page like JSPInsertAction.jsp, ClearAction.jsp, and update.jsp.

Step 3: Create data insert action page ("JSPInsertAction.jsp"). 
This code using for insert data into database by using JDBC database. When you will select same employee id and employee name then massage will display employee id already exit in database.

Step 4: Create data deletion code from database ("ClearAction.jsp").
In this step you will create code to delete data from database. When,  you will select employee id and employee name then select delete radio button after selecting delete radio button when you will click on submit button then data will successfully delete from database.

Step 5: Create update data code ("update.jsp"). 
In this step you will create, modify data in database by using JDBC database.

Here is the output of this program:
When you will enter new employee id and employee name and select insert button after selecting insert button click on submit button then data will insert successfully in database.

![sample output3](http://www.roseindia.net/jsp/empform1.gif)

![samput output4](http://www.roseindia.net/jsp/empform2.gif)

If  you will select same employee id then massage will display like this.

![sample output5](http://www.roseindia.net/jsp/empform3.gif)

![sample output6](http://www.roseindia.net/jsp/empform4.gif)

![sample output7](http://www.roseindia.net/jsp/empform5.gif)

![sample output8](http://www.roseindia.net/jsp/empform6.gif)

![sample output9](http://www.roseindia.net/tutorialfiles/21690.empform7.gif)

![sample output10](http://www.roseindia.net/tutorialfiles/21690.empform7.gif)

If you want to modify record then select employee id and enter new employee name. When you will select modify radio button then click on submit button then massage will display like this.

![sample output11](http://www.roseindia.net/jsp/empform8.gif)

5.6 Working with sessions
-------------------------
In any web application user moves from one page to another and it becomes necessary to track the user data and objects throughout the application. JSP provide an implicit object "session", which can be use to save the data specific to the user. 
In this practical we will create an application that takes the user name from the user and then saves into the user session. We will display the saved data to the user in another page.

5.7 JSP Cookies Example
-----------------------
Cookie Example to Store and Show only 10 values. This cookie example illustrates how you can manage cookie value in your JSP page. This example is saving and displaying cookies and also it is managing cookies size in such manner that if cookie size becomes greater than a limit (e.g 10 in this case), it will automatically deletes the oldest cookie from the list. Cookies age can be set using the following code: 
```javascript
setMaxAge(365*24*60*60)
```
User can add new cookie by entering the cookie name and value from the JSP page. On the form submit event user input will be added into cookie array by the following method: 
```javascript
response.addCookie(`<cookie name>`)
```
We are managing cookies by the cookie age. If the cookie ages is set to zero then it will be deleted. We are using the MaxAge property of the cookie to delete the cookie. To delete any cookie you can set its MaxAge to zero `e.g. MaxAge="0"`. 
```javascript
<% 
   if(cookies.length >=10) 
   { 
      int start=cookies.length-10;
      cookies[start].setMaxAge(0);
      response.addCookie(cookies[start]);
   } 
%>
```
First time when JSP page would run then it looks like that


![sample output11](http://www.roseindia.net/jsp/cookiestart.gif)

As and when we store new values in cookie it will add till 10 values


![sample output11](http://www.roseindia.net/jsp/cookiesave.gif)

as soon as we will add 11th value then first will be deleted.

![sample output11](http://www.roseindia.net/jsp/11thadded.gif)


5.8 JSP implicit objects
------------------------
Write 9 different jsp pages to demonstrate the use of jsp implicit objects. 
`out, request, response, config, application, session, pageContext, page and exception`.

5.9 JSP JSTL Core Tags 
----------------------
write one program per tag. (short programs)

`<c:catch>, <c:choose>, <c:foreach>, <c:fortokens>, <c:if>, <c:import>, <c:out>, <c:param>, <c:redirect>, <c:remove>, <c:set>, <c:url>`.


5.10 JSP JSTL Formating Tags
----------------------------
write one program per tag. (Short programs) 

`<fmt:formatNumber>, <fmt:parseNumber>, <fmt:formatDate>, <fmt:parseDate>, <fmt:timeZone>, <fmt:setTimeZone>, <fmt:message>`

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

5.12 JSP JSTL XML Tags
----------------------
Rewrite 5.4 using `<x:out>, <x:parse>, <x:set>, <x:if>, <x:foreach>, <x:choose>, <x:when>, <x:otherwise>`.

5.13 JSP JSTL Functions
-----------------------
Write individual programs to demonstrate the use of following JSTL Functions. (One Program per function).

`fn:contains(), fn:containsIgnoreCase(), fn:endsWith(), fn:escapeXml(), fn:indexOf(), fn:join(), fn:length(), fn:replace(), fn:split(), fn:startsWith(), fn:substring(), fn:substringAfter(), fn:substringBefore(), fn:toLowerCase(), fn:toUpperCase(), fn:trim()`.

5.14 JSP Custom Tags
--------------------
Create a userdefined tag named `<today>` with a prefix 'm' (i.e. `<m:today>`) which will print system's current time stamp whenever it is accessed in a jsp page. (Hint: write mytags.tld, MyTagHandler.java and index.jsp files)

5.15 Java Action Tags
---------------------
Write individual programs to demonstrate the use of following action tags. 
    `<jsp:forward>, <jsp:include>, <jsp:usebean>`.

5.16 MVC in JSP
---------------
Write following pages. 
    1. Index.html (as loing controll with one textbox for username and one password box for password, with a submit button) (as view)
    2. LoginServlet.java (as controller only)
    3. LoginService.java (as Business Service)
    4. Success.jsp (as view)

Role of index.jsp is to take input from user and forward it to LoginServlet Servlet controller, LoginServlet Controller will ask LoginService Class which has a business service named `boolean authenticateUser(String, String)` to validate the user. if userId is "admin" and password is "admin" then application will redirect to success.jsp with welcome `<username>` message, otherwise it will be redirected to login.jsp with an error message "invalid username and password". 
![5 1](https://cloud.githubusercontent.com/assets/16961604/14279027/6a40cf14-fb48-11e5-86e5-0f759f25e1f2.png)
![5 2](https://cloud.githubusercontent.com/assets/16961604/14279235/c671e66e-fb49-11e5-930a-dee64a0c815c.png)
![5 3 1](https://cloud.githubusercontent.com/assets/16961604/14279297/2e0199e6-fb4a-11e5-8e28-70b3cf108aa2.png)
![5 3 2](https://cloud.githubusercontent.com/assets/16961604/14279298/2e062704-fb4a-11e5-8955-f77b59fed80f.png)
![5 5 4](https://cloud.githubusercontent.com/assets/16961604/14279396/a1183f34-fb4a-11e5-8f47-5d8108af2de6.png)
![5 5 5](https://cloud.githubusercontent.com/assets/16961604/14279397/a120b268-fb4a-11e5-9f85-a09380e1290e.png)
![5 5 6](https://cloud.githubusercontent.com/assets/16961604/14279398/a12e0ec2-fb4a-11e5-8bd5-9171580c2da5.png)
![5 5 1](https://cloud.githubusercontent.com/assets/16961604/14279399/a12f7a50-fb4a-11e5-8e15-8921145cd58b.png)
![5 5 2](https://cloud.githubusercontent.com/assets/16961604/14279400/a13cee88-fb4a-11e5-8525-68409c7c15f8.png)
![5 5 3](https://cloud.githubusercontent.com/assets/16961604/14279401/a1416b0c-fb4a-11e5-8884-f0f17122f6aa.png)
![5 6 1](https://cloud.githubusercontent.com/assets/16961604/14279475/12026f1c-fb4b-11e5-820a-04edf272fbf1.png)
![5 6 2](https://cloud.githubusercontent.com/assets/16961604/14279476/120f7df6-fb4b-11e5-9104-c169c87f95ac.png)
![5 7 2](https://cloud.githubusercontent.com/assets/16961604/14279567/88770d88-fb4b-11e5-9e7d-fcdc0115903e.png)
![5 7 3](https://cloud.githubusercontent.com/assets/16961604/14279568/887c98fc-fb4b-11e5-9442-595b47e5c38e.png)
![5 7 1](https://cloud.githubusercontent.com/assets/16961604/14279569/8883a548-fb4b-11e5-936e-275ae8ed9ac6.png)
![5 8 3](https://cloud.githubusercontent.com/assets/16961604/14279603/c597d436-fb4b-11e5-817f-3b2791e21007.png)
![5 8 4](https://cloud.githubusercontent.com/assets/16961604/14279601/c597a40c-fb4b-11e5-9696-533117f3aec1.png)
![5 8 5](https://cloud.githubusercontent.com/assets/16961604/14279602/c597c63a-fb4b-11e5-847b-c89ea0df8020.png)
![5 8 6](https://cloud.githubusercontent.com/assets/16961604/14279604/c59968f0-fb4b-11e5-8a42-2db232a587b2.png)
![5 8 7](https://cloud.githubusercontent.com/assets/16961604/14279605/c59a1e3a-fb4b-11e5-986a-1b59ebeefc41.png)
![5 8 8](https://cloud.githubusercontent.com/assets/16961604/14279606/c59d7076-fb4b-11e5-9ccd-4596b17cfb33.png)
![5 8 9](https://cloud.githubusercontent.com/assets/16961604/14279608/c5c74d56-fb4b-11e5-9b8b-653523203efd.png)
![5 8 1](https://cloud.githubusercontent.com/assets/16961604/14279607/c5c72600-fb4b-11e5-8725-a0237b9c90c1.png)
![5 8 2](https://cloud.githubusercontent.com/assets/16961604/14279633/e4d14756-fb4b-11e5-8ad7-b3645dec95f7.png)
![5 9 4](https://cloud.githubusercontent.com/assets/16961604/14279675/36647c96-fb4c-11e5-9c28-96e5b1a7ce5d.png)
![5 9 5](https://cloud.githubusercontent.com/assets/16961604/14279676/3665030a-fb4c-11e5-94f5-9bc2ff067300.png)
![5 9 6](https://cloud.githubusercontent.com/assets/16961604/14279677/3665c8bc-fb4c-11e5-91ec-152d41ef22d0.png)
![5 9 7](https://cloud.githubusercontent.com/assets/16961604/14279678/36785fe0-fb4c-11e5-97a5-9876cd6171dc.png)
![5 9 8](https://cloud.githubusercontent.com/assets/16961604/14279679/367b1bf4-fb4c-11e5-84ab-9f794f44ebf6.png)
![5 9 9](https://cloud.githubusercontent.com/assets/16961604/14279680/367cef60-fb4c-11e5-9b77-1f4370a508bf.png)
![5 9 10](https://cloud.githubusercontent.com/assets/16961604/14279681/3691ed3e-fb4c-11e5-9544-11fbd471cec8.png)
![5 9 11](https://cloud.githubusercontent.com/assets/16961604/14279682/3694abdc-fb4c-11e5-8ea0-cc8e138f800a.png)
![5 9 12](https://cloud.githubusercontent.com/assets/16961604/14279683/369acad0-fb4c-11e5-84fe-cd52ae5efb80.png)
![5 9 13](https://cloud.githubusercontent.com/assets/16961604/14279684/36a58d9e-fb4c-11e5-900b-73895e7b018b.png)
![5 9 14](https://cloud.githubusercontent.com/assets/16961604/14279685/36a94eca-fb4c-11e5-9dff-979b55044a11.png)
![5 9 1](https://cloud.githubusercontent.com/assets/16961604/14279686/36ab7b96-fb4c-11e5-87ef-137afd0001cf.png)
![5 9 2](https://cloud.githubusercontent.com/assets/16961604/14279687/36c2d002-fb4c-11e5-9aa4-93642ffac05c.png)
![5 9 3](https://cloud.githubusercontent.com/assets/16961604/14279688/36c6b6f4-fb4c-11e5-858b-3fd1c1eee13b.png)

![5 10 3](https://cloud.githubusercontent.com/assets/16961604/14279737/97f27b48-fb4c-11e5-8023-7f67c7520ac8.png)
![5 10 4](https://cloud.githubusercontent.com/assets/16961604/14279738/97f8930c-fb4c-11e5-8cd4-eb994c159b5e.png)
![5 10 5](https://cloud.githubusercontent.com/assets/16961604/14279739/97ff2d84-fb4c-11e5-8ade-cb8b89910777.png)
![5 10 6](https://cloud.githubusercontent.com/assets/16961604/14279740/980e7f96-fb4c-11e5-8e42-da1d4d6813ee.png)
![5 10 1](https://cloud.githubusercontent.com/assets/16961604/14279741/9813f39a-fb4c-11e5-9cc5-bcb0075fa590.png)
![5 10 2](https://cloud.githubusercontent.com/assets/16961604/14279742/98181d26-fb4c-11e5-9715-e601e7e09e62.png)
![5 11 1](https://cloud.githubusercontent.com/assets/16961604/14279777/cbf2adc8-fb4c-11e5-9593-ec53a248bfdf.png)
![5 11 2](https://cloud.githubusercontent.com/assets/16961604/14279778/cbf31128-fb4c-11e5-9a4c-621283fd7688.png)
![5 11 3](https://cloud.githubusercontent.com/assets/16961604/14279779/cbfc1a98-fb4c-11e5-8d45-adb0678e86c1.png)
![5 13 10](https://cloud.githubusercontent.com/assets/16961604/14279842/15efd522-fb4d-11e5-8f9e-255bd3059ebc.png)
![5 13 11](https://cloud.githubusercontent.com/assets/16961604/14279843/15fa2d60-fb4d-11e5-87e1-08139c61c708.png)
![5 13 12](https://cloud.githubusercontent.com/assets/16961604/14279844/1607c150-fb4d-11e5-920d-4b388cb14741.png)
![5 13 13](https://cloud.githubusercontent.com/assets/16961604/14279845/16145df2-fb4d-11e5-8836-461a97c5ae62.png)
![5 13 14](https://cloud.githubusercontent.com/assets/16961604/14279846/16192f9e-fb4d-11e5-8886-ac0717ab1fe2.png)
![5 13 15](https://cloud.githubusercontent.com/assets/16961604/14279847/161bda8c-fb4d-11e5-9b3f-37e87f3466f7.png)
![5 13 16](https://cloud.githubusercontent.com/assets/16961604/14279848/162083f2-fb4d-11e5-8638-9d04bd6da97d.png)
![5 13 1](https://cloud.githubusercontent.com/assets/16961604/14279849/1628e6be-fb4d-11e5-84ef-0784b5f84617.png)
![5 13 2](https://cloud.githubusercontent.com/assets/16961604/14279850/16351790-fb4d-11e5-893c-b9a6006485cf.png)
![5 13 3](https://cloud.githubusercontent.com/assets/16961604/14279851/1640830a-fb4d-11e5-9e73-e96ee9ca95bb.png)
![5 13 4](https://cloud.githubusercontent.com/assets/16961604/14279853/164a12da-fb4d-11e5-98a7-b106a9c661e0.png)
![5 13 5](https://cloud.githubusercontent.com/assets/16961604/14279852/1649c190-fb4d-11e5-8b5b-729541865a3d.png)
![5 13 6](https://cloud.githubusercontent.com/assets/16961604/14279854/164c5cca-fb4d-11e5-9004-aa3b7826fec6.png)
![5 13 7](https://cloud.githubusercontent.com/assets/16961604/14279855/165a2738-fb4d-11e5-892f-c7a1c44a8031.png)
![5 13 8](https://cloud.githubusercontent.com/assets/16961604/14279856/1662256e-fb4d-11e5-8234-9eb373ac69b5.png)
![5 13 9](https://cloud.githubusercontent.com/assets/16961604/14279858/166db8fc-fb4d-11e5-92f0-fd7e211f488d.png)
![5 14 1](https://cloud.githubusercontent.com/assets/16961604/14279927/587d5040-fb4d-11e5-9ae5-03b12584eccb.png)
![5 15 3](https://cloud.githubusercontent.com/assets/16961604/14279957/86f2a312-fb4d-11e5-9d0b-3703dfe9eb7a.png)
![5 15 4](https://cloud.githubusercontent.com/assets/16961604/14279958/86fd6a36-fb4d-11e5-8536-acc7ab41a6c2.png)
![5 15 5](https://cloud.githubusercontent.com/assets/16961604/14279959/8704571a-fb4d-11e5-8a2a-1dc3a47062b4.png)
![5 15 1](https://cloud.githubusercontent.com/assets/16961604/14279960/8708393e-fb4d-11e5-9f44-c25673197a22.png)
![5 15 2](https://cloud.githubusercontent.com/assets/16961604/14279961/870d822c-fb4d-11e5-869a-0ec46174a506.png)
![5 16 1](https://cloud.githubusercontent.com/assets/16961604/14280010/b5b15af4-fb4d-11e5-9581-f12d8c3bf558.png)
![5 16 2](https://cloud.githubusercontent.com/assets/16961604/14280011/b5b63f10-fb4d-11e5-9366-28ba5770ee61.png)













