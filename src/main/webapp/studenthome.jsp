<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% Student s = (Student) session.getAttribute("student"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #2563eb;
            --primary-light: #3b82f6;
            --bg-color: #f1f5f9;
            --card-bg: #ffffff;
        }

        body {
            background: var(--bg-color);
            min-height: 100vh;
            font-family: system-ui, -apple-system, sans-serif;
        }

        .welcome-container {
            background: var(--card-bg);
            border-radius: 12px;
            padding: 2rem;
            margin-top: 2rem;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }

        .welcome-title {
            color: var(--primary);
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 1.5rem;
        }

        .welcome-message {
            color: #64748b;
            font-size: 1.1rem;
            line-height: 1.5;
            margin-bottom: 2rem;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-top: 1rem;
        }

        .feature-card {
            background: #fff;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 1.5rem;
            display: flex;
            align-items: center;
            transition: transform 0.2s;
        }

        .feature-card:hover {
            transform: translateY(-3px);
        }

        .feature-icon {
            width: 45px;
            height: 45px;
            background: var(--primary);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 1rem;
        }

        .feature-icon i {
            color: white;
            font-size: 1.25rem;
        }

        .feature-text h3 {
            font-size: 1.1rem;
            font-weight: 600;
            margin: 0;
            color: #1e293b;
        }

        .feature-text p {
            font-size: 0.9rem;
            color: #64748b;
            margin: 0.25rem 0 0;
        }

        @media (max-width: 768px) {
            .welcome-container {
                margin: 1rem;
                padding: 1.5rem;
            }

            .welcome-title {
                font-size: 1.75rem;
            }

            .features-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>

    <div class="container py-4">
        <div class="welcome-container">
            <h1 class="welcome-title">
                Welcome back, <%= s.getName() %>
            </h1>
            <p class="welcome-message">
                Explore your academic dashboard and access all your resources in one place.
            </p>

            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-book-reader"></i>
                    </div>
                    <div class="feature-text">
                        <h3>Learning Resources</h3>
                        <p>Access study materials & lectures</p>
                    </div>
                </div>

               

                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <div class="feature-text">
                        <h3>Performance</h3>
                        <p>Track your academic progress</p>
                    </div>
                </div>

                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-comments"></i>
                    </div>
                    <div class="feature-text">
                        <h3>Discussion Forums</h3>
                        <p>Engage with peers & faculty</p>
                    </div>
                </div>

                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-clipboard-check"></i>
                    </div>
                    <div class="feature-text">
                        <h3>Assignments</h3>
                        <p>Submit & track your work</p>
                    </div>
                </div>

                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-bell"></i>
                    </div>
                    <div class="feature-text">
                        <h3>Notifications</h3>
                        <p>Stay updated with alerts</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>