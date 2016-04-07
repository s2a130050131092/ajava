<html>
<head>
</head>
<body>
130050131525
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="name" scope="session" value="nishita"/>
<p>Before Remove Value: <c:out value="${name}"/></p>
<c:remove var="name"/>
<p>After Remove Value: <c:out value="${name}"/></p>
</body>
</html>  