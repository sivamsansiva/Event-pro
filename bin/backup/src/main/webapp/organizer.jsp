<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Complaint, model.Booking, model.Team" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Organizer Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #121212;
            color: #FFFFFF;
            padding-top: 80px;
        }

        /* Navigation Bar */
        .top-nav {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #1E1E1E;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 15px 2%;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.6);
            z-index: 1000;
        }

        .top-nav .brand {
            font-size: 1.8rem;
            font-weight: bold;
            color: #BB86FC;
        }

        .top-nav ul {
            display: flex;
            list-style: none;
            flex: 1;
            justify-content: center;
        }

        .top-nav ul li {
            margin: 0 12px;
        }

        .top-nav ul li a {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #FFFFFF;
            text-decoration: none;
            padding: 8px 16px;
            border-radius: 20px;
            font-size: 1rem;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .top-nav ul li a:hover {
            background-color: rgba(187, 134, 252, 0.1);
            color: #BB86FC;
            transform: scale(1.05);
        }

        .top-nav ul li a.active {
            background-color: #BB86FC;
            color: #121212;
        }

        /* Cards & Tables */
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }

        h1, h2 {
            color: #FFFFFF;
            margin-bottom: 15px;
        }

        .card {
            background-color: #1E1E1E;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.4);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #333;
            text-align: left;
        }

        th {
            background-color: #272727;
            color: #BB86FC;
        }

        tr:hover {
            background-color: #2A2A2A;
        }

        a, button {
            color: #03DAC6;
            background: none;
            border: none;
            cursor: pointer;
            text-decoration: underline;
        }

        a:hover, button:hover {
            color: #CF6679;
        }

        /* Responsive */
        @media (max-width: 992px) {
            .top-nav {
                flex-direction: column;
                align-items: flex-start;
            }

            .top-nav ul {
                flex-direction: column;
                width: 100%;
                display: none;
            }
        }
    </style>
</head>
<body>
    <header>
        <nav class="top-nav" id="topNav">
            <div class="brand"><i class="fas fa-calendar-check"></i> EventPro</div>
            <ul>
                <li><a href="${pageContext.request.contextPath}/OrganizerController" class="active"><i class="fas fa-chart-line"></i> Dashboard</a></li>
                <li><a href="${pageContext.request.contextPath}/features.jsp"><i class="fas fa-reply"></i> Send Reply</a></li>
                <li><a href="${pageContext.request.contextPath}/TeamController"><i class="fas fa-users"></i> Manage Teams</a></li>
                <li><a href="${pageContext.request.contextPath}/ViewBookings"><i class="fa fa-book"></i> Bookings</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <h1>Organizer Dashboard</h1>

        <!-- Complaints Section -->
        <div class="card">
            <h2>Complaints</h2>
            <table>
                <tr>
                    <th>ID</th>
                    <th>User ID</th>
                    <th>Text</th>
                    <th>Status</th>
                    <th>Complained At</th>
                </tr>
                <%
                    List<Complaint> complaints = (List<Complaint>) request.getAttribute("complaints");
                    if (complaints != null) {
                        for (Complaint c : complaints) {
                %>
                <tr>
                    <td><%= c.getComplaint_id() %></td>
                    <td><%= c.getUser_id() %></td>
                    <td><%= c.getComplaint_text() %></td>
                    <td><%= c.getComplaint_status() %></td>
                    <td><%= c.getComplaint_at() %></td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>

        <!-- Bookings Section -->
        <div class="card">
            <h2>Bookings</h2>
            <table>
                <tr>
                    <th>Booking ID</th>
                    <th>Customer ID</th>
                    <th>Package ID</th>
                    <th>Package Name</th>
                    <th>Attendees</th>
                    <th>Venue</th>
                    <th>Payment Status</th>
                    <th>Booking Date</th>
                </tr>
                <%
                    List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");
                    if (bookings != null) {
                        for (Booking b : bookings) {
                %>
                <tr>
                    <td><%= b.getBookingId() %></td>
                    <td><%= b.getCustomerId() %></td>
                    <td><%= b.getPackageId() %></td>
                    <td><%= b.getPackageName() %></td>
                    <td><%= b.getAttendeeCount() %></td>
                    <td><%= b.getPackageVenue() %></td>
                    <td><%= b.getPaymentStatus() %></td>
                    <td><%= b.getBookingDate() %></td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>

        <!-- Teams Section -->
        <div class="card">
            <h2>Teams</h2>
                <a href="${pageContext.request.contextPath}/create_team.jsp" 
       style=" 
       		position: right;
       		top: 20px; 
       		right: 20px; 
       		background-color: #BB86FC; 
       		color: #121212; 
       		padding: 8px 14px; 
       		border-radius: 8px; 
       		text-decoration: none; 
       		font-weight: bold;">
       + Add Team
    </a>
            <table>
                <tr>
                    <th>Team ID</th>
                    <th>Team Name</th>
                    <th>Workers</th>
                    <th>Booking ID</th>
                    <th>Assigned By</th>
                </tr>
                <%
                    List<Team> teams = (List<Team>) request.getAttribute("teams");
                    if (teams != null) {
                        for (Team t : teams) {
                %>
                <tr>
                    <td><%= t.getTeamId() %></td>
                    <td><%= t.getTeamName() %></td>
                    <td><%= t.getNoOfWorkers() %></td>
                    <td><%= t.getBooking_id() %></td>
                    <td><%= t.getAssigned_by() %></td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>
    </div>

    <script>
        const topNav = document.getElementById('topNav');
        window.addEventListener('scroll', () => {
            if (window.scrollY > 50) {
                topNav.classList.add('scrolled');
            } else {
                topNav.classList.remove('scrolled');
            }
        });

        const navItems = document.querySelectorAll('.top-nav ul li a');
        navItems.forEach(item => {
            item.addEventListener('click', () => {
                navItems.forEach(nav => nav.classList.remove('active'));
                item.classList.add('active');
            });
        });
    </script>
</body>
</html>
