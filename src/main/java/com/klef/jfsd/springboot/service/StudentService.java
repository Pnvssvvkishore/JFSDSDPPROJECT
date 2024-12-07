package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService {
    public String studentRegistration(Student student);
    public Student checkStudentLogin(String username, String password);
	public Student findByEmail(String email);
	public void saveStudent(Student student);
	public boolean existsByEmail(String email);
	public Student findByResetToken(String token);
    
}
