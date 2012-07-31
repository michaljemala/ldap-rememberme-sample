<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<title>Secured Page</title>
</head>
<body>
<div id="content">
<h1>Confidential Information</h1>
<p>Only authenticated user can view this page.</p>

<p>Your SessionId:
<%
	HttpSession s = request.getSession(false);
	out.println(s != null ? s.getId() : "N/A");
%>
</p>
<p><a href="<c:url value='/j_spring_security_logout'/>">Logout</a></p>
</div>
</body>
</html>