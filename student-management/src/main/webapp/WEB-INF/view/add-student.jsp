<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/student-management/UrlResource/css/add-student.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div align="center" class="container">
<h2>Add Student</h2>
<br/>
	<form:form action="save-student" modelAttribute="student" method="POST">
	
		<form:hidden path="id"/>
  
		<label>Name: </label>&nbsp;&nbsp;
		<form:input path="name"/>
		<br/><br/>
		
		<label>Mobile: </label>&nbsp;
		<form:input path="mobile"/>
		<br/><br/>
		
		<label>Country: </label>
		<form:input path="country"/>
		<br/><br/>
		
		<input type="submit" value="submit" class="btn btn-success">
	</form:form>
</div>
</body>
</html>