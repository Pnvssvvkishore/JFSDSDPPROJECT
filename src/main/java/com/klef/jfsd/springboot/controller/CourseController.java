package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.service.CourseService;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    @GetMapping("/add-course")
    public String showAddCoursePage() {
        return "addCourse"; // Redirects to addCourse.jsp
    }

    @PostMapping("/add-course")
    public String addCourse(@ModelAttribute Course course, Model model) {
        courseService.saveCourse(course);
        model.addAttribute("message", "Course added successfully!");
        return "addCourse";
    }

    @GetMapping("/view-courses")
    public String viewCourses(Model model) {
        List<Course> courses = courseService.getAllCourses();
        model.addAttribute("courses", courses);
        return "view-courses";
    }
}
