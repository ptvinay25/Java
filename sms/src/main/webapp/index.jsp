<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
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


*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#f4f6fb;
}

/* Navbar */
nav{
    background:#2b3a67;
    color:white;
    padding:15px 40px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

nav h1{
    font-size:26px;
}

nav ul{
    list-style:none;
    display:flex;
    gap:25px;
}

nav ul li{
    cursor:pointer;
    font-weight:bold;
}

nav ul li:hover{
    color:#ffd166;
}

/* Hero section */
.hero{
    height:70vh;
    background:linear-gradient(rgba(0,0,0,0.55),rgba(0,0,0,0.55)),
    url("https://images.unsplash.com/photo-1523240795612-9a054b0db644");
    background-size:cover;
    background-position:center;
    color:white;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    text-align:center;
    padding:20px;
}

.hero h2{
    font-size:48px;
    margin-bottom:20px;
}

.hero p{
    max-width:700px;
    font-size:18px;
    margin-bottom:25px;
}

.btn{
    padding:12px 25px;
    background:#ffd166;
    color:black;
    text-decoration:none;
    font-weight:bold;
    border-radius:5px;
}

.btn:hover{
    background:#ffb703;
}

/* Features */
.features{
    padding:60px 40px;
    text-align:center;
}

.features h2{
    margin-bottom:40px;
    font-size:32px;
    color:#2b3a67;
}

.cards{
    display:flex;
    flex-wrap:wrap;
    gap:25px;
    justify-content:center;
}

.card{
    background:white;
    width:300px;
    padding:25px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

.card h3{
    color:#2b3a67;
    margin-bottom:15px;
}

/* About */
.about{
    background:#2b3a67;
    color:white;
    padding:60px 40px;
    text-align:center;
}

.about p{
    max-width:800px;
    margin:auto;
    line-height:1.7;
}

/* Footer */
footer{
    background:#111;
    color:white;
    text-align:center;
    padding:15px;
}

</style>

</head>
<body>

	<center>
		
		<a href="allstudents"> <button>View All Students</button> </a>
		<a href="search.jsp"> <button>Search Student</button> </a>
	</center>

<nav>
    <h1>SMS Portal</h1>
    <ul>
        <li>Home</li>
        <li>Students</li>
        <li>Teachers</li>
        <li>Courses</li>
        <li>Contact</li>
    </ul>
</nav>

<section class="hero">
    <h2>Student Management System</h2>
    <p>
        A smart and simple platform to manage students, teachers, courses, attendance,
        and academic performance in one place.
    </p>
    <a href="#" class="btn">Get Started</a>
</section>

<section class="features">
    <h2>System Features</h2>
    <div class="cards">
        <div class="card">
            <h3>Student Records</h3>
            <p>Store and manage student profiles, admissions, and academic history easily.</p>
            <a href="createpage"> <button>Create Student</button> </a>
        </div>

        <div class="card">
            <h3>Attendance Tracking</h3>
            <p>Monitor attendance with automated reports and real-time tracking.</p>
        </div>

        <div class="card">
            <h3>Performance Reports</h3>
            <p>Generate grades, marksheets and performance analytics instantly.</p>
        </div>

        <div class="card">
            <h3>Teacher Management</h3>
            <p>Organize staff details, schedules and subject assignments.</p>
        </div>

        <div class="card">
            <h3>Course Management</h3>
            <p>Manage subjects, syllabus, and class schedules efficiently.</p>
        </div>

        <div class="card">
            <h3>Secure Dashboard</h3>
            <p>Role-based login for admin, teachers and students.</p>
        </div>
    </div>
</section>

<section class="about">
    <h2>About the System</h2>
    <p>
        The Student Management System helps educational institutions streamline daily
        operations and improve communication between students, teachers, and
        administration. It reduces paperwork and makes academic data easily accessible.
    </p>
</section>

<footer>
    © 2026 Student Management System | All Rights Reserved
</footer>
	
	
</body>
</html>