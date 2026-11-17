<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Students Page</title>
<style>
body {
	background-size: cover;
	background-color: #ffc9b9;
}

#logo {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	float: left;
}

h1 {
	color: #182000;
}

.div1 {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
	text-align: center;
}

a, form {
	padding: 10px;
	margin-left: 25px;
	margin-right: 25px;
}

form {
	background-color: #000;
	padding: 10px;
	border-radius: 20px;
}

input {
	padding: 10px;
	border-radius: 20px;
}

button {
	background-color: #FEFAE0;
	padding: 10px;
	border: #283618 2px solid;
	border-radius: 20px;
	cursor: pointer;
}

#bg {
	float: right;
	margin-right: 30px;
	border-radius: 30px;
}

.d1>form {
	width: 500px;
	height: 500px;
	background-color: transparent;
	border: #000 4px solid;
}

table {
	margin: auto;
	font-size: 20px;
	border-collapse: collapse;
}

#add {
	margin-left: 850px;
	margin-top: -130px;
}
</style>
</head>
<body>

	<center>
		<a href="createpage">
			<button>Create Student</button>
		</a> 
		<a href="allstudents">
			<button>View All Students</button>
		</a> 
		<a href="search.jsp">
			<button>Search Student</button>
		</a>
	</center>

	<h1 id="msg">${msg }</h1>
	<h1>All Students</h1>
	
	<form action="search">
		<input type="text" name="sq" placeholder="Type here to search">
		<button type="submit">Search</button>
	</form>

	<table border="5" cellpadding="10px" cellspacing="10px">
		<tr>
			<th>Sid</th>
			<th>Sname</th>
			<th>Phone</th>
			<th>Email</th>
			<th>City</th>
			<th>Gender</th>
			<th>Sem</th>
			<th>Course</th>
			<th>Domain</th>
			<th colspan="2">Action</th>
		</tr>

		<c:forEach var="s" items="${students}">
			<tr>
				<td>${s.getSid() }</td>
				<td>${s.getSname() }</td>
				<td>${s.getPhone() }</td>
				<td>${s.getEmail() }</td>
				<td>${s.getCity() }</td>
				<td>${s.getGender() }</td>
				<td>${s.getSem() }</td>
				<td>${s.getCourse() }</td>
				<td>${s.getIntDomain() }</td>
				<td><a href="updatepage?id=${s.getSid() }"><button>Update</button></a></td>
				<td><a href="delete?id=${s.getSid() }"><button>Delete</button></a></td>
			</tr>
		</c:forEach>

	</table>

	<script type="text/javascript">
		const msgEle = document.getElementById("msg");
		console.log(msgEle);
		
		setTimeout(() => {
			msgEle.style.display = "none";
		}, 3000);
	</script>

</body>
</html>
