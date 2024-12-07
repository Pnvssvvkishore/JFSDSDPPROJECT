package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.service.EmailService;
import com.klef.jfsd.springboot.service.FacultyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FacultyForgotPasswordController {

    @Autowired
    private EmailService emailService;

    @Autowired
    private FacultyService facultyService;

    @GetMapping("/faculty/forgotpassword")
    public String showForgotPasswordPage() {
        return "faculty_forgot_password";
    }

    @PostMapping("/faculty/forgotpassword")
    public String processForgotPassword(@RequestParam("email") String email, Model model) {
        boolean emailExists = facultyService.existsByEmail(email);
        if (emailExists) {
            String resetLink = "http://localhost:8088/faculty/forgotpassword/reset?email=" + email;
            boolean emailSent = emailService.sendEmail(email, resetLink);
            if (emailSent) {
                model.addAttribute("message", "A password reset link has been sent to your email.");
            } else {
                model.addAttribute("error", "Failed to send the email. Please try again later.");
            }
        } else {
            model.addAttribute("error", "This email is not registered.");
        }
        return "faculty_forgot_password";
    }

    @GetMapping("/faculty/forgotpassword/reset")
    public String showResetPasswordPage(@RequestParam("email") String email, Model model) {
        Faculty faculty = facultyService.findByEmail(email);
        if (faculty != null) {
            model.addAttribute("email", email);
            return "faculty_reset_password";
        } else {
            model.addAttribute("error", "Invalid email.");
            return "faculty_forgot_password";
        }
    }

    @PostMapping("/faculty/forgotpassword/reset")
    public String processResetPassword(@RequestParam("email") String email,
                                       @RequestParam("newPassword") String newPassword,
                                       Model model) {
        Faculty faculty = facultyService.findByEmail(email);
        if (faculty != null) {
            faculty.setPassword(newPassword); // Set the new password
            facultyService.saveFaculty(faculty); // Save the updated faculty in the database
            model.addAttribute("message", "Your password has been successfully updated.");
            return "password_reset_success"; // Updated to match the new file name
        } else {
            model.addAttribute("error", "Invalid email.");
            return "faculty_forgot_password"; // If email is not found, go to forgot password page
        }
    }

}
