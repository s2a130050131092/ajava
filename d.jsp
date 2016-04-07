<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
</head>
<body>
    1300501310525<br>  
<h1>www.google.com</h1>  
<hr/>  
<c:import var="data" url="http://www.google.com"></c:import>  
  
<h2>Data is:</h2>  
<c:out value="${data}"></c:out> 
</body>
</html>  