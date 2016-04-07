<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
</head>
<body>
130050131525
<form action="out.jsp" method="post">  
FirstName:<input type="text" name="fname"/><br/>  
LastName:<input type="text" name="lname"/><br/>  
<input type="submit" value="submit"/>  
</form> 

 
<%if(request.getParameter("fname")!=null && request.getParameter("lname")!=null){%>
First Name:<c:out value="${param.fname}"></c:out><br/>  
Last Name:<c:out value="${param.lname}"></c:out>  
<%}%>
</body>
</html>  