package controller;

import dao.BookingDAO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Booking;

import java.io.IOException;
import java.util.List;

@WebServlet("/ViewBookings")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BookingDAO bookingDAO;

	@Override
	public void init() throws ServletException {
		try {
			bookingDAO = new BookingDAO();
		} catch (Exception e) {
			throw new ServletException("BookingDAO initialization failed", e);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			List<Booking> bookings = bookingDAO.getAllBookings();
			request.setAttribute("bookings", bookings);
			RequestDispatcher dispatcher = request.getRequestDispatcher("view-bookings.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendError(500, "Failed to load booking details");
		}
	}
}
