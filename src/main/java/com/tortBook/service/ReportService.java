package com.tortBook.service;


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tortBook.dto.Report;
import com.tortBook.dto.User;
import com.tortBook.repository.ReportRepository;
import com.tortBook.repository.UserRepository;

@Service
public class ReportService {
	@Autowired
	private ReportRepository reportRepository;
	
	
	public void addReport(Report report, User vUser) {
		report.setU_id(vUser.getId());
		report.setuName(vUser.getName());
		report.setImage(vUser.getImage());
		reportRepository.save(report);
	}


	public List<Report> getListReport() {
		List<Report> reports = new ArrayList<Report>();
		reportRepository.findAll().forEach(reports::add);
		return reports;
	}


	public Report getValidReport(User vUser) {

		for (Report record : getListReport()) {
			if (record.getU_id()==vUser.getId()) {
				return record;
			}
		}
		return null;
	}


	public List<Report> getValidReportList(User vUser) {
		List<Report> list = new ArrayList<Report>();
		for (Report record : getListReport()) {
			if (record.getU_id()==vUser.getId()) {
				 list.add(record);
			}
		}
		return list;
	}


	public Report getReport(long report_no) {
		for (Report record : getListReport()) {
			if (record.getReport_no()==report_no) {
				return record;
			}
		}
		return null;

	}


	public void updateReport(User user) {
		
		for (Report record : getListReport()) {
			if (record.getU_id()==user.getId()) {
				record.setImage(user.getImage());
				record.setuName(user.getName());
				reportRepository.save(record);
				
			}
		}
	}


	public List<Report> getUserProfileReport(long report_no) {
		
		Report report = getReport(report_no);
		
		List<Report> list = new ArrayList<Report>();
		for (Report record : getListReport()) {
			if (record.getU_id()==report.getU_id()) {
				 list.add(record);
			}
		}
		return list;
	}


	

	

	public long getIdByReport_No(long report_no) {
		
		Report report = getReport(report_no);
		
		
		return report.getU_id();
	}



}
