package model;

public class Package {
	private int package_id;
	private String package_name;
	private int attendee_count;
	private int package_venue;
	private int package_creator;
	private double package_cost;

	public int getPackage_id() {
		return package_id;
	}

	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}

	public String getPackage_name() {
		return package_name;
	}

	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}

	public int getAttendee_count() {
		return attendee_count;
	}

	public void setAttendee_count(int attendee_count) {
		this.attendee_count = attendee_count;
	}

	public int getPackage_venue() {
		return package_venue;
	}

	public void setPackage_venue(int package_venue) {
		this.package_venue = package_venue;
	}

	public int getPackage_creator() {
		return package_creator;
	}

	public void setPackage_creator(int package_creator) {
		this.package_creator = package_creator;
	}

	public double getPackage_cost() {
		return package_cost;
	}

	public void setPackage_cost(double package_cost) {
		this.package_cost = package_cost;
	}

}
