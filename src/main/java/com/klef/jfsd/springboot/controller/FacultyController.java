package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FacultyController {
	  @Autowired
	    private StudentService studentService;
	    @Autowired
	    private FacultyService facultyService;
	    @GetMapping("facultylogin")
	    public ModelAndView facultylogin() {
	        return new ModelAndView("facultylogin");
	    }
	 // Logout faculty
	    @GetMapping("facultylogout")
	    public ModelAndView facultyLogout(HttpSession session) {
	        session.invalidate();  // Invalidate the session to log the faculty out
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("home");  // Redirect to home page or login page
	        mv.addObject("message", "You have been logged out successfully.");
	        return mv;
	    }

	    // Check faculty login credentials
	    @PostMapping("checkfacultylogin")
	    public ModelAndView checkFacultyLogin(HttpServletRequest request, HttpSession session) {
	        String fusername = request.getParameter("fusername");
	        String fpwd = request.getParameter("fpwd");
	        Faculty faculty = facultyService.checkFacultyLogin(fusername, fpwd);
	        
	        ModelAndView mv = new ModelAndView();
	        if (faculty != null) {
	            session.setAttribute("faculty", faculty);  // Set faculty in the session
	            mv.setViewName("facultyhome");  // Redirect to faculty home page
	        } else {
	            mv.setViewName("facultyloginfail");  // Redirect to login failure page
	            mv.addObject("message", "Login Failed");
	        }
	        return mv;
	    }

	    // Faculty home page
	    @GetMapping("facultyhome")
	    public ModelAndView facultyHome() {
	        return new ModelAndView("facultyhome");
	    }

	    // Faculty profile page
	    @GetMapping("facultyprofile")
	    public ModelAndView facultyProfile() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("facultyprofile");
	        return mv;
	    }

}
