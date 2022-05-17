package com.tortBook.dto;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="report")
public class Report {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	long report_no;
	long u_id;
	String uName;
	String informantName;
	String suspectName;
	String iDate;
	String place;
	String description;
	String image;
	
	
	 @ManyToOne
	    @JoinColumn(name="r")
	    private Report report;
	
	public Report getReport() {
		return report;
	}
	public void setReport(Report report) {
		this.report = report;
	}
	
	
	
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public long getReport_no() {
		return report_no;
	}
	public void setReport_no(long report_no) {
		this.report_no = report_no;
	}
	public String getInformantName() {
		return informantName;
	}
	public void setInformantName(String informantName) {
		this.informantName = informantName;
	}
	public String getSuspectName() {
		return suspectName;
	}
	public void setSuspectName(String suspectName) {
		this.suspectName = suspectName;
	}
	
	public String getiDate() {
		return iDate;
	}
	public void setiDate(String iDate) {
		this.iDate = iDate;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public long getU_id() {
		return u_id;
	}
	public void setU_id(long u_id) {
		this.u_id = u_id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	
	
}
