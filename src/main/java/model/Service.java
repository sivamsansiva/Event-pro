package model;

public class Service {
	private String service_id;
	private String service_name;
	private String service_description;
	private double service_price;
	private String service_image;

	public String getService_id() {
		return service_id;
	}

	public void setService_id(String service_id) {
		this.service_id = service_id;
	}

	public String getService_name() {
		return service_name;
	}

	public void setService_name(String service_name) {
		this.service_name = service_name;
	}

	public String getService_description() {
		return service_description;
	}

	public void setService_description(String service_description) {
		this.service_description = service_description;
	}

	public double getService_price() {
		return service_price;
	}

	public void setService_price(double service_price) {
		this.service_price = service_price;
	}

	public String getService_image() {
		return service_image;
	}

	public void setService_image(String service_image) {
		this.service_image = service_image;
	}

}
