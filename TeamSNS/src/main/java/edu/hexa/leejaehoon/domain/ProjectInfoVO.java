package edu.hexa.leejaehoon.domain;

import java.util.Date;

public class ProjectInfoVO {
   private String pid;
   private String pname;
   private String category;
   private Date start;
   private Date end;
   private String intro;
   private String district;
   private String meeting_area;
   private String team_id;
   private String uid;
   private String rbno;
   public ProjectInfoVO(){}

   
   

   public ProjectInfoVO(String pname, String category, Date start, Date end, String intro,String rbno) {
	
	this.pname = pname;
	this.category = category;
	this.start = start;
	this.end = end;
	this.intro = intro;
	this.rbno=rbno;
}

public String getRbno() {
	return rbno;
}




public void setRbno(String rbno) {
	this.rbno = rbno;
}




public String getPid() {
      return pid;
   }

   public void setPid(String pid) {
      this.pid = pid;
   }

   public String getPname() {
      return pname;
   }

   public void setPname(String pname) {
      this.pname = pname;
   }

   public String getCategory() {
      return category;
   }

   public void setCategory(String category) {
      this.category = category;
   }

   public Date getStart() {
      return start;
   }

   public void setStart(Date start) {
      this.start = start;
   }

   public Date getEnd() {
      return end;
   }

   public void setEnd(Date end) {
      this.end = end;
   }

   public String getIntro() {
      return intro;
   }

   public void setIntro(String intro) {
      this.intro = intro;
   }

   public String getDistrict() {
      return district;
   }

   public void setDistrict(String district) {
      this.district = district;
   }

   public String getMeeting_area() {
      return meeting_area;
   }

   public void setMeeting_area(String meeting_area) {
      this.meeting_area = meeting_area;
   }

   public String getTeam_id() {
      return team_id;
   }

   public void setTeam_id(String team_id) {
      this.team_id = team_id;
   }

}
