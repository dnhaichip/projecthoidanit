package com.coeding.spring.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.coeding.spring.service.CertificateService;
import com.coeding.spring.service.CourseService;
import com.coeding.spring.service.LessonService;
import com.coeding.spring.vo.Certificate;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Lesson;
import com.coeding.spring.vo.Notice;
import com.coeding.spring.vo.Progress;
import com.coeding.spring.vo.Reference;
import com.coeding.spring.vo.Student;

/**
 * @author Dang Vinh
 */
@Controller
@RequestMapping(value = "/course/join")
public class JoinController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private CourseService courseService;
	@Autowired
	private LessonService lessonService;
	@Autowired
	private CertificateService certificateService;
		
	@RequestMapping( value = {"", "/", "/lessons"}, method = {RequestMethod.GET, RequestMethod.POST}) 
	public String join(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My Course {}.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {	
			Cookie[] cookies = request.getCookies();		
			if(cookies!=null) {
				int lessonId = 0;
				int progress = 0;
				for (int i=0; i<cookies.length; i++) {
					if (cookies[i].getName().equals("lessonId")) {
						lessonId = Integer.parseInt(cookies[i].getValue());
					} else if (cookies[i].getName().equals("progress")) {
						progress = Integer.parseInt(cookies[i].getValue());
					}
				}
				if(lessonId!=0 && progress!=0) {
					lessonService.saveProgress(join.getId(), lessonId, progress);
				}
			}					
			int sumProcess = 0;
			List<Lesson> list = courseService.listLesson(join);
			if (list!=null) {
				for (int i=0; i<list.size(); i++) {
					if (list.get(i).getProgress()!=null) {
						sumProcess += (list.get(i).getProgress().getProgress() * 100) / (list.size()*100) ;
					}
				}
				join.setSumProcess(sumProcess);
				sumProcess = courseService.saveSumProcess(join);
			}							
			Course course = courseService.getCourse(join.getCourseId());
			Certificate certificate = certificateService.get(join);
			model.addAttribute("certificate", certificate);
			model.addAttribute("join", join);
			model.addAttribute("course", course);
			model.addAttribute("list", list);			
			model.addAttribute("sumProcess", sumProcess);
			url = "/main/join/lessons";		
		}
		return url;
	}
	
	@RequestMapping( value = {"/notices"}, method = {RequestMethod.GET, RequestMethod.POST})
	public String notices(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My notices {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			List<Notice> list = courseService.listNotice(join);
			model.addAttribute("join", join);
			model.addAttribute("list", list);
			url = "/main/join/notices";
		}
		return url;
	}
	
	@RequestMapping( value = {"/references"}, method = {RequestMethod.GET, RequestMethod.POST})
	public String references(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My references {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			List<Reference> list = courseService.listRef(join);
			model.addAttribute("join", join);
			model.addAttribute("list", list);
			url = "/main/join/references";
		}
		return url;
	}
	
	@RequestMapping( value = {"/discuss"}, method = {RequestMethod.GET, RequestMethod.POST})
	public String discuss(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My discuss {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			model.addAttribute("join", join);
			url = "/main/join/discuss";
		}
		return url;
	}
		
	@RequestMapping( value = {"/reviews"}, method = {RequestMethod.GET, RequestMethod.POST})
	public String reviews(Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My reviews {}.", locale);	
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if(vo!=null) {
			model.addAttribute("join", join);
			url = "/main/join/reviews";
		}
		return url;
	}
	
	@RequestMapping( value = {"/view"}, method = {RequestMethod.GET})
	public String view( Join join, Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome My views {}.", locale);
		HttpSession session = request.getSession();
		Student vo = (Student) session.getAttribute("user");
		String url = "redirect:/login";
		if (vo!=null) {			
			Lesson lesson = (Lesson) session.getAttribute("lesson");
			model.addAttribute("join", join);
			model.addAttribute("lesson", lesson);	
			url = "/main/join/view";
		}
		return url;
	}
	
	@RequestMapping( value = {"/setLesson"}, method = {RequestMethod.GET})
	public String setLesson( Join join, Locale locale, Model model, HttpServletRequest request) {
		
		String progress = request.getParameter("progress");	
		String lessonId = request.getParameter("lessonId");
		String title = request.getParameter("title");
		String des = request.getParameter("des");
		String video = request.getParameter("video");
		Lesson lesson = new Lesson();
		lesson.setId( Integer.parseInt(lessonId) );
		lesson.setTitle(title);
		lesson.setDes(des);
		lesson.setVideo(video);
		
		HttpSession session = request.getSession();
		session.setAttribute("lesson", lesson);
		return "redirect:/course/join/view?id=" + join.getId() + "&courseId=" + join.getCourseId() + "&progress=" + progress ;
	}
	
	@RequestMapping( value = {"/complete"}, method = {RequestMethod.GET})
	public String complete( Join join, Locale locale, Model model, HttpServletRequest request) {
		
		ServletContext ctx = request.getServletContext();
		String certPath = ctx.getRealPath(ctx.getInitParameter("Certificate"));
		HttpSession session = request.getSession();
		Student student = (Student) session.getAttribute("user");		
		Certificate certificate = new Certificate();
		certificate.setTitle("studentId-" + student.getId() + "_courseId-" + join.getCourseId() + ".png");
		certificate.setJoinId(join.getId());
		certificateService.insert(certificate);	
		certificate = certificateService.get(join);
		System.out.println(certPath);
		createCertificate(certPath, certificate);
		return "redirect:/course/join?id=" + join.getId() + "&courseId=" + join.getCourseId();
	}
	
	public void createCertificate(String certPath, Certificate certificate) {
		int width = 700;
        int height = 500;
        String s = "";
        // Constructs a BufferedImage of one of the predefined image types.
        BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
 
        // Create a graphics which can be used to draw into the buffered image
        Graphics g = bufferedImage.createGraphics();
    
        g.drawRect(0, 0, width, height);
        g.setColor(Color.white);
        g.fillRect(3, 3, width-5, height-5);
        // create a string with yellow
        g.setFont(new Font("Times New Roman", Font.BOLD, 40));
        g.setColor(Color.red);
        g.drawString("CERTIFICATE", 220, 60);
        
        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
        g.setColor(Color.black);
        g.drawString("This is to certify that", 20, 100);
        
        s = certificate.getStudent().getLastName() + " " + certificate.getStudent().getFirstName() ; // Name
        g.setFont(new Font("Times New Roman", Font.BOLD, 60));
        g.setColor(Color.black);
        g.drawString(s, 20, 200);
        
        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
        g.setColor(Color.black);
        g.drawString("has successfullly completed the course", 20, 280);
        
        s = certificate.getCourse().getTitle(); // Name
        g.setFont(new Font("Times New Roman", Font.BOLD, 30));
        g.setColor(Color.blue);
        g.drawString(s, 20, 350);
        
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");  
        s = dateFormat.format(certificate.getFinishDate()); // finish date
        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
        g.setColor(Color.green);
        g.drawString(s, 20, 420);
        
        s = certificate.getTeacher().getLastName() + " " + certificate.getTeacher().getFirstName();
        g.setFont(new Font("Times New Roman", Font.BOLD, 20));
        g.setColor(Color.green);
        g.drawString(s, 450, 420);
 
        // Disposes of this graphics context and releases any system resources that it is using. 
        g.dispose();
        
        // Save as PNG
        File file = new File(certPath + File.separator + certificate.getTitle());
        try {
			ImageIO.write(bufferedImage, "png", file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
