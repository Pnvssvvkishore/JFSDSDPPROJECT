package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Course;

public interface CourseService {
    void saveCourse(Course course);
    List<Course> getAllCourses();
}
