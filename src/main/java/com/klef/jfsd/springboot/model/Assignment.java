package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;

@Entity
public class Assignment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCourseCode() {
		return courseCode;
	}

	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public byte[] getFileData() {
		return fileData;
	}

	public void setFileData(byte[] fileData) {
		this.fileData = fileData;
	}

	private String title;
    private String description;
    private String courseCode;
    private String courseName;

    private String fileName;

    @Lob
    private byte[] fileData;

    // Constructors
    public Assignment() {}

    public Assignment(String title, String description, String courseCode, String courseName, String fileName, byte[] fileData) {
        this.title = title;
        this.description = description;
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.fileName = fileName;
        this.fileData = fileData;
    }

    // Getters and Setters
    // ...
}
