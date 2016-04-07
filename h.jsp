<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
</head>
<body>
130050131525
<c:set var="age" scope="session" value="${40}"/>
<p>Your age is :
    <c:out value="${age}"/></p>
<c:choose>
    <c:when test="${age <= 10}">
       You are under age.
    </c:when>
    <c:when test="${age > 30}">
        You are not advisable.
    </c:when>
    <c:otherwise>
        Validated...
    </c:otherwise>
</c:choose>
</body>
</html>  