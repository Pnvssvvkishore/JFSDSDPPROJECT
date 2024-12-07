package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.EmailService;
import com.klef.jfsd.springboot.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ForgotPasswordController {

    @Autowired
    private EmailService emailService;

    @Autowired
    private StudentService studentService;

    @GetMapping("/forgotpassword")
    public String showForgotPasswordPage() {
        return "forgot_password";
    }
    @PostMapping("/forgotpassword")
    public String processForgotPassword(@RequestParam("email") String email, Model model) {
        System.out.println("Email received for password reset: " + email); // Debugging line

        boolean emailExists = studentService.existsByEmail(email);
        if (emailExists) {
            String resetLink = "http://localhost:8088/forgotpassword/reset?email=" + email;
            boolean emailSent = emailService.sendEmail(email, resetLink);
            if (emailSent) {
                model.addAttribute("message", "A password reset link has been sent to your email.");
            } else {
                model.addAttribute("error", "Failed to send the email. Please try again later.");
            }
        } else {
            model.addAttribute("error", "This email is not registered.");
        }
        return "forgot_password";
    }


   

    @GetMapping("/forgotpassword/reset")
    public String showResetPasswordPage(@RequestParam("email") String email, Model model) {
        Student student = studentService.findByEmail(email);
        if (student != null) {
            model.addAttribute("email", email); // Pass the email to the reset form
            return "reset_password"; // Show reset password page
        } else {
            model.addAttribute("error", "Invalid email.");
            return "forgot_password"; // If email is not found, go to forgot password page
        }
    }

    @PostMapping("/forgotpassword/reset")
    public String processResetPassword(@RequestParam("email") String email,
                                       @RequestParam("newPassword") String newPassword,
                                       Model model) {
        Student student = studentService.findByEmail(email);
        if (student != null) {
            student.setPassword(newPassword); // Set the new password
            studentService.saveStudent(student); // Save the updated student in the database
            model.addAttribute("message", "Your password has been successfully updated.");
            return "resetstatus"; // Ensure this matches the JSP file's name
        } else {
            model.addAttribute("error", "Invalid email.");
            return "forgot_password"; // If email is not found, go to forgot password page
        }
    }

}
