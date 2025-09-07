<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Teams</title>
<link rel="stylesheet" href="style/manageStyle.css">
</head>
<body>

<h2>EventPro Teams</h2>

<c:if test="${not empty message}">
    <div class="success-msg">${message}</div>
</c:if>

<a href="create-team.jsp" class="create-btn">Create New Team</a>

<div class="package-container">
    <c:forEach var="team" items="${teamList}">
        <div class="package-card">
            <div class="package-info">
                <p><span class="label">Team ID:</span> <c:out value="${team.teamId}"/></p>
                <p><span class="label">Team Name:</span> <c:out value="${team.teamName}"/></p>
                <p><span class="label">Number of Workers:</span> <c:out value="${team.noOfWorkers}"/></p>
                <p><span class="label">Booking ID:</span> <c:out value="${team.booking_id}"/></p>
                <p><span class="label">Assigned By:</span> <c:out value="${team.assigned_by}"/></p>
            </div>
            <div class="actions">
                <a href="update-team.jsp
                    ?team_id=${team.teamId}
                    &team_name=${team.teamName}
                    &no_of_workers=${team.noOfWorkers}
                    &booking_id=${team.booking_id}
                    &assigned_by=${team.assigned_by}">
                    Edit
                </a>
                <form action="TeamController" method="post" onsubmit="return confirm('Are you sure you want to delete this team?')">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="team_id" value="${team.teamId}">
                    <input type="submit" value="Delete">
                </form>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
