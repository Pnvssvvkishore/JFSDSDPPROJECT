package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.FacultyRepository;

import java.util.List;

@Service
public class FacultyServiceImp implements FacultyService {

    @Autowired
    private FacultyRepository facultyRepository;

    @Override
    public String facultyRegistration(Faculty faculty) {
        facultyRepository.save(faculty);
        return "Faculty registered successfully";
    }

	@Override
	public Faculty checkFacultyLogin(String username, String pwd) {
		// TODO Auto-generated method stub
        return facultyRepository.checkFacultyLogin(username, pwd);

	}
	 @Override
	    public boolean existsByEmail(String email) {
	        // Returns true if a faculty exists with the given email, false otherwise
	        return facultyRepository.existsByEmail(email);
	    }

	    @Override
	    public void saveFaculty(Faculty faculty) {
	        // Saves the faculty object to the database
	        facultyRepository.save(faculty);
	    }

	    @Override
	    public Faculty findByEmail(String email) {
	        // Finds and returns a faculty by email, or null if not found
	        return facultyRepository.findByEmail(email);
	    }
	
	
		
	

  
}
