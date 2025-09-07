<%@ page import="java.util.List" %>
<%@ page import="model.Booking" %>
<%@ page session="true" %>
<%
   

    List<Booking> bookings = (List<Booking>) request.getAttribute("availableBookings");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Create Team</title>
    <style>
        body { font-family: Arial; padding: 20px; background: #f0f0f0; }
        form { background: white; padding: 20px; border-radius: 8px; max-width: 500px; margin: auto; }
        input, select { width: 100%; padding: 8px; margin: 10px 0; }
        button { padding: 10px 15px; background: #4CAF50; color: white; border: none; border-radius: 5px; }
    </style>
</head>
<body>

<h2>Create New Team</h2>

<form action="CreateTeamServlet" method="post" onsubmit="return validateForm()">
    <label>Team Name:</label>
    <input type="text" name="team_name" required />

    <label>No. of Workers:</label>
    <input type="number" name="no_of_workers" min="1" required />

    <label>Select Booking:</label>
    <label>Select Booking:</label>
<select name="booking_id" required>
    <option value="">-- Select Booking --</option>
    <% for (Booking b : bookings) { %>
        <option value="<%= b.getBookingId() %>">
            Booking #<%= b.getBookingId() %> | 
            Package: <%= b.getPackageName() %> | 
            Venue: <%= b.getPackageVenue() %> | 
            Attendees: <%= b.getAttendeeCount() %> | 
            Customer ID: <%= b.getCustomerId() %>
        </option>
    <% } %>
</select>

    <button type="submit">Create Team</button>
</form>

<script>
function validateForm() {
    const workers = document.querySelector('[name="no_of_workers"]').value;
    if (workers <= 0) {
        alert("Number of workers must be greater than 0.");
        return false;
    }
    return true;
}
</script>

</body>
</html>
