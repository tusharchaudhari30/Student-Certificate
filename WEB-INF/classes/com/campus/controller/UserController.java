package com.campus.controller;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.campus.model.Certificate;
import com.campus.model.Count;
import com.campus.model.Student;
import com.campus.model.USER;
import com.campus.service.CertificateService;
import com.campus.service.StudentService;
import com.campus.service.UserService;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

@Controller
@SessionAttributes("user")
public class UserController {
	private UserService userService;
	private StudentService studentService;
	private CertificateService certificateService;
	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService us)
	{
		this.userService=us;
	}
	@Autowired(required=true)
	@Qualifier(value="studentService")
	public void setStudentService(StudentService ss)
	{
		this.studentService=ss;
	}
	@Autowired(required=true)
	@Qualifier(value="certificateService")
	public void setCertificateService(CertificateService cs)
	{
		this.certificateService=cs;
	}
	@RequestMapping(value="/login")
	public String login()
	{
		return"login";
	}
	
	
	
	@RequestMapping(value="/loginuser",method = RequestMethod.POST)
	public String loginuser(@RequestParam("id") String id,@RequestParam("pwd") String password,Model model)
	{
		USER u= new USER();
		String s;
		u.setUSER_ID(Integer.parseInt(id));
		u.setPASSWORD(password);
		USER p=this.userService.getUserbyid(Integer.parseInt(id));
		if(this.userService.checkUser(u))
		{
			s="redirect:/wellcome.html";
			model.addAttribute("user",p);
		}
		else
		{
			
			s="redirect:/login";
		}
		return s;
	}
	
	@RequestMapping(value="/wellcome")
	public String wellcome(Model model,@ModelAttribute("user") USER p) {
		if(p==null)
		{
			return "redirect:/login.html";
		}
		Count c=new Count();
		c.setStud_count(this.studentService.getStudentCount());
		c.setBonafide_count(this.certificateService.getBonafidecount());
		c.setLc_count(this.certificateService.getLCcount());
		model.addAttribute("count",c);
		return "wellcome";
	}
	
	@RequestMapping(value="/loginuser/createuser")
	public String createuser(Model model,@ModelAttribute("user") USER p)
	{
		if(p==null)
		{
			return "redirect:/login.html";
		}
		return "createuser";
		
	}
	@RequestMapping(value="/loginuser/logout")
	public String logoutuser(@ModelAttribute("user") USER p,Model model)
	{
		if(p==null)
		{
			return "redirect:/login.html";
		}
		model.addAttribute("user",new USER());
		
		return "redirect:/login.html";
		
	}
	@RequestMapping(value="/loginuser/updateuser")
	public String updateuser(Model model,@ModelAttribute("user") USER p)
	{
		if(p==null)
		{
			return "redirect:/login.html";
		}
		model.addAttribute("ListUsers",this.userService.listUser());
		return "updateuser";
	}
	@RequestMapping(value="/loginuser/newuser", method= RequestMethod.GET)
	public String newuser(@RequestParam("uname")String uname,@RequestParam("fname")String fname,@RequestParam("lname")String lname,@RequestParam("email")String email,@RequestParam("mnum")String mnum,@ModelAttribute("user") USER p) {
		if(p==null)
		{
			return "redirect:/login.html";
		}
		USER u=new USER();
		u.setUSER_NAME(uname);
		u.setFIRST_NAME(fname);
		u.setLAST_NAME(lname);
		u.setEMAIL_ID(email);
		u.setMODIFIED_BY(p.getUSER_ID());
		u.setUSER_ROLE("User");
		if(this.userService.createUser(u))
		{
			System.out.println("user is created");
		}
		
		return "createuser";
	}
	@RequestMapping(value="/loginuser/delete/{USER_ID}")
	public String deleteuser(@PathVariable("USER_ID")int id, Model model,@ModelAttribute("user") USER p)
	{
		if(p==null)
		{
			return "redirect:/login.html";
		}
		this.userService.removeUser(id);
		return "redirect:/loginuser/updateuser.html";
	}
	@RequestMapping(value="/loginuser/searchstudent")
	public String searchstud(Model model)
	{
		return "searchstudent";
	}
	@RequestMapping(value="/loginuser/student")
	public String editstudent(@RequestParam("enroll_num")String id,Model model)
	{
		Student s=new Student();
		s=this.studentService.getStudentByid(Integer.parseInt(id));
		if(null!=s)
		{
			model.addAttribute("student",s);
		}
		
		return"editstudent";
	}
	@RequestMapping(value="/loginuser/bonafide/find")
	public String bonafide(@RequestParam("enroll_num")String id,Model model)
	{
		Student s=new Student();
		s=this.studentService.getStudentByid(Integer.parseInt(id));
		if(null!=s)
		{
			model.addAttribute("student",s);
		}
		return "createdbonafide";
	}
	@RequestMapping(value="/loginuser/editedstudent")
	public String editedstudent(@ModelAttribute("student") Student s,@ModelAttribute("user") USER u,@RequestParam("dob")String dob,@RequestParam("doa")String doa) throws ParseException {
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		s.setDate_of_birth(formatter.parse(dob));
		s.setAdmission_date(formatter.parse(doa));
		s.setModified_by(u.getUSER_ID());
		s.setBonafide(0);
		s.setLC(0);
		this.studentService.updateStudent(s);
		return "wellcome";
	}
	@RequestMapping(value="/loginuser/createstudent")
	public String createstudent(Model model)
	{
		Student s=new Student();
		s.setEnroll_no(0);
		model.addAttribute("student",s);
		return"createstudent";
	}
	@RequestMapping(value="/loginuser/createdstudent")
	public String createdstudent(@ModelAttribute("student")Student s,Model model,@RequestParam("dob")String dob,@RequestParam("doa")String doa,@ModelAttribute("user") USER u) throws ParseException {
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		if(s!=null) {
		s.setDate_of_birth(formatter.parse(dob));
		s.setAdmission_date(formatter.parse(doa));
		s.setModified_by(u.getUSER_ID());
		this.studentService.addStudent(s);
		}
		
		return"redirect:/loginuser/studentlist.html";
	}
	@RequestMapping(value="/loginuser/bonafide")
	public String bonafide(Model model)
	{
		return"printbonafide";
	}
	@RequestMapping("/loginuser/bonafide/printnow")
	public void printbonafide(@ModelAttribute("student") Student s,HttpServletResponse res) throws JRException, IOException
	{
		InputStream inputStream = new FileInputStream("C:\\Users\\Spydi\\eclipse-workspace\\StudentCampus\\WebContent\\resources\\report\\bonafide.jrxml");
		s=this.studentService.getStudentByid(s.getEnroll_no());
		s.setBonafide(s.getBonafide()+1);
		this.studentService.updateStudent(s);
		Certificate c=new Certificate();
		Date d=new Date();
		c.setCertificate("Bonafide");
		c.setDate_time(d);
		c.setStud_id(s.getEnroll_no());
		this.certificateService.addCertificate(c);
		com.campus.model.bonafide b=new com.campus.model.bonafide();
		b.setAdmission_date(s.getAdmission_date());
		b.setBranch(s.getBranch());
		b.setCurrent_year(s.getCurrent_year());
		b.setDependent(s.getParent_name());
		b.setFirst_name(s.getFirst_name());
		b.setLast_name(s.getLast_name());
		b.setMiddle_name(s.getMiddle_name());
		b.setParent_name(s.getParent_name());
		b.setRef_no(c.getRef_no());
		b.setStud_id(c.getStud_id());
		b.setDate_time(c.getDate_time());
		if(s.getGender().equalsIgnoreCase("male"))
		{
			b.setHeshe("He");
			b.setMrms("Mr.");
		}
		else {
			b.setHeshe("She");
			b.setMrms("Ms.");
			
		}		
		JasperDesign jasperDesign = JRXmlLoader.load(inputStream);
		JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
		HashMap parameters = new HashMap();
		List bonafideList = new ArrayList();
		bonafideList.add(b);
		JRBeanCollectionDataSource beanColDataSource = new JRBeanCollectionDataSource(bonafideList);
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, beanColDataSource);
		JasperExportManager.exportReportToPdfStream(jasperPrint,res.getOutputStream());
		res.getOutputStream().flush();
		res.getOutputStream().close();		
	}
	
	@RequestMapping("/loginuser/studentlist")
	public String listuser(Model model)
	{
		model.addAttribute("Studentlist", this.studentService.listStudent());
		return "studentlist";
	}
	@RequestMapping("/lc")
	public String lc(Model model)
	{
		return"lc";
	}
	@RequestMapping("/loginuser/lcsearch")
	public String lcfind(Model model,@RequestParam("enroll_num")String id)
	{
		Student s=new Student();
		s=this.studentService.getStudentByid(Integer.parseInt(id));
		if(null!=s)
		{
			model.addAttribute("student",s);
		}
		return"lcdetail";
	}
	
	@RequestMapping("/loginuser/lc/printnow")
	public void printlc(@ModelAttribute("student") Student p,HttpServletResponse res) throws JRException, IOException
	{
		InputStream inputStream = new FileInputStream("C:\\Users\\Spydi\\eclipse-workspace\\StudentCampus\\WebContent\\resources\\report\\lc.jrxml");
		Student s=new Student();
		s=this.studentService.getStudentByid(p.getEnroll_no());
		s.setLC(s.getLC()+1);
		if(p.getConduct()!=null)
		{
			s.setConduct(p.getConduct());
			s.setReason_leave(p.getReason_leave());
			s.setResult_leave(p.getResult_leave());
			s.setProgress(p.getProgress());
			s.setDate_of_leave(new Date());
		}
		this.studentService.updateStudent(s);
		Certificate c=new Certificate();
		Date d=new Date();
		c.setDate_time(d);
		c.setStud_id(s.getEnroll_no());
		c.setCertificate("LC");
		this.certificateService.addCertificate(c);
		com.campus.model.bonafide b=new com.campus.model.bonafide();
		b.setAdmission_date(s.getAdmission_date());
		b.setBranch(s.getBranch());
		b.setCurrent_year(s.getCurrent_year());
		b.setDependent(s.getParent_name());
		b.setFirst_name(s.getFirst_name());
		b.setLast_name(s.getLast_name());
		b.setMiddle_name(s.getMiddle_name());
		b.setParent_name(s.getParent_name());
		b.setRef_no(c.getRef_no());
		b.setStud_id(c.getStud_id());
		b.setDate_time(c.getDate_time());
		if(s.getGender().equalsIgnoreCase("male"))
		{
			b.setHeshe("He");
			b.setMrms("Mr.");
		}
		else {
			b.setHeshe("She");
			b.setMrms("Ms.");
			
		}		
		JasperDesign jasperDesign = JRXmlLoader.load(inputStream);
		JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
		HashMap parameters = new HashMap();
		List bonafideList = new ArrayList();
		bonafideList.add(s);
		JRBeanCollectionDataSource beanColDataSource = new JRBeanCollectionDataSource(bonafideList);
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, beanColDataSource);
		JasperExportManager.exportReportToPdfStream(jasperPrint,res.getOutputStream());
		res.getOutputStream().flush();
		res.getOutputStream().close();		
	}
	@RequestMapping("/loginuser/certificatelist")
	public String certificatelist(Model model)
	{
		model.addAttribute("ListCertificate", this.certificateService.listCertificate());
		return "certificatelog";
	}
	@RequestMapping("/loginuser/setting")
	public String setting()
	{
		return "setting";
	}
	@RequestMapping(value="/loginuser/settinged",method = RequestMethod.POST)
	public String settinged(@ModelAttribute("user") USER u,@RequestParam("psw") String password)
	{
		if(password!=null)
		{
			u=this.userService.getUserbyid(u.getUSER_ID());
			u.setPASSWORD(BCrypt.hashpw(password, BCrypt.gensalt()));
			this.userService.updateUser(u);
		}
		return "wellcome";
	}
	
}

	 
