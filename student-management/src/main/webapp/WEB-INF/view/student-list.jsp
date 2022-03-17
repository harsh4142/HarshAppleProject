<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container" style="padding-top:2%;">	
	<h1 align="center">Harsh's Apple Project</h1>
	<div align="center">
	
		<form action="showAddStudentPage" align="left">
			<input type="submit" value="ADD" class="btn btn-outline-success">
		</form>
		<br>
		<table class="table table-success table-striped">
			<thead>
				<tr>
					<td>id</td>
					<td>name</td>
					<td>mobile</td>
					<td>country</td>
					<td>Action</td>
					<td>Action</td>
				</tr>
			</thead>
			<c:forEach var="student" items="${students}">
				<tr>
					<td>${student.id}</td>
					<td>${student.name}</td>
					<td>${student.mobile}</td>
					<td>${student.country}</td>
					<td><a href="/student-management/updateStudent?userId=${student.id}">Update</a></td>
					<td><a href="/student-management/deleteStudent?userId=${student.id}"
					onclick="if(!(confirm('Are you sure you want to delete this student'))) return false">Delete</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>
	</div>
</body>
</html>