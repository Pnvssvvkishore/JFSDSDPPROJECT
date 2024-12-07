<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
Student s = (Student) session.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Profile</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4f46e5;
            --secondary-color: #818cf8;
            --background: #f9fafb;
            --card-bg: #ffffff;
            --text-primary: #111827;
            --text-secondary: #4b5563;
        }

        body {
            background-color: var(--background);
            min-height: 100vh;
            padding: 20px;
        }

        .profile-card {
            background: var(--card-bg);
            border-radius: 20px;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 
                        0 2px 4px -1px rgba(0, 0, 0, 0.06);
            max-width: 700px;
            margin: 40px auto;
            position: relative;
            overflow: hidden;
        }

        .profile-header {
            background-color: var(--primary-color);
            padding: 30px 20px;
            position: relative;
        }

        .profile-header::after {
            content: '';
            position: absolute;
            bottom: -50px;
            left: 0;
            right: 0;
            height: 50px;
            background: var(--card-bg);
            clip-path: ellipse(70% 50% at 50% 50%);
        }

        .profile-header h3 {
            color: white;
            font-weight: 600;
            margin: 0;
            font-size: 24px;
            text-align: center;
        }

        .profile-content {
            padding: 30px;
        }

        .info-group {
            margin-bottom: 25px;
            padding: 15px;
            border-radius: 12px;
            background: #f8fafc;
            transition: transform 0.2s;
        }

        .info-group:hover {
            transform: translateX(10px);
            background: #f1f5f9;
        }

        .info-label {
            color: var(--text-secondary);
            font-size: 14px;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            margin-bottom: 5px;
        }

        .info-value {
            color: var(--text-primary);
            font-size: 16px;
            font-weight: 500;
        }

        .info-icon {
            color: var(--primary-color);
            margin-right: 10px;
            width: 20px;
        }

        @media (max-width: 576px) {
            .profile-card {
                margin: 20px;
            }
            
            .info-group {
                padding: 12px;
            }
            
            .profile-content {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>

    <div class="profile-card">
        <div class="profile-header">
            <h3>Student Profile</h3>
        </div>
        
        <div class="profile-content">
            <div class="info-group">
                <div class="info-label">
                    <i class="fas fa-id-card info-icon"></i>Student ID
                </div>
                <div class="info-value"><%=s.getId() %></div>
            </div>

            <div class="info-group">
                <div class="info-label">
                    <i class="fas fa-user info-icon"></i>Name
                </div>
                <div class="info-value"><%=s.getName() %></div>
            </div>

            <div class="info-group">
                <div class="info-label">
                    <i class="fas fa-venus-mars info-icon"></i>Gender
                </div>
                <div class="info-value"><%=s.getGender() %></div>
            </div>

            <div class="info-group">
                <div class="info-label">
                    <i class="fas fa-calendar info-icon"></i>Date of Birth
                </div>
                <div class="info-value"><%=s.getDateOfBirth() %></div>
            </div>

            <div class="info-group">
                <div class="info-label">
                    <i class="fas fa-envelope info-icon"></i>Email Address
                </div>
                <div class="info-value"><%=s.getEmail() %></div>
            </div>

            <div class="info-group">
                <div class="info-label">
                    <i class="fas fa-map-marker-alt info-icon"></i>Location
                </div>
                <div class="info-value"><%=s.getLocation() %></div>
            </div>

            <div class="info-group">
                <div class="info-label">
                    <i class="fas fa-phone info-icon"></i>Contact
                </div>
                <div class="info-value"><%=s.getContact() %></div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>