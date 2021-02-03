<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	outline: green solid 5px;
	background: #FAFAFA;
	margin: 5px;
	width: 100%;
}

td, th {
	border: 2px solid #dddddd;
	text-align: left;
	padding: 8px;
}

th {
	background-color: #4CAF50;
}

.custombutton {
	margin: 25px;
}

input[type=text] {
	width: 15%;
	padding: 12px 20px;
	margin: 8px;
	background: transparent;
	border: 2px solid red;
	color: #f2f2f2;
}
</style>
</head>
<body>
	<div class="topnav">
		<a class="active"><img src="resources/img/paw.png"></a> <a>Animals</a>
		<div class="topnav-right">
			<a href="logout">Logout</a>
		</div>
	</div>
	<div class="custombutton">
		<form>
			<button
				style="height: 50px; width: 150px; cursor: pointer; border-radius: 15px; border: 3px solid green; background-color: #4CAF50; color: #f2f2f2; font-size: 17px;"
				formaction="back">Back</button>
		</form>
	</div>
	<div class="custombutton">
		<form>
			<button
				style="height: 50px; width: 150px; cursor: pointer; border-radius: 15px; border: 3px solid green; background-color: #4CAF50; color: #f2f2f2; font-size: 17px;"
				formaction="addpet">Add new animal</button>
		</form>
	</div>
	<table style="border: 1px;">
		<tr>
			<th>Pet_ID</th>
			<th>Pet_Category</th>
			<th>Breed</th>
			<th>Weight(kg)</th>
			<th>Height(cm)</th>
			<th>Age(m)</th>
			<th>Colour</th>
			<th>Cost(Rs)</th>
		</tr>

		<c:forEach items="${pets}" var="i">
			<tr>
				<td><c:out value="${i.getPet_id()}" /></td>
				<td><c:out value="${i.getPet_categ()}" /></td>
				<td><c:out value="${i.getBreed()}" /></td>
				<td><c:out value="${i.getWeight()}" /></td>
				<td><c:out value="${i.getHeight()}" /></td>
				<td><c:out value="${i.getAge()}" /></td>
				<td><c:out value="${i.getColour()}" /></td>
				<td><c:out value="${i.getCost()}" /></td>
			</tr>
		</c:forEach>
	</table>
	<form action="buyApet">
		<label style="font-weight: bold; color: white;">Enter Pet_ID
			to Buy</label>
		 <select name="pet_id" id="pet_id">
          <c:forEach var="i" items="${pets}" >
            <option value="${i.getPet_id()}">${i.getPet_id()}</option>
          </c:forEach>
        </select>
			<input
			style="width: 75px; height: 44px; cursor: pointer; border-radius: 15px; border: 3px solid green; background-color: #4CAF50; color: #f2f2f2; font-size: 17px;"
			type="submit" value="Buy">
	</form>
</body>
</html>