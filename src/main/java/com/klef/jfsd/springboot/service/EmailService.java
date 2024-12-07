package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender javaMailSender;

    public boolean sendEmail(String toEmail, String resetLink) {
        try {
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
            helper.setTo(toEmail);
            helper.setSubject("Password Reset Request");
            helper.setText("Click here to reset your password: " + resetLink, true);
            helper.setFrom("sivasaiveeraviswa@gmail.com"); // Sender email address

            javaMailSender.send(mimeMessage);
            return true; // Successfully sent the email
        } catch (MessagingException e) {
            e.printStackTrace();
            return false; // Failed to send the email
        }
    }
}
