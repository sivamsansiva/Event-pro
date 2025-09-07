package controller;

import dao.ComplaintDAO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Complaint;

import java.io.IOException;
import java.util.List;

@WebServlet("/ViewComplaints")
public class ComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ComplaintDAO complaintDAO;

	@Override
	public void init() throws ServletException {
		try {
			complaintDAO = new ComplaintDAO();
		} catch (Exception e) {
			throw new ServletException("ComplaintDAO initialization failed", e);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    try {
	        List<Complaint> complaints = complaintDAO.getAllComplaints();
	        System.out.println("Loaded " + complaints.size() + " complaints");  // Debug line
	        request.setAttribute("complaints", complaints);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("view-complaints.jsp");
	        dispatcher.forward(request, response);
	    } catch (Exception e) {
	        e.printStackTrace();  // This goes to the console/log
	        response.sendError(500, "Failed to load complaint details: " + e.getMessage());
	    }
	}

}
