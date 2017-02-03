package edu.hexa.seungbae.domain;

import java.sql.Date;
import java.sql.Timestamp;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;

public class ProjectCardDTO {

	private String pid, category, pname, intro, district, meeting_area;
	private Date start, end;
	private String skills;
	private String title; 
	private Integer rbno, recruit_hits;
	private Timestamp rcstart, rcend;
	private String parts;
	
	//private static final Logger logger = LoggerFactory.getLogger(ProjectCardDTO.class);
	
	public ProjectCardDTO(String pid, String category, String pname, String intro, String district, String meeting_area,
			Date start, Date end, String skills, String title, Integer rbno, Integer recruit_hits, Timestamp rcstart,
			Timestamp rcend, String parts) {
		super();
		this.pid = pid;
		this.category = category;
		this.pname = pname;
		this.intro = intro;
		this.district = district;
		this.meeting_area = meeting_area;
		this.start = start;
		this.end = end;
		this.skills = skills;
		this.title = title;
		this.rbno = rbno;
		this.recruit_hits = recruit_hits;
		this.rcstart = rcstart;
		this.rcend = rcend;
		this.parts = parts;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
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

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getRbno() {
		return rbno;
	}

	public void setRbno(Integer rbno) {
		this.rbno = rbno;
	}

	public Integer getRecruit_hits() {
		if(recruit_hits == null){
			recruit_hits = 0;
		}
		return recruit_hits;
	}

	public void setRecruit_hits(Integer recruit_hits) {
		this.recruit_hits = recruit_hits;
	}

	public Timestamp getRcstart() {
		return rcstart;
	}

	public void setRcstart(Timestamp rcstart) {
		this.rcstart = rcstart;
	}

	public Timestamp getRcend() {
		return rcend;
	}

	public void setRcend(Timestamp rcend) {
		this.rcend = rcend;
	}

	public String getParts() {
		return parts;
	}

	public void setParts(String parts) {
		this.parts = parts;
	}
			
}
