package com.klef.jfsd.springboot.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, String> {  // String as ID type

    @Query("select s from Student s where s.username = ?1 and s.password = ?2")
    public Student checkStudentLogin(String username, String password);

	Student findByEmail(String email);

	public boolean existsByEmail(String email);
    

	
	
}
