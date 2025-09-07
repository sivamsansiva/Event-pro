package dao;

import java.util.List;

import model.Complaint;

public class ComplaintTest {
    public static void main(String[] args) {
        try {
            ComplaintDAO dao = new ComplaintDAO();
            List<Complaint> complaints = dao.getAllComplaints();
            for (Complaint c : complaints) {
                System.out.println(c.getComplaint_id() + ": " + c.getComplaint_text());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
