package edu.hexa.seungbae.domain;

public class MainPageProjectDTO {
	String pname;
	String district;
	
	public MainPageProjectDTO(String pname, String district) {
		super();
		this.pname = pname;
		this.district = district;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}
		
}
