<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title> JSTL_forEach example</title>
</head>
<body>
130050131525
<c:forEach var="i" begin="1" end="18" step="2">
   Item <c:out value="${i}"/><p>
</c:forEach>
</body>
</html>