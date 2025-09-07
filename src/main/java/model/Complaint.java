package model;

import java.sql.Timestamp;

public class Complaint {
	private int complaint_id;
	private int user_id;
	private String complaint_text;
	private String complaint_status;
	private Timestamp complaint_at;

	public int getComplaint_id() {
		return complaint_id;
	}

	public void setComplaint_id(int complaint_id) {
		this.complaint_id = complaint_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getComplaint_text() {
		return complaint_text;
	}

	public void setComplaint_text(String complaint_text) {
		this.complaint_text = complaint_text;
	}

	public String getComplaint_status() {
		return complaint_status;
	}

	public void setComplaint_status(String complaint_status) {
		this.complaint_status = complaint_status;
	}

	public Timestamp getComplaint_at() {
		return complaint_at;
	}

	public void setComplaint_at(Timestamp complaint_at) {
		this.complaint_at = complaint_at;
	}
}