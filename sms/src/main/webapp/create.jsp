<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Student</title>
<style type="text/css">
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
	/* border: red 2px solid; */
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

.d1>form{
	width: 500px;
	height: 500px;
	background-color: transparent;
	border: #000 4px solid; 
}
</style>

</head>
<body>
	
	<center>
		<a href="createpage"><button>Create Student</button></a>
		<a href="allstudents"><button>View All Students</button></a>
		<a href="search.jsp"><button>Search Student</button></a>
	</center>

	<h1>${msg}</h1>
	<h1>Create Student...</h1>
	
	<form action="save" method="post">
		<input type="text" name="sname" placeholder="Enter Sname" required><br><br>
		<input type="email" name="email" placeholder="Enter Email" required><br><br>
		<input type="tel" name="phone" placeholder="Enter Phone" required><br><br>
		<input type="text" name="city" placeholder="Enter City" required><br><br>
		<input type="text" name="gender" placeholder="Enter Gender" required><br><br>
		<input type="text" name="sem" placeholder="Enter Sem" required><br><br>
		<input type="text" name="course" placeholder="Enter Course" required><br><br>
		<input type="text" name="intDomain" placeholder="Enter Domain" required><br><br>
		<button type="submit">Save</button>
	</form>
	
</body>
</html>
