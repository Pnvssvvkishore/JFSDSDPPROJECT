<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - SLMS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --accent-color: #e74c3c;
            --gradient-start: #2c3e50;
            --gradient-end: #3498db;
            --text-dark: #2c3e50;
            --text-light: #7f8c8d;
            --background: #f0f2f5;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--background);
            margin: 0;
            padding: 0;
            min-height: 100vh;
            position: relative;
        }

        /* Animated background */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, var(--gradient-start) 0%, var(--gradient-end) 100%);
            opacity: 0.05;
            z-index: -1;
        }

        .container {
            margin-top: 2rem;
            margin-bottom: 4rem;
            position: relative;
        }

        .content-box {
            background: rgba(255, 255, 255, 0.98);
            padding: 3.5rem;
            border-radius: 24px;
            box-shadow: 0 20px 40px rgba(44, 62, 80, 0.1);
            position: relative;
            overflow: hidden;
        }

        /* Decorative elements */
        .content-box::before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            width: 150px;
            height: 150px;
            background: linear-gradient(135deg, var(--secondary-color) 0%, transparent 100%);
            opacity: 0.1;
            border-radius: 0 24px 0 150px;
        }

        .content-box h1 {
            font-size: 2.8rem;
            color: var(--primary-color);
            font-weight: 800;
            margin-bottom: 1.8rem;
            position: relative;
            padding-bottom: 1.2rem;
        }

        .content-box h1::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100px;
            height: 5px;
            background: linear-gradient(90deg, var(--secondary-color), var(--accent-color));
            border-radius: 3px;
        }

        .content-box p {
            font-size: 1.1rem;
            color: var(--text-light);
            line-height: 1.9;
            margin-bottom: 2.5rem;
        }

        .content-box h2 {
            font-size: 2rem;
            color: var(--text-dark);
            font-weight: 700;
            margin: 2.5rem 0 2rem;
        }

        .features-list {
            list-style: none;
            padding: 0;
            margin: 0;
            display: grid;
            gap: 1.5rem;
        }

        .features-list li {
            padding: 1.5rem;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 16px;
            transition: all 0.3s ease;
            border: 1px solid rgba(52, 152, 219, 0.1);
            display: flex;
            align-items: center;
            gap: 1.5rem;
        }

        .features-list li:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(44, 62, 80, 0.1);
            background: white;
            border-color: var(--secondary-color);
        }

        .features-list li i {
            color: var(--secondary-color);
            font-size: 2rem;
            transition: transform 0.3s ease;
        }

        .features-list li:hover i {
            transform: scale(1.1);
        }

        .features-list li div {
            flex: 1;
        }

        .features-list li strong {
            color: var(--primary-color);
            display: block;
            margin-bottom: 0.5rem;
            font-size: 1.1rem;
        }

        .btn-primary {
            background: linear-gradient(45deg, var(--secondary-color), var(--primary-color));
            border: none;
            padding: 1rem 2.5rem;
            font-size: 1.1rem;
            border-radius: 50px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(52, 152, 219, 0.2);
            position: relative;
            overflow: hidden;
        }

        .btn-primary::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(45deg, var(--primary-color), var(--secondary-color));
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(52, 152, 219, 0.3);
        }

        .btn-primary:hover::before {
            opacity: 1;
        }

        .btn-primary span {
            position: relative;
            z-index: 1;
        }

        .footer {
            background: var(--primary-color);
            color: white;
            text-align: center;
            padding: 2rem;
            position: relative;
            overflow: hidden;
        }

        .footer::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(45deg, var(--secondary-color) 0%, transparent 100%);
            opacity: 0.1;
        }

        .footer p {
            margin: 0;
            position: relative;
            font-weight: 500;
        }

        /* Animations */
        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .content-box {
            animation: slideUp 0.8s ease-out forwards;
        }

        .features-list li {
            animation: slideUp 0.8s ease-out forwards;
            opacity: 0;
        }

        .features-list li:nth-child(1) { animation-delay: 0.2s; }
        .features-list li:nth-child(2) { animation-delay: 0.4s; }
        .features-list li:nth-child(3) { animation-delay: 0.6s; }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                margin-top: 1rem;
                padding: 0 1rem;
            }

            .content-box {
                padding: 2rem;
                border-radius: 20px;
            }

            .content-box h1 {
                font-size: 2rem;
            }

            .content-box h2 {
                font-size: 1.6rem;
            }

            .features-list li {
                padding: 1.2rem;
                flex-direction: column;
                text-align: center;
                gap: 1rem;
            }

            .features-list li i {
                font-size: 1.8rem;
            }

            .btn-primary {
                padding: 0.8rem 2rem;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

<%@include file="adminnavbar.jsp" %>

<div class="container">
    <div class="content-box">
        <h1>Welcome to SLMS</h1>
        <p>
            The Student Learning Management System (SLMS) is your gateway to a modern educational experience. Our platform brings together administrators, instructors, and students in an intuitive digital environment designed to enhance learning and collaboration.
        </p>
        <h2>Key Features</h2>
        <ul class="features-list">
            <li>
                <i class="fas fa-user-shield"></i>
                <div>
                    <strong>For Administrators</strong>
                    Comprehensive tools for managing users, courses, and system settings with enhanced security and control.
                </div>
            </li>
            <li>
                <i class="fas fa-chalkboard-teacher"></i>
                <div>
                    <strong>For Instructors</strong>
                    Create engaging courses, manage assignments, and track student progress with our intuitive teaching tools.
                </div>
            </li>
            <li>
                <i class="fas fa-user-graduate"></i>
                <div>
                    <strong>For Students</strong>
                    Access course materials, submit assignments, and monitor your academic progress in real-time.
                </div>
            </li>
        </ul>
        <p>
            Experience education reimagined through our powerful platform that puts learning first. SLMS combines ease of use with powerful features to create an environment where knowledge thrives.
        </p>
        <div class="text-center mt-5">
            <a href="#" class="btn btn-primary">
                <span>
                    Get Started
                    <i class="fas fa-arrow-right ms-2"></i>
                </span>
            </a>
        </div>
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 Student Learning Management System | Empowering Education Through Technology</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>