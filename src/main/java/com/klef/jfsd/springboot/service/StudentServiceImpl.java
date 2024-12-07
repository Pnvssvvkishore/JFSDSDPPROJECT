package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Override
    public String studentRegistration(Student student) {
        studentRepository.save(student);
        return "Student registered successfully";
    }

    @Override
    public Student checkStudentLogin(String username, String password) {
        return studentRepository.checkStudentLogin(username, password);
    }

    public Student findByEmail(String email) {
        return studentRepository.findByEmail(email);
    }

    public void saveStudent(Student student) {
        studentRepository.save(student); // Save the updated student to the database
    }

    public boolean existsByEmail(String email) {
        return studentRepository.existsByEmail(email);
    }

	@Override
	public Student findByResetToken(String token) {
		// TODO Auto-generated method stub
		return null;
	}

}
