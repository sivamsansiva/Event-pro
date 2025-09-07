<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Update User</title>
	<link rel="stylesheet" href="style/formStyle.css">
</head>
<body>
	<h2>Update User</h2>
	
	<form action="UserController" method="post">
		<input type="hidden" name="action" value="update">

		<label for="user_id">User ID:</label>
		<input type="text" id="user_id" name="user_id" required>

		

		<label for="user_fullName">Full Name:</label>
		<input type="text" id="user_fullName" name="user_fullName" required>

		<label for="user_email">Email:</label>
		<input type="text" id="user_email" name="user_email" required>

		<label for="user_phone">Phone:</label>
		<input type="text" id="user_phone" name="user_phone" required>

		<label for="user_address">Address:</label>
		<input type="text" id="user_address" name="user_address" required>

		<label for="user_gender">Gender:</label>
		<select id="user_gender" name="user_gender" required>
			<option value="Male">Male</option>
			<option value="Female">Female</option>
			<option value="Other">Other</option>
		</select>

		<input type="submit" value="Update User">
	</form>

	<a href="manage-users.jsp">Back to User List</a>
</body>
</html>
