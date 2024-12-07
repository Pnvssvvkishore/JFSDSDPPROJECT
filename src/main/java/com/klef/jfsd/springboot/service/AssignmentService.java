package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Assignment;

import java.util.List;

public interface AssignmentService {
    void saveAssignment(Assignment assignment);
    List<Assignment> getAllAssignments();
    Assignment getAssignmentById(Long id);
}
