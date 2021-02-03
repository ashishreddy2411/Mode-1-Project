<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html>
<head>
        <title>Customer </title>
        <style>
            body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background: #484848;
}
.topnav {
  overflow: hidden;
  background-color:#8d2663;
  height: 70px;
  border: 3px solid #b40a70;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 35px;
  font-weight: bold;
}

.topnav-right {
  float: right;
}
fieldset { 
  background: #FAFAFA;
	padding: 10px;
   margin:auto;
   max-width:450px;
	box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	border-radius: 10px;
	border: 6px solid  #b40a70;
}
label{
	font-weight: bold;
}

</style>    
</head>
<body>
<div class="topnav">
            <a class="active"><img src="resources/img/paw.png"></a>
            <a >Add User</a>
            <div class="topnav-right">
            </div>
          </div>
   <form>
       <button type="submit" formaction="logout"style="margin:15px;height: 30px;width: 100px;
       border-radius:15px;
border: 3px solid  #b40a70;background-color: #8d2663;color:#f2f2f2;font-size:15px;cursor:pointer;">back</button>
</form> 
<form:form name="f" action="adduser" modelAttribute="user">
<fieldset> 
  <label>Username :</label> <form:input type="text" name="name" path="name" placeholder="Enter the Username" pattern="^[a-zA-Z0-9]([._-](?![._-])|[a-zA-Z0-9]){3,18}[a-zA-Z0-9]$" style="width:300px;height:30px;
    border: 2px solid  #b40a70; border-radius:5px; background:transparent;" required="required"/>
  <br><br>
  <label>Password :</label><form:input type="text" name="pass" path="pass" placeholder="Enter Password" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8, 20}$" style="width:300px;height:30px;
    border: 2px solid  #b40a70; border-radius:5px; background:transparent;" required="required"/>
  <br><br>
  <label>Email ID :</label> <form:input type="text" name="email_id" path="email_id" placeholder="Enter Email ID" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" style="width:300px;height:30px;
    border: 2px solid  #b40a70; border-radius:5px; background:transparent;" required="required"/>
  <br><br>
   <label>Mobile No :</label><form:input type="tel" name="mobile_no" path="mobile_no" placeholder="Enter Mobile Number" pattern="[0-9]{10}" style="width:300px;height:30px;
    border: 2px solid  #b40a70; border-radius:5px; background:transparent;" required="required"/>
   <br><br>
   <label>City :</label><form:input type="text" name="city" path="city" placeholder="Enter city" pattern="[A-Za-z]{3,}" style="width:300px;height:30px;
    border: 2px solid  #b40a70; border-radius:5px; background:transparent;" required="required"/>
  <br><br>
  <input type="submit" name="submit" value="ADD" style="width:100%;height:30px;
    border: 2px solid  #b40a70; border-radius:5px; cursor:pointer;background-color: #8d2663">  
  </fieldset>
</form:form> 
</body>
</html>