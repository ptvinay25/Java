<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
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
	/* background-color: #000;
	border: red 2px solid; */
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
</style>

</head>
<body>

	<center>
		<a href="createpage">
			<button>Create User</button>
		</a> <a href="allusers">
			<button>View All User</button>
		</a> <a href="search.jsp">
			<button>Search User</button>
		</a>
	</center>

	<h1>${msg }</h1>

	<h1>Update User...</h1>

	<!-- Update Student Form -->
	<form action="update" method="post">
		Id: <input type="text" name="sid" value="${s.sid}" readonly />  <br>
		Name: <input type="text" name="sname" value="${s.sname}" required /><br>
		Phone: <input type="tel" name="phone" value="${s.phone}" required /><br>
		Email: <input type="email" name="email" value="${s.email}" required /><br>
		City: <input type="text" name="city" value="${s.city}" required /><br>
		Gender: <input type="text" name="gender" value="${s.gender}" required /><br>
		Sem: <input type="text" name="sem" value="${s.sem}" required /><br>
		Course: <input type="text" name="course" value="${s.course}" required /><br>
		Domain: <input type="text" name="intDomain" value="${s.intDomain}"	required /><br>
		<input type="submit" value="Update" />
	</form>


</body>
</html>