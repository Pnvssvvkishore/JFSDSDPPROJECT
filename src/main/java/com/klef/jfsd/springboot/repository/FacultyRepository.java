package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Faculty;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, String> {
    
    @Query("select f from Faculty f where f.username = ?1 and f.password = ?2")
    public Faculty checkFacultyLogin(String username, String password);
    boolean existsByEmail(String email);
    Faculty findByEmail(String email);
}

