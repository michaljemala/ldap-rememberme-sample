<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
</head>
<body>
<div id="content">
<h1>Home Page</h1>
<p>Anyone can view this page.</p>

<p>Your SessionId:
<%
	HttpSession s = request.getSession(false);
	out.println(s != null ? s.getId() : "N/A");
%>
</p>
<sec:authorize url='/secure/'>
	<p>You can currently access "/secure" URLs.</p>
</sec:authorize>

<p><a href="/secure/">Secured page</a></p>
</div>
</body>
</html>