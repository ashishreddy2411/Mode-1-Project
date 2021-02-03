<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Petshop Management
        </title>
<link rel="stylesheet" type="text/css" href="resources/css/Home_style.css"/>
    </head>
    <body>
        <div class="topnav">
            <a class="active"><img src="resources/img/paw.png"></a>
            <a>Pets Shop Management</a>
            <div class="topnav-right">
              <a href="logout">Logout</a>
            </div>
          </div>
     <div class="screen">
     <form:form>
     <label style="font-weight:bold;color:white;font-size:20px;">${data}</label>
          <br/>
            <button class="button button1"  type="submit" formaction="viewallpets">View Available Pets</button>
            <button class="button button2"  type="submit" formaction="addpet">Add a Pet</button>
            <button class="button button3"  type="submit" formaction="viewMypets">View My Pets</button>       
     </form:form> 
    </div>
         	<div id="footer">
		 <h3>&copy;This Pet Shop Application is Designed and Developed by Ashish Reddy</h3>
	</div>
    </body>
</html>