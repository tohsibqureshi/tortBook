package com.tortBook.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.tortBook.dto.ContactUs;
import com.tortBook.dto.Report;
import com.tortBook.dto.User;
import com.tortBook.service.ReportService;
import com.tortBook.service.UserService;

@Controller
public class CommonController {
	@Autowired
	private UserService userService;
	@Autowired
	private ReportService reportService;
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping({ "/", "/home" })
	public ModelAndView home() {
		User vUser = userService.getValidUser();
		List<Report>  rList= reportService.getListReport();
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickHome", true);
		m.addObject("title", "TORTBOOK");
		m.addObject("vUser", vUser);
		m.addObject("rList", rList);
		
		return m;
	}	

	@RequestMapping({ "/about" })
	public ModelAndView about() {
		User vUser = userService.getValidUser();
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickAbout", true);
		m.addObject("title", "About Us");
		m.addObject("vUser", vUser);
		return m;
	}
	@RequestMapping({ "/contact" })
	public ModelAndView contact() {
		User vUser = userService.getValidUser();
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickContact", true);
		m.addObject("title", "Contact Us");
		m.addObject("vUser", vUser);
		return m;
	}
	
	@RequestMapping({ "/login" })
	public ModelAndView check() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickLogin", true);
		m.addObject("title", "LogIn");
		return m;
	}
	@RequestMapping({ "/signup" })
	public ModelAndView signup() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickSignup", true);
		m.addObject("title", "Signup");
		return m;
	}
	@RequestMapping({ "/postForm" })
	public ModelAndView postForm() {
		User vUser = userService.getValidUser();
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickPostform", true);
		m.addObject("title", "Create Post");
		m.addObject("vUser", vUser);
		return m;
	}
	
	@RequestMapping({ "/addRecord" })
	public ModelAndView addRecord(User user) {
		userService.addRecord(user);
		
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickLogin", true);
		m.addObject("title", "Log In");
		m.addObject("msg", "You have successfully registered:"+"</br>"+"Now Login with your credentials:- ");
		return m;
	}
	
	@RequestMapping(value = "/addReport", method = RequestMethod.POST)
	public ModelAndView addReport(Report report) {
		
		User vUser = userService.getValidUser();
		reportService.addReport(report,vUser);
		List<Report> lReport= reportService.getValidReportList(vUser);
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickPostform", true);
		m.addObject("title", "Report Form");
		m.addObject("msg", "Your report submitted successfully :-");
		
		m.addObject("lReport", lReport);
		m.addObject("vUser", vUser);
		return m;
	}

	@RequestMapping(value = "/addmsg", method = RequestMethod.POST)
	public ModelAndView addMsg(ContactUs cuser) {
		userService.addRecord(cuser);
		
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickContact", true);
		m.addObject("title", "Contact Us");
		m.addObject("msg", "Thanks for contact us, We will help you soon-");
		return m;
	}
	
	
	@RequestMapping(value = "/checkvaliduser", method = RequestMethod.POST)
	public ModelAndView isUserExist(@RequestParam String username , @RequestParam String password) {
		
		boolean flag = false; 
		flag = userService.checkValidUser(username,password);
		List<Report>  rList= reportService.getListReport();
		User vUser = userService.getValidUser();
	//	List<Report> lReport= reportService.getValidReportList(vUser);
		if(flag)
		{
		
			ModelAndView m = new ModelAndView("index");
			m.addObject("userClickTimeline", true);
			m.addObject("title", "Your timeline");
			m.addObject("vUser", vUser);
			m.addObject("rList", rList);
	//		m.addObject("lReport", lReport);
			return m;
		}
		else {
			ModelAndView m = new ModelAndView("index");
			m.addObject("userClickLogin", true);
			m.addObject("title", "Log In");
			m.addObject("wMsg", "Please Enter Valid Username Or Password");
			return m;
			
		}
		
	}
	
		@RequestMapping(value = "/logout")
		public ModelAndView logout() {
			userService.logout();
			User vUser = userService.getValidUser();
			List<Report>  rList= reportService.getListReport();
			ModelAndView m = new ModelAndView("index");
			m.addObject("userClickHome", true);
			m.addObject("title", "TORTBOOK");
			m.addObject("vUser", vUser);
			m.addObject("rList", rList);
			
				return m;
			}
	
		@RequestMapping(value = "/mytimeline")
		public ModelAndView myTimeline() {
			User vUser = userService.getValidUser();
			List<Report>  rList= reportService.getListReport();
			List<Report> lReport= reportService.getValidReportList(vUser);
			ModelAndView m = new ModelAndView("index");
				m.addObject("userClickTimeline", true);
				m.addObject("title", "My Timeline");
				m.addObject("vUser", vUser);
				m.addObject("rList", rList);
				m.addObject("lReport", lReport);
				return m;
			}
		
		@RequestMapping(value = "/profile")
		public ModelAndView myProfile() {
			User vUser = userService.getValidUser();
			List<Report>  rList= reportService.getListReport();
			List<Report> lReport= reportService.getValidReportList(vUser);
			ModelAndView m = new ModelAndView("index");
				m.addObject("userClickProfile", true);
				m.addObject("title", "My Profile");
				m.addObject("vUser", vUser);
				m.addObject("rList", rList);
				m.addObject("lReport", lReport);
				
			
				return m;
			}
		
		@RequestMapping("/more{report_no}")
		public ModelAndView more(@PathVariable long report_no) {
			Report report=reportService.getReport(report_no);
			ModelAndView m = new ModelAndView("index");
			m.addObject("userClickMore", true);
			m.addObject("title", "Detail");
			m.addObject("report", report);
			
			return m;
		}
		@RequestMapping("/edit{id}")
		public ModelAndView edit(@PathVariable long id) {
			
			User vUser = userService.getValidUser();
			Report r= reportService.getValidReport(vUser);
			ModelAndView m = new ModelAndView("index");
			m.addObject("userClickEdit", true);
			m.addObject("title", "Update");
			m.addObject("vUser", vUser);
			m.addObject("r", r);

			return m;
		}
		
		@RequestMapping(value="/update",method=RequestMethod.POST)
		public ModelAndView update(User user,@RequestParam MultipartFile file) {
			String filename=file.getOriginalFilename();
			String realPath=request.getRealPath("/");
			String finalPath=realPath+"upload";
			System.out.println("-========="+realPath);
			System.out.println("==============="+finalPath);
			System.out.println("================"+user);
			try {
			
				BufferedOutputStream b=new BufferedOutputStream(new 
						FileOutputStream(finalPath+'/'+filename));
			b.write(file.getBytes());
			b.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(filename.isEmpty())
			{
				filename="pp.png";
			}
			user.setImage(filename);
			User vUser = userService.getValidUser();
			List<Report>  rList= reportService.getListReport();
			List<Report> lReport= reportService.getValidReportList(vUser);
			userService.addRecord(user);
			reportService.updateReport(user);
			Report r= reportService.getValidReport(vUser);
			ModelAndView m = new ModelAndView("index");
			m.addObject("userClickProfile", true);
			m.addObject("title", "Update");
			m.addObject("vUser", vUser);
			m.addObject("rList", rList);
			m.addObject("lReport", lReport);
			m.addObject("r", r);

			return m;
		}
		
		@RequestMapping("/uprofile{report_no}")
		public ModelAndView uprofile(@PathVariable long report_no) {
			ModelAndView m = new ModelAndView("index");
			long u_id = reportService.getIdByReport_No(report_no);
			
			User userProfile = userService.getUserProfile(u_id);
			User vUser = userService.getValidUser();
			List<Report>  rList= reportService.getListReport(); 
			List<Report>  lReport= reportService.getUserProfileReport(report_no);
			m.addObject("userClickUProfile", true);
			m.addObject("title", "User Profile");
			m.addObject("vUserP", userProfile);
			
			m.addObject("lReport", lReport);
			m.addObject("vUser", vUser);
			m.addObject("rList", rList);
			
			return m;
		}
}


