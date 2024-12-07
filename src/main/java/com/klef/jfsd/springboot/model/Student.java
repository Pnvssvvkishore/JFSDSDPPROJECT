package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "student_table")
public class Student {

    @Id
    @Column(name = "student_id", length = 50)
    private String id;

    @Column(name = "student_name", length = 100, nullable = false)
    private String name;

    @Column(name = "student_gender", length = 10, nullable = false)
    private String gender;

    @Column(name = "student_dob", nullable = false)
    private String dateOfBirth;

    @Column(name = "student_email", length = 100, nullable = false)
    private String email;

    @Column(name = "student_location", length = 100, nullable = false)
    private String location;

    @Column(name = "student_contact", length = 15, nullable = false)
    private String contact;

    @Column(name = "student_password", length = 100, nullable = false)
    private String password;

    @Column(name = "student_program", length = 100, nullable = false)
    private String program;

    @Column(name = "student_username", length = 50, nullable = false)
    private String username;

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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
}
