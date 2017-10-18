<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page import="java.io.IOException" %>--%>

<html>
<head>
    <title>Log in page </title>
</head>
<body>
<%@ include file="partials/navbar.jsp"%>
<%@include file="partials/style.jsp"%>
<form action="login.jsp" method="post">
    name : <input type="text"  name="name" placeholder="Enter your name" >

    password : <input type="password" class=" password" name="password" placeholder="Enter password ">

    <button type="submit">submit</button>
</form>
<c:if test="${param.username == 'admin' && param.password == 'password'}">
<% response.sendRedirect("/profile.jsp");%>
</c:if>
</body>
</html>