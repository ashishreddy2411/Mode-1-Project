<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>
	 Petshop Management
</title>
<link rel="stylesheet" type="text/css" href="resources/css/index_style.css"/>
</head>
<body>
<%
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control",",no-store");
	response.setHeader("Expires","0");
	response.setDateHeader("Expires",-1);
	session.invalidate();

%>
    <div class="topnav">
            <a class="active"><img src="resources/img/paw.png"></a>
            <a>Pets Shop Management</a>
          </div>
    <div class="login-page">
  <div class="form">
    <form:form action="home" method="POST" modelAttribute="user">
      <h1>Login</h1>
      <label style="font-weight:bold;color:red;">${data}</label>
      <form:input type="text" name="name" placeholder="username" path="name" required="required"/>
      <form:input type="password"  name="pass" placeholder="password" path="pass" required="required"/>
      <button type="submit"  name="login" >login</button><br/>
      <a href="addAuser">New User?</a>
    </form:form>
  </div>
</div>
</body>	
</html>