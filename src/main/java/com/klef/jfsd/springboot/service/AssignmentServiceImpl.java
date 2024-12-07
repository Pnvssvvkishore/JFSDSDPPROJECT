package com.klef.jfsd.springboot.service;


import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.repository.AssignmentRepository;
import com.klef.jfsd.springboot.service.AssignmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AssignmentServiceImpl implements AssignmentService {

    @Autowired
    private AssignmentRepository assignmentRepository;

    @Override
    public void saveAssignment(Assignment assignment) {
        assignmentRepository.save(assignment);
    }

    @Override
    public List<Assignment> getAllAssignments() {
        return assignmentRepository.findAll();
    }

    @Override
    public Assignment getAssignmentById(Long id) {
        return assignmentRepository.findById(id).orElse(null);
    }
}
