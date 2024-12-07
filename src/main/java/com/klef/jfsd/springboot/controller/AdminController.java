package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.FacultyService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;
    
    @Autowired
    private FacultyService facultyService;

    // Admin login page
    @GetMapping("adminlogin")
    public ModelAndView adminlogin() {
        return new ModelAndView("adminlogin");
    }

    // Check admin login credentials
    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request) {
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");
        Admin admin = adminService.checkAdminLogin(auname, apwd);
        ModelAndView mv = new ModelAndView();
        if (admin != null) {
            mv.setViewName("adminhome");
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    // Admin home page
    @GetMapping("adminhome")
    public ModelAndView adminhome() {
        return new ModelAndView("adminhome");
    }

    // View all students
    @GetMapping("viewallstudents")
    public ModelAndView viewAllStudents() {
        List<Student> students = adminService.viewAllStudents();
        ModelAndView mv = new ModelAndView("viewallstudents");
        mv.addObject("studentlist", students);
        return mv;
    }

    // Delete student
    @GetMapping("deleteStudent")
    public String deleteStudent(@RequestParam("id") String studentId) {
        adminService.deleteStudent(studentId);
        return "redirect:/viewallstudents";
    }

    // Display update form for student
    @GetMapping("updateStudent")
    public ModelAndView getUpdateForm(@RequestParam("id") String studentId) {
        Student student = adminService.getStudentById(studentId);
        ModelAndView mv = new ModelAndView("updatestudent");
        mv.addObject("student", student);
        return mv;
    }

    // Update student details
    @PostMapping("updateStudent")
    public String updateStudent(Student student) {
        adminService.updateStudent(student);
        return "redirect:/viewallstudents";
    }

    // Faculty registration
    @PostMapping("insertfaculty")
    public ModelAndView insertfaculty(HttpServletRequest request) {
        String id = request.getParameter("fid");
        String name = request.getParameter("fname");
        String department = request.getParameter("fdepartment");
        String designation = request.getParameter("fdesignation");
        String qualification = request.getParameter("fqualification");
        String email = request.getParameter("femail");
        String username = request.getParameter("fusername");
        String password = request.getParameter("fpwd");

        Faculty faculty = new Faculty();
        faculty.setId(id);
        faculty.setName(name);
        faculty.setDepartment(department);
        faculty.setDesignation(designation);
        faculty.setQualification(qualification);
        faculty.setEmail(email);
        faculty.setUsername(username);
        faculty.setPassword(password);

        String message = facultyService.facultyRegistration(faculty);

        ModelAndView mv = new ModelAndView("regsuccessfaculty");
        mv.addObject("message", message);
        return mv;
    }

    // Show faculty registration form
    @GetMapping("/facultyreg")
    public String showFacultyRegistrationForm() {
        return "facultyreg";
    }

    // View all faculty
    @GetMapping("viewallfaculty")
    public ModelAndView viewAllFaculty() {
        List<Faculty> facultyList = adminService.viewAllFaculty();
        ModelAndView mv = new ModelAndView("viewallfaculty");
        mv.addObject("facultylist", facultyList);
        return mv;
    }
   



    
   
}
