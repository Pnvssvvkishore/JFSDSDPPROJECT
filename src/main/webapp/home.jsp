<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - SLMS</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- AOS Animation Library -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            margin: 0;
            padding: 0;
        }

        .hero-section {
            background: linear-gradient(rgba(0, 123, 255, 0.9), rgba(0, 123, 255, 0.8)), url('https://via.placeholder.com/1920x600') no-repeat center center/cover;
            color: white;
            padding: 100px 0;
            margin-bottom: 50px;
        }

        .hero-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .hero-content h1 {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 20px;
            animation: fadeInUp 1s ease;
        }

        .hero-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 30px;
            animation: fadeInUp 1.2s ease;
        }

        .content-box {
            background-color: white;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 40px;
            margin-bottom: 30px;
            transition: transform 0.3s ease;
        }

        .content-box:hover {
            transform: translateY(-5px);
        }

        .feature-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            transition: all 0.3s ease;
            text-align: center;
        }

        .feature-card img {
            width: 80px;
            height: 80px;
            margin-bottom: 15px;
            border-radius: 10px;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .btn-custom {
            padding: 12px 30px;
            font-size: 1.1rem;
            font-weight: 600;
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 123, 255, 0.3);
        }

        .stats-section {
            background: linear-gradient(135deg, #007bff 0%, #0056b3 100%);
            padding: 60px 0;
            color: white;
            margin: 50px 0;
        }

        .stat-item {
            text-align: center;
            padding: 20px;
        }

        .stat-item h3 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 10px;
        }

        .footer {
            background: #0056b3;
            color: white;
            padding: 40px 0 20px;
        }

        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            padding: 0 20px;
        }

        .footer-section h4 {
            color: white;
            margin-bottom: 20px;
            font-size: 1.2rem;
            font-weight: 600;
        }

        .footer-section ul {
            list-style: none;
            padding: 0;
        }

        .footer-section ul li {
            margin-bottom: 10px;
        }

        .footer-section ul li a {
            color: rgba(255, 255, 255, 0.8);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-section ul li a:hover {
            color: white;
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }

            .hero-section {
                padding: 60px 0;
            }

            .content-box {
                padding: 20px;
            }

            .stat-item h3 {
                font-size: 2rem;
            }
        }

        @keyframes fadeInUp {
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

<!-- Hero Section -->
<section class="hero-section">
    <div class="hero-content">
        <h1>Welcome to SLMS</h1>
        <p>Empowering education through innovative learning management solutions</p>
        <a href="#features" class="btn btn-light btn-custom">Get Started</a>
    </div>
</section>

<div class="container">
    <!-- Features Section -->
    <section id="features" class="mb-5">
        <div class="row">
            <div class="col-md-4" data-aos="fade-up">
                <div class="feature-card">
                    <img src="https://res.cloudinary.com/dud9b3xva/image/upload/v1731650450/adminimage_umuig9.jpg" alt="Admin Features">
                    <h3>For Administrators</h3>
                    <p>Comprehensive tools for managing users, courses, and system settings.</p>
                </div>
            </div>
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                <div class="feature-card">
                    <img src="https://res.cloudinary.com/dud9b3xva/image/upload/v1731650632/facultyimage_u5ze8s.jpg" alt="Instructor Features">
                    <h3>For Faculty</h3>
                    <p>Create courses, manage assignments, and track student progress effortlessly.</p>
                </div>
            </div>
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-card">
                    <img src="https://res.cloudinary.com/dud9b3xva/image/upload/v1731650723/student_t9m2ni.jpg" alt="Student Features">
                    <h3>For Students</h3>
                    <p>Access course materials, submit assignments, and track your learning journey.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="stats-section" data-aos="fade-up">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <h3>1000+</h3>
                        <p>Active Students</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <h3>100+</h3>
                        <p>Expert Instructors</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <h3>500+</h3>
                        <p>Courses</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <h3>95%</h3>
                        <p>Satisfaction Rate</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="content-box" data-aos="fade-up">
        <div class="row align-items-center">
            <div class="col-md-6">
                <h2>About SLMS</h2>
                <p>Our Learning Management System is designed to create an engaging and effective learning environment. We combine cutting-edge technology with pedagogical best practices to deliver an exceptional educational experience.</p>
                <a href="#" class="btn btn-primary btn-custom mt-3">Learn More</a>
            </div>
            <div class="col-md-6">
                <img src="https://res.cloudinary.com/dud9b3xva/image/upload/v1731650317/background_rtcvzu.webp" alt="About SLMS" class="img-fluid rounded">
            </div>
        </div>
    </section>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="footer-content">
        <div class="footer-section">
            <h4>SLMS</h4>
            <p>Empowering education through innovation and technology.</p>
        </div>
        <div class="footer-section">
            <h4>Quick Links</h4>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Courses</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
        <div class="footer-section">
            <h4>Contact</h4>
            <p>Email: support@slms.com</p>
            <p>Phone: +1 (555) 123-4567</p>
        </div>
    </div>
</footer>

<!-- AOS Animation Library -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>
</body>
</html>
