package com.klef.jfsd.springboot.controller;

import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.service.EmailService;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;
    @Autowired
    private FacultyService facultyService;
    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private EmailService emailService;

    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("/about")
    public ModelAndView about() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("about");
        return mv;
    }

    @GetMapping("studentreg")
    public ModelAndView studentreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentreg");
        return mv;
    }

    @PostMapping("insertstudent")
    public ModelAndView insertstudent(HttpServletRequest request) {
        String id = request.getParameter("sid");
        String name = request.getParameter("sname");
        String gender = request.getParameter("sgender");
        String dob = request.getParameter("sdob");
        String email = request.getParameter("semail");
        String location = request.getParameter("slocation");
        String contact = request.getParameter("scontact");
        String password = request.getParameter("spwd");
        String program = request.getParameter("sprogram");
        String username = request.getParameter("susername"); // Corrected name to susername

        Student student = new Student();
        student.setId(id);
        student.setName(name);
        student.setGender(gender);
        student.setDateOfBirth(dob);
        student.setEmail(email);
        student.setLocation(location);
        student.setContact(contact);
        student.setPassword(password);
        student.setProgram(program);
        student.setUsername(username); // Corrected to use susername

        String message = studentService.studentRegistration(student);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccess");
        mv.addObject("message", message);
        return mv;
    }
    @GetMapping("studentlogin")
    public ModelAndView studentlogin() {
        return new ModelAndView("studentlogin");
    }
    @GetMapping("studentlogout")
    public ModelAndView studentLogout(HttpSession session) {
        session.invalidate();  // Invalidate the session to log the student out
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");  // Redirect to home page or login page
        mv.addObject("message", "You have been logged out successfully.");
        return mv;
    }

    
    @PostMapping("checkstudentlogin")
    public ModelAndView checkStudentLogin(HttpServletRequest request, HttpSession session) {
        String susername = request.getParameter("susername");
        String spwd = request.getParameter("spwd");
        Student student = studentService.checkStudentLogin(susername, spwd);
        
        ModelAndView mv = new ModelAndView();
        if (student != null) {
            session.setAttribute("student", student);  // Set student in the session
            mv.setViewName("studenthome");  // Redirect to student home page
        } else {
            mv.setViewName("studentloginfail");  // Redirect to login failure page
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("studenthome")
    public ModelAndView studenthome() {
        return new ModelAndView("studenthome");
    }
    @GetMapping("studentprofile")
    public ModelAndView  studentprofile() {
 		  ModelAndView mv=new ModelAndView();
 		  mv.setViewName("studentprofile");
 		  return mv;
 		  
 	   }
//    @PostMapping("/forgot-password")
//    public String forgotPassword(@RequestParam("email") String email, Model model) {
//        boolean emailSent = emailService.sendEmail(email, "http://localhost:8080/students/reset-password?email=" + email);
//        if (emailSent) {
//            model.addAttribute("message", "Reset link has been sent to your email.");
//        } else {
//            model.addAttribute("error", "Failed to send reset link.");
//        }
//        return "forgot_password"; // Show forgot password page with message
//    }
    

   
}
