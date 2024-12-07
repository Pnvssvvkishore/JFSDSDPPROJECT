package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.springboot.model.Material;
import com.klef.jfsd.springboot.service.MaterialService;

import java.util.List;

@Controller
public class MaterialController {

    @Autowired
    private MaterialService materialService;

    @GetMapping("/uploadmaterial")
    public String showUploadForm() {
        return "upload_material";
    }

    @PostMapping("/uploadmaterial")
    public String uploadMaterial(@RequestParam("course") String course,
                                 @RequestParam("courseCode") String courseCode,
                                 @RequestParam("file") MultipartFile file,
                                 Model model) {
        try {
            materialService.saveMaterial(course, courseCode, file);
            model.addAttribute("message", "File uploaded successfully!");
        } catch (Exception e) {
            model.addAttribute("message", "File upload failed: " + e.getMessage());
        }
        return "upload_material";
    }

    @GetMapping("/viewmaterials")
    public String viewMaterials(Model model) {
        List<Material> materials = materialService.getAllMaterials();
        System.out.println("Fetched Materials: " + materials);  // Debug log

        if (materials.isEmpty()) {
            System.out.println("No materials found.");
        }

        model.addAttribute("materials", materials);  // Ensure data is passed to JSP
        return "view_materials"; // Ensure this matches the view name
    }



    @GetMapping("/download/{id}")
    public ResponseEntity<org.springframework.core.io.Resource> downloadFile(@PathVariable Long id) {
        Material material = materialService.getMaterialById(id);
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + material.getFileName() + "\"")
                .contentType(MediaType.APPLICATION_OCTET_STREAM)
                .body(new org.springframework.core.io.ByteArrayResource(material.getFileData()));
    }
}
