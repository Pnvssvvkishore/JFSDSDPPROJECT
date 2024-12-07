package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.springboot.model.Material;
import com.klef.jfsd.springboot.repository.MaterialRepository;

import java.io.IOException;
import java.util.List;

@Service
public class MaterialService {

    @Autowired
    private MaterialRepository materialRepository;

    public Material saveMaterial(String course, String courseCode, MultipartFile file) throws IOException {
        Material material = new Material();
        material.setCourse(course);
        material.setCourseCode(courseCode);
        material.setFileName(file.getOriginalFilename());
        material.setFileData(file.getBytes());
        return materialRepository.save(material);
    }

    public List<Material> getAllMaterials() {
        return materialRepository.findAll();
    }


    public Material getMaterialById(Long id) {
        return materialRepository.findById(id).orElseThrow(() -> new RuntimeException("Material not found with id: " + id));
    }
}
