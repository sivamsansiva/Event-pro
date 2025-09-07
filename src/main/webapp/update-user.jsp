<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Update Organizer</title>
	<link rel="stylesheet" href="style/formStyle.css">
</head>
<body>
	<h2>Update Organizer</h2>
	
	<form action="UserController" method="post">
		<input type="hidden" name="action" value="update">
		<input type="hidden" name="user_role" value="organizer">

		<label for="user_id">User ID:</label>
		<input type="text" id="user_id" name="user_id" value="${param.user_id}" readonly>



		<label for="user_fName">First Name:</label>
		<input type="text" id="user_fName" name="user_fName" value="${param.user_fName}" required>

		<label for="user_lName">Last Name:</label>
		<input type="text" id="user_lName" name="user_lName" value="${param.user_lName}" required>

		<label for="user_email">Email:</label>
		<input type="email" id="user_email" name="user_email" value="${param.user_email}" required>

		<label for="user_phone">Phone:</label>
		<input type="tel" id="user_phone" name="user_phone" value="${param.user_phone}" required>

		<label for="user_address">Address:</label>
		<input type="text" id="user_address" name="user_address" value="${param.user_address}" required>

		<label for="user_gender">Gender</label>
		<select id="user_gender" name="user_gender" required>
			<option value="Male" ${param.user_gender == 'Male' ? 'selected' : ''}>Male</option>
			<option value="Female" ${param.user_gender == 'Female' ? 'selected' : ''}>Female</option>
			<option value="Other" ${param.user_gender == 'Other' ? 'selected' : ''}>Other</option>
		</select>

		<input type="submit" value="Update Organizer">
	</form>

	<a href="manage-users.jsp">Back to User List</a>
</body>
</html>
