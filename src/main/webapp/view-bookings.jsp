<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Booking" %>
<%@ page import="java.util.List" %>
<%
	List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Complaints</title>
    <link rel="stylesheet" href="style/manageStyle.css">
</head>
<body>
    <%@ include file="admin-nav.jsp" %>

    <h2>EventPro Bookings</h2>

    <div class="booking-container">
        <%
                        if (bookings != null && !bookings.isEmpty()) {
                            for (Booking b : bookings) {
                    %>
                <div class="booking-card">
                    <div class="booking-info">
					    <p><span class="label">Complaint ID:</span> <span class="value"><%= b.getBookingId() %></span></p>
					    <p><span class="label">User ID:</span> <span class="value"><%= b.getCustomerId() %></span></p>
					    <p><span class="label">Complaint Text:</span> <span class="value"><%= b.getPackageId() %></span></p>
					    <p><span class="label">Status:</span> <span class="value"><%= b.getPackageName() %></span></p>
					    <p><span class="label">Submitted At:</span> <span class="value"><%= b.getAttendeeCount() %></span></p>
					    <p><span class="label">Complaint Text:</span> <span class="value"><%= b.getPackageVenue() %></span></p>
					    <p><span class="label">Status:</span> <span class="value"><%= b.getPaymentStatus() %></span></p>
					    <p><span class="label">Submitted At:</span> <span class="value"><%= b.getBookingDate() %></span></p>
					</div>
                </div>
        <%  }
           } else { %>
            <div class="no-data">No Bookings found.</div>
        <% } %>
    </div>
</body>
</html>
