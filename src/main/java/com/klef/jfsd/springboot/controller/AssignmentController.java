package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.service.AssignmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/assignments")
public class AssignmentController {

    @Autowired
    private AssignmentService assignmentService;

    @GetMapping("/assignments/view")
    public String viewAssignments(Model model) {
        List<Assignment> assignments = assignmentService.getAllAssignments(); // Fetch assignments
        model.addAttribute("assignments", assignments); // Pass to view
        return "viewAssignments"; // Corresponds to the template filename
    }


    @GetMapping("/upload")
    public String showUploadForm() {
        return "upload-assignment";
    }

    @PostMapping("/upload")
    public String uploadAssignment(@RequestParam("file") MultipartFile file,
                                   @RequestParam("title") String title,
                                   @RequestParam("description") String description,
                                   @RequestParam("courseCode") String courseCode,
                                   @RequestParam("courseName") String courseName) throws IOException {
        Assignment assignment = new Assignment(title, description, courseCode, courseName, file.getOriginalFilename(), file.getBytes());
        assignmentService.saveAssignment(assignment);
        return "redirect:/assignments/view";
    }

    @GetMapping("/{id}/download")
    public ResponseEntity<byte[]> downloadAssignment(@PathVariable Long id) {
        Assignment assignment = assignmentService.getAssignmentById(id);
        if (assignment != null) {
            return ResponseEntity.ok()
                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + assignment.getFileName())
                    .body(assignment.getFileData());
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }
}
