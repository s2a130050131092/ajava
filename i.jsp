<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
</head>
<body>
130050131525
<c:set var="marks" scope="session" value="${45}"/>
<c:if test="${marks < 50}">
   <p>My marks is: <c:out value="${marks}"/><p>
</c:if>
</body>
</html>  