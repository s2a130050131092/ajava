<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
</head>
<body>
    130050131525<br>
    Hi.I am Nishita.I am in BITS.<br>
    after applying token...<br>
    <br>
    
<c:forTokens items="Hi.I am Nishita.I am in BITS." delims="." var="name">
    <c:out value="${name}"/><br>
</c:forTokens>
</body>
</html>  