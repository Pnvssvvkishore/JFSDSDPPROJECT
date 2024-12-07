package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "faculty_table")
public class Faculty {
    @Id
    @Column(name = "faculty_id", length = 50)
    private String id;

    @Column(name = "faculty_name", length = 100, nullable = false)
    private String name;

    @Column(name = "faculty_department", length = 50, nullable = false)
    private String department;

    @Column(name = "faculty_designation", length = 50, nullable = false)
    private String designation;

    @Column(name = "faculty_qualification", length = 50, nullable = false)
    private String qualification;

    @Column(name = "faculty_email", length = 100, nullable = false)
    private String email;

    @Column(name = "faculty_username", length = 50, nullable = false)
    private String username;

    @Column(name = "faculty_password", length = 50, nullable = false)
    private String password;

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
