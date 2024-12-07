package com.klef.jfsd.springboot.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Assignment;

public interface AssignmentRepository extends JpaRepository<Assignment, Long> {
}
