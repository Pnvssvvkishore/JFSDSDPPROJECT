<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - SLMS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

        body {
            background-color: #f0f4f8;
            font-family: 'Inter', sans-serif;
            margin-top: 80px;
            color: #2d3748;
        }

        .container {
            max-width: 1200px;
            margin: 2rem auto;
            background: #ffffff;
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            position: relative;
            overflow: hidden;
        }

        .container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(90deg, #3182ce, #63b3ed);
        }

        h1 {
            color: #2d3748;
            font-size: 2.75rem;
            font-weight: 700;
            margin-bottom: 1.5rem;
            line-height: 1.2;
            position: relative;
            padding-bottom: 1rem;
        }

        h1::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 80px;
            height: 4px;
            background: #3182ce;
            border-radius: 2px;
        }

        h2 {
            color: #2d3748;
            font-size: 1.875rem;
            font-weight: 600;
            margin-top: 2.5rem;
            margin-bottom: 1.25rem;
        }

        p {
            color: #4a5568;
            font-size: 1.125rem;
            line-height: 1.8;
            margin-bottom: 1.5rem;
        }

        .feature-card {
            background: #f8fafc;
            border-radius: 16px;
            padding: 2rem;
            margin-top: 2rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: 1px solid #e2e8f0;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1);
        }

        .feature-list {
            list-style: none;
            padding-left: 0;
            margin: 0;
        }

        .feature-list li {
            position: relative;
            padding-left: 2rem;
            margin-bottom: 1rem;
            display: flex;
            align-items: center;
        }

        .feature-list li::before {
            content: '→';
            position: absolute;
            left: 0;
            color: #3182ce;
            font-weight: bold;
            transition: transform 0.2s ease;
        }

        .feature-list li:hover::before {
            transform: translateX(5px);
        }

        .admin-responsibilities {
            background: #f7fafc;
            border-radius: 16px;
            padding: 2rem;
            margin-top: 2rem;
        }

        .admin-responsibilities ul {
            list-style: none;
            padding-left: 0;
        }

        .admin-responsibilities li {
            background: white;
            margin-bottom: 1rem;
            padding: 1rem 1.5rem;
            border-radius: 8px;
            border-left: 4px solid #3182ce;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
            transition: transform 0.2s ease;
        }

        .admin-responsibilities li:hover {
            transform: translateX(5px);
        }

        .container-footer {
            background: linear-gradient(135deg, #2b6cb0, #3182ce);
            color: white;
            padding: 1.5rem;
            border-radius: 12px;
            margin-top: 3rem;
            text-align: center;
        }

        .container-footer p {
            color: rgba(255, 255, 255, 0.9);
            margin: 0;
        }

        .container-footer a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            padding: 0.5rem 1rem;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 6px;
            transition: background 0.2s ease;
        }

        .container-footer a:hover {
            background: rgba(255, 255, 255, 0.2);
            text-decoration: none;
        }

        @media (max-width: 768px) {
            body {
                margin-top: 60px;
            }

            .container {
                padding: 1.5rem;
                margin: 1rem;
            }

            h1 {
                font-size: 2rem;
            }

            h2 {
                font-size: 1.5rem;
            }

            p {
                font-size: 1rem;
            }

            .feature-card {
                padding: 1.5rem;
            }
        }

        /* Animation classes */
        .fade-in {
            animation: fadeIn 0.8s ease-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>


    <div class="container fade-in">
        <h1>Welcome to the Student Learning Management System (SLMS)</h1>
        <p>
            The Student Learning Management System (SLMS) is designed to streamline educational processes, enabling effective management of courses, assignments, and user roles. The SLMS offers features that cater to different users, including administrators, instructors, and students, ensuring a seamless and engaging learning experience.
        </p>
        
        <h2>Key Features:</h2>
        <div class="feature-card">
            <ul class="feature-list">
                <li><strong>For Administrators:</strong> Manage user accounts, courses, and overall platform settings with ease.</li>
                <li><strong>For Instructors:</strong> Create and manage courses, grade assignments, and interact with students to provide guidance.</li>
                <li><strong>For Students:</strong> Enroll in courses, submit assignments, track progress, and receive feedback to enhance learning.</li>
            </ul>
        </div>

        <h2>Role of an Admin:</h2>
        <p>
            Administrators play a crucial role in maintaining the SLMS platform. Their responsibilities include:
        </p>
        <div class="admin-responsibilities">
            <ul>
                <li>Managing user roles and permissions to ensure that instructors, students, and other stakeholders have the right level of access.</li>
                <li>Overseeing course creation, updates, and removal to keep content relevant and up-to-date.</li>
                <li>Monitoring system performance and addressing any technical issues to maintain smooth platform functionality.</li>
                <li>Handling reports and analytics to track user engagement, course completion rates, and other key performance indicators.</li>
                <li>Setting up platform-wide announcements, notifications, and important updates for all users.</li>
            </ul>
        </div>

        <p>
            The admin panel provides comprehensive tools that allow administrators to configure and manage various aspects of the SLMS efficiently, fostering a secure and organized learning environment.
        </p>
    </div>

    <div class="container-footer">
        <p>For more information, visit our <a href="about">About</a> page.</p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>