<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<style>
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background-color: #121212;
	color: #FFFFFF;
}
h1 {
	background-color: #1E1E1E;
	padding: 20px;
	text-align: center;
	font-size: 28px;
	color: #BB86FC;
	font-weight: bold;
}
h2 {
	background-color: #1E1E1E;
	color: #BB86FC;
	text-align: center;
	padding: 12px;
	margin-bottom: 10px;
}
.section {
	padding: 20px 0;
	border-bottom: 1px solid #333;
}
.cards {
	display: flex;
	gap: 20px;
	flex-wrap: wrap;
	justify-content: center;
	margin: 30px 0;
}
.card {
	background: linear-gradient(90deg, #BB86FC 60%, #03DAC6 100%);
	padding: 20px;
	border-radius: 12px;
	box-shadow: 0 0 10px #333;
	flex: 1 1 200px;
	max-width: 220px;
	text-align: center;
	font-weight: bold;
	color: #121212;
}
.card:hover {
	box-shadow: 0 6px 18px rgba(187, 134, 252, 0.3);
}
.card h3 {
	color: #121212;
	padding: 10px 0;
}
</style>
</head>
<body>
	<%@include file="admin-nav.jsp"%>
	<h1>Admin Dashboard</h1>

	<div class="section" id="counts">
		<h2>System Overview</h2>
		<div class="cards">
			<div class="card">
				<h3>Services</h3>
				<p>${serviceCount}</p>
			</div>
			<div class="card">
				<h3>Packages</h3>
				<p>${packageCount}</p>
			</div>
			<div class="card">
				<h3>Venues</h3>
				<p>${venueCount}</p>
			</div>
			<div class="card">
				<h3>Users</h3>
				<p>${userCount}</p>
			</div>
		</div>
	</div>
	
</body>
</html>
