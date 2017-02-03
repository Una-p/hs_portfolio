package edu.hexa.teamsns.domain;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class RecruitProjectVO {
	
   private int rbno;
   private String pid;
   private String title;
   private Date rcstart;
   private Date rcend;
   private int recruit_hits;
   private String team_id;
   
   private Logger logger = LoggerFactory.getLogger(RecruitProjectVO.class);
   
   public RecruitProjectVO(){
	   logger.info("RecruitProjectVO 생성");
   }

   public RecruitProjectVO(int rbno, String pid, String title, Date start, Date end, int recruit_hits,
         String team_id) {
	   
      this.rbno = rbno;
      this.pid = pid;
      this.title = title;
      this.rcstart = start;
      this.rcend = end;
      this.recruit_hits = recruit_hits;
      this.team_id = team_id;
      logger.info("RecruitProjectVO 생성 with parameter");
   }

   public int getRbno() {
      return rbno;
   }

   public void setRbno(int rbno) {
      this.rbno = rbno;
   }

   public String getPid() {
      return pid;
   }

   public void setPid(String pid) {
      this.pid = pid;
   }

   public String getTitle() {
      return title;
   }

   public void setTitle(String title) {
      this.title = title;
   }

   public Date getRcstart() {
      return rcstart;
   }

   public void setRcstart(Date start) {
      this.rcstart = start;
   }

   public Date getRcend() {
      return rcend;
   }

   public void setRcend(Date end) {
      this.rcend = end;
   }

   public int getRecruit_hits() {
      return recruit_hits;
   }

   public void setRecruit_hits(int recruit_hits) {
      this.recruit_hits = recruit_hits;
   }

   public String getTeam_id() {
      return team_id;
   }

   public void setTeam_id(String team_id) {
      this.team_id = team_id;
   }

}