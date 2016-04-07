<html>
<head>
</head>
<body>
130050131525
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<c:url value="/jsp/9/param.jsp" var="myURL">
   <c:param name="trackingId" value="20"/>
   <c:param name="reportType" value="summary"/>
</c:url>
${myURL}
</body>
</html>  