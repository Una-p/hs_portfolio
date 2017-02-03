package edu.hexa.teamsns.domain;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class RequiredSkillVO {
   
   private String pid;
   private String skill_1;
   private String skill_2;
   private String skill_3;
   private String skill_4;
   private String skill_5;
   private String skill_6;
   private String skill_7;
   private String skill_8;
   private String skill_9;
   private String skill_10;
   private int rbno;
   
   private Logger logger = LoggerFactory.getLogger(RequiredSkillVO.class);
   
   public RequiredSkillVO(){
	   logger.info("RequiredSkillVO 생성");
   }

   public RequiredSkillVO(String pid, String skill_1, String skill_2, String skill_3, String skill_4, String skill_5,
         String skill_6, String skill_7, String skill_8, String skill_9, String skill_10) {
      super();
      this.pid = pid;
      this.skill_1 = skill_1;
      this.skill_2 = skill_2;
      this.skill_3 = skill_3;
      this.skill_4 = skill_4;
      this.skill_5 = skill_5;
      this.skill_6 = skill_6;
      this.skill_7 = skill_7;
      this.skill_8 = skill_8;
      this.skill_9 = skill_9;
      this.skill_10 = skill_10;
      logger.info("RequiredSkillVO 생성 with parameter");
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

   public String getSkill_1() {
      return skill_1;
   }

   public void setSkill_1(String skill_1) {
      this.skill_1 = skill_1;
   }

   public String getSkill_2() {
      return skill_2;
   }

   public void setSkill_2(String skill_2) {
      this.skill_2 = skill_2;
   }

   public String getSkill_3() {
      return skill_3;
   }

   public void setSkill_3(String skill_3) {
      this.skill_3 = skill_3;
   }

   public String getSkill_4() {
      return skill_4;
   }

   public void setSkill_4(String skill_4) {
      this.skill_4 = skill_4;
   }

   public String getSkill_5() {
      return skill_5;
   }

   public void setSkill_5(String skill_5) {
      this.skill_5 = skill_5;
   }

   public String getSkill_6() {
      return skill_6;
   }

   public void setSkill_6(String skill_6) {
      this.skill_6 = skill_6;
   }

   public String getSkill_7() {
      return skill_7;
   }

   public void setSkill_7(String skill_7) {
      this.skill_7 = skill_7;
   }

   public String getSkill_8() {
      return skill_8;
   }

   public void setSkill_8(String skill_8) {
      this.skill_8 = skill_8;
   }

   public String getSkill_9() {
      return skill_9;
   }

   public void setSkill_9(String skill_9) {
      this.skill_9 = skill_9;
   }

   public String getSkill_10() {
      return skill_10;
   }

   public void setSkill_10(String skill_10) {
      this.skill_10 = skill_10;
   }


   
}