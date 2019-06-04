package com.campus.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {
	@Id
	//from student creation
	@Column(name = "enroll_no", nullable = false)
	private int enroll_no;
	String first_name;
	String middle_name;
	String last_name;
	String mother_name;
	String parent_name;
	String nationality;
	String place_of_birth;
	String last_institute;
	String cast;
	String subcast;
	String gender;
	String branch;
	Date admission_date;
	Date date_of_birth;
	int Modified_by;
	//from certificate creation
	int LC;
	int bonafide;
	String progress;
	String conduct;
	String result_leave;
	String reason_leave;
	int current_year;
	Date date_of_leave;
	
	// getter and setters
	
	public int getEnroll_no() {
		return enroll_no;
	}
	public int getModified_by() {
		return Modified_by;
	}
	public void setModified_by(int modified_by) {
		Modified_by = modified_by;
	}
	public int getLC() {
		return LC;
	}
	public void setLC(int lC) {
		LC = lC;
	}
	public int getBonafide() {
		return bonafide;
	}
	public void setBonafide(int bonafide) {
		this.bonafide = bonafide;
	}
	public Date getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public void setEnroll_no(int enroll_no) {
		this.enroll_no = enroll_no;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getMiddle_name() {
		return middle_name;
	}
	public void setMiddle_name(String middle_name) {
		this.middle_name = middle_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getMother_name() {
		return mother_name;
	}
	public void setMother_name(String mother_name) {
		this.mother_name = mother_name;
	}
	public String getParent_name() {
		return parent_name;
	}
	public void setParent_name(String parent_name) {
		this.parent_name = parent_name;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getPlace_of_birth() {
		return place_of_birth;
	}
	public void setPlace_of_birth(String place_of_birth) {
		this.place_of_birth = place_of_birth;
	}
	public String getLast_institute() {
		return last_institute;
	}
	public void setLast_institute(String last_institute) {
		this.last_institute = last_institute;
	}
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
	public String getSubcast() {
		return subcast;
	}
	public void setSubcast(String subcast) {
		this.subcast = subcast;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public String getConduct() {
		return conduct;
	}
	public void setConduct(String conduct) {
		this.conduct = conduct;
	}
	public String getResult_leave() {
		return result_leave;
	}
	public void setResult_leave(String result_leave) {
		this.result_leave = result_leave;
	}
	public String getReason_leave() {
		return reason_leave;
	}
	public void setReason_leave(String reason_leave) {
		this.reason_leave = reason_leave;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	public int getCurrent_year() {
		return current_year;
	}
	public void setCurrent_year(int current_year) {
		this.current_year = current_year;
	}
	public Date getAdmission_date() {
		return admission_date;
	}
	public void setAdmission_date(Date admission_date) {
		this.admission_date = admission_date;
	}
	public Date getDate_of_leave() {
		return date_of_leave;
	}
	public void setDate_of_leave(Date date_of_leave) {
		this.date_of_leave = date_of_leave;
	}
	//toString method
	@Override
	public String toString() {
		return "Student [enroll_no=" + enroll_no + ", first_name=" + first_name + ", middle_name=" + middle_name
				+ ", last_name=" + last_name + ", mother_name=" + mother_name + ", parent_name=" + parent_name
				+ ", nationality=" + nationality + ", place_of_birth=" + place_of_birth + ", last_institute="
				+ last_institute + ", cast=" + cast + ", subcast=" + subcast + ", gender=" + gender + ", branch="
				+ branch + ", admission_date=" + admission_date + ", date_of_birth=" + date_of_birth + ", Modified_by="
				+ Modified_by + ", LC=" + LC + ", bonafide=" + bonafide + ", progress=" + progress + ", conduct="
				+ conduct + ", result_leave=" + result_leave + ", reason_leave=" + reason_leave + ", current_year="
				+ current_year + ", date_of_leave=" + date_of_leave + "]";
	}
	
	
	
	
	
	
	
	

}
/*CREATE TABLE `student` (
	`enroll_no` INT(10) NOT NULL,
	`first_name` VARCHAR(20) NULL DEFAULT NULL,
	`middle_name` VARCHAR(20) NULL DEFAULT NULL,
	`last_name` VARCHAR(20) NULL DEFAULT NULL,
	`mother_name` VARCHAR(50) NULL DEFAULT NULL,
	`parent_name` VARCHAR(50) NULL DEFAULT NULL,
	`nationality` VARCHAR(50) NULL DEFAULT NULL,
	`place_of_birth` VARCHAR(50) NULL DEFAULT NULL,
	`last_institute` VARCHAR(50) NULL DEFAULT NULL,
	`cast` VARCHAR(50) NULL DEFAULT NULL,
	`subcast` VARCHAR(50) NULL DEFAULT NULL,
	`progress` VARCHAR(250) NULL DEFAULT NULL,
	`conduct` VARCHAR(250) NULL DEFAULT NULL,
	`result_leave` VARCHAR(50) NULL DEFAULT NULL,
	`reason_leave` VARCHAR(250) NULL DEFAULT NULL,
	`gender` VARCHAR(10) NULL DEFAULT NULL,
	`branch` VARCHAR(20) NULL DEFAULT NULL,
	`current_year` VARCHAR(10) NULL DEFAULT NULL,
	`admission_date` DATE NULL DEFAULT NULL,
	`date_of_leave` DATE NULL DEFAULT NULL,
	`date_of_birth` DATE NULL DEFAULT NULL,
	`bonafide` INT(11) NULL DEFAULT NULL,
	`LC` INT(11) NULL DEFAULT NULL,
	`Modified_by` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`enroll_no`)
)
COMMENT='student database of collage'
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;


 */
