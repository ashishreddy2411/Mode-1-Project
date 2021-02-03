<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html>
<head>
<title>Animals</title>
<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	background: #484848;
}

.topnav {
	overflow: hidden;
	background-color: #4CAF50;
	height: 70px;
	border: 3px solid green;
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
	background: white;
	padding: 10px;
	margin: auto;
	max-width: 593px;
	box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	border-radius: 10px;
	border: 6px solid #4CAF50;
}

label {
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="topnav">
		<a class="active"><img src="resources/img/paw.png"></a> <a>ADD
			PETS</a>
		<div class="topnav-right">
			<a href="logout">logout</a>
		</div>
	</div>

	<form>
		<button type="submit" formaction="back"
			style="margin: 15px; height: 30px; width: 100px; cursor: pointer; border-radius: 15px; border: 3px solid green; background-color: #4CAF50; color: #f2f2f2; font-size: 17px;">
			Back</button>
	</form>
	<form:form method="post" action="addApet" modelAttribute="pet">
		<fieldset>
			<br>
			<br> <label>Pet Category :</label>
			<form:input type="text" name="pet_categ" path="pet_categ" required="required"
				placeholder="Enter pet_category"
				style="width:280px;height:30px;
   border: 2px solid  #4CAF50; border-radius:3px;background:transparent;" />
			<br>
			<br> <label>Pet Breed :</label>
			<form:input type="text" name="breed" path="breed" pattern="[A-Za-z]{3,}"
				placeholder="Enter breed" required="required"
				style="width:280px;height:30px;
   border: 2px solid  #4CAF50; border-radius:3px;background:transparent;" />
			<br>
			<br> <label>Weight :</label>
			<form:input placeholder="Enter weight" type="text" name="weight" pattern="[0-9]{1,}[.]{0,2}[0-9]*"
				path="weight" required="required"
				style="width:280px;height:30px;
   border: 2px solid  #4CAF50; border-radius:3px;background:transparent;" />
			<br>
			<br> <label>Height :</label>
			<form:input placeholder="Enter height" type="text" name="height" pattern="[0-9]{1,}[.]{0,2}[0-9]*"
				path="height" required="required"
				style="width:280px;height:30px;
   border: 2px solid  #4CAF50; border-radius:3px;background:transparent;" />
			<br>
			<br> <label>Age(In Months) :</label>
			<form:input placeholder="Enter age in Months" type="text" name="age" pattern="[0-9]{1,}"
				path="age" required="required"
				style="width:280px;height:30px;
   border: 2px solid  #4CAF50; border-radius:3px;background:transparent;" />
			<br>
			<br> <label>Colour :</label>
			<form:input type="text" name="colour" path="colour" pattern="[A-Za-z]{3,}"
				placeholder="Enter colour" required="required"
				style="width:280px;height:30px;
   border: 2px solid  #4CAF50; border-radius:3px;background:transparent;" />
			<br>
			<br> <label>Cost :</label> 
			<form:input type="text" name="cost" path="cost" pattern="[0-9]{1,}[.]{0,2}[0-9]*"
				placeholder="Enter cost" required="required"
				style="width:280px;height:30px;
   border: 2px solid  #4CAF50; border-radius:3px;background:transparent;" />
			<br>
			<br> <input type="submit" name="submit" value="save"
				style="width: 100%; height: 30px; border: 2px solid #4CAF50; border-radius: 3px; cursor: pointer; background-color: #4CAF50" />&ensp;
		</fieldset>
	</form:form>
</body>
</html>