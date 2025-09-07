<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Complaint" %>
<%@ page import="java.util.List" %>
<%
    List<Complaint> complaints = (List<Complaint>) request.getAttribute("complaints");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Complaints</title>
	<link rel="stylesheet" href="style/manageStyle.css">
</head>
<body>
    <%@include file="admin-nav.jsp"%>

    <h2>EventPro Complaints</h2>

    <div class="booking-container">
        <% if (complaints != null && !complaints.isEmpty()) {
            for (Complaint complaint : complaints) { %>
                <div class="booking-card">
                    <div class="booking-info">
                        <p><span class="label">A</span> <span class="value"><%= complaint.getComplaint_id() %></span></p>
                        <p><span class="label">B</span> <span class="value"><%= complaint.getUser_id() %></span></p>
                        <p><span class="label">C</span> <span class="value"><%= complaint.getComplaint_text() %></span></p>
                        <p><span class="label">D</span> <span class="value"><%= complaint.getComplaint_status() %></span></p>
                        <p><span class="label">E</span> <span class="value"><%= complaint.getComplaint_at() %></span></p>
                    </div>
                </div>
        <%  }
           } else { %>
            <div class="no-data">No complaints found.</div>
        <% } %>
    </div>
</body>
</html>
