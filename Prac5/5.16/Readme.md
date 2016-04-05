Java Server Pages (JSP)
=======================

5.16 MVC in JSP
---------------
Write following pages. 
    1. Index.html (as loing controll with one textbox for username and one password box for password, with a submit button) (as view)
    2. LoginServlet.java (as controller only)
    3. LoginService.java (as Business Service)
    4. Success.jsp (as view)

Role of index.jsp is to take input from user and forward it to LoginServlet Servlet controller, LoginServlet Controller will ask LoginService Class which has a business service named `boolean authenticateUser(String, String)` to validate the user. if userId is "admin" and password is "admin" then application will redirect to success.jsp with welcome `<username>` message, otherwise it will be redirected to login.jsp with an error message "invalid username and password". 
![5 16 1](https://cloud.githubusercontent.com/assets/16961604/14280010/b5b15af4-fb4d-11e5-9581-f12d8c3bf558.png)
![5 16 2](https://cloud.githubusercontent.com/assets/16961604/14280011/b5b63f10-fb4d-11e5-9366-28ba5770ee61.png)
