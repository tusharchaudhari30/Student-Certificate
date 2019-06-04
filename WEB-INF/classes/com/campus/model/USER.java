package com.campus.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class USER {
	@Id
	@Column(name="USER_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int USER_ID;
	private String USER_NAME;
	private String PASSWORD;
	private Integer MOBILE_NUMBER;
	private int MODIFIED_BY;
	private String FIRST_NAME;
	private String LAST_NAME;
	private String EMAIL_ID;
	private String USER_ROLE;
	private Date CREATED_DATE;
	
	
	public Date getCREATED_DATE() {
		return CREATED_DATE;
	}

	public void setCREATED_DATE(Date cREATED_DATE) {
		CREATED_DATE = cREATED_DATE;
	}

	
	
	@Override
	public String toString() {
		return "USER [USER_ID=" + USER_ID + ", USER_NAME=" + USER_NAME + ", PASSWORD=" + PASSWORD + ", MOBILE_NUMBER="
				+ MOBILE_NUMBER + ", MODIFIED_BY=" + MODIFIED_BY + ", FIRST_NAME=" + FIRST_NAME + ", LAST_NAME="
				+ LAST_NAME + ", EMAIL_ID=" + EMAIL_ID + ", USER_ROLE=" + USER_ROLE + ", CREATED_DATE=" + CREATED_DATE
				+ "]";
	}

	public int getMODIFIED_BY() {
		return MODIFIED_BY;
	}

	public void setMODIFIED_BY(int mODIFIED_BY) {
		MODIFIED_BY = mODIFIED_BY;
	}

	public int getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(int uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	
	public Integer getMOBILE_NUMBER() {
		return MOBILE_NUMBER;
	}
	public void setMOBILE_NUMBER(Integer mOBILE_NUMBER) {
		MOBILE_NUMBER = mOBILE_NUMBER;
	}
	public String getFIRST_NAME() {
		return FIRST_NAME;
	}
	public void setFIRST_NAME(String fIRST_NAME) {
		FIRST_NAME = fIRST_NAME;
	}
	public String getLAST_NAME() {
		return LAST_NAME;
	}
	public void setLAST_NAME(String lAST_NAME) {
		LAST_NAME = lAST_NAME;
	}
	public String getEMAIL_ID() {
		return EMAIL_ID;
	}
	public void setEMAIL_ID(String eMAIL_ID) {
		EMAIL_ID = eMAIL_ID;
	}
	public String getUSER_ROLE() {
		return USER_ROLE;
	}
	public void setUSER_ROLE(String uSER_ROLE) {
		USER_ROLE = uSER_ROLE;
	}
	
	
	/*
	 * CREATE TABLE `user` (
	`USER_ID` INT(11) NOT NULL AUTO_INCREMENT,
	`PASSWORD` VARCHAR(60) NULL DEFAULT NULL,
	`USER_NAME` VARCHAR(50) NULL DEFAULT NULL,
	`MOBILE_NUMBER` INT(10) NULL DEFAULT NULL,
	`FIRST_NAME` VARCHAR(45) NULL DEFAULT NULL,
	`LAST_NAME` VARCHAR(45) NULL DEFAULT NULL,
	`EMAIL_ID` VARCHAR(90) NOT NULL,
	`USER_ROLE` VARCHAR(20) NULL DEFAULT NULL,
	`CREATED_DATE` DATE NULL DEFAULT NULL,
	`MODIFIED_BY` INT(11) NULL DEFAULT NULL,
	`MODIFIED_DATE` DATE NULL DEFAULT NULL,
	PRIMARY KEY (`USER_ID`)
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
AUTO_INCREMENT=13
;
	 * 
	 * 
	 */
}
