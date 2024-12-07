package com.klef.jfsd.springboot.service;

import java.util.List;
import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService {
    Admin checkAdminLogin(String uname, String pwd);

    List<Student> viewAllStudents();


    void deleteStudent(String studentId);

    Student getStudentById(String studentId);

    void updateStudent(Student student);

	List<Faculty> viewAllFaculty();

	

	
}
