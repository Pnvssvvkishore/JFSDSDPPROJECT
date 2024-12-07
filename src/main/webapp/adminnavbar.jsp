<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Navbar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        /* Existing CSS styles */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }

        .navbar {
            padding: 15px 30px;
            background: linear-gradient(135deg, #2b4162 0%, #12100e 100%);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .top-title {
            color: #ffffff;
            text-align: center;
            font-weight: 600;
            font-size: 1.25rem;
            margin-bottom: 10px;
            padding-bottom: 10px;
            border-bottom: 1px solid rgba(100, 255, 218, 0.2);
        }

        .navbar-brand {
            color: #ffffff !important;
            font-weight: 700;
            font-size: 26px;
            letter-spacing: 1px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .navbar-brand i {
            color: #64ffda;
            font-size: 28px;
        }

        .navbar-nav {
            gap: 10px;
        }

        .navbar-nav .nav-link {
            color: #ffffff !important;
            font-weight: 500;
            font-size: 16px;
            padding: 8px 16px;
            border-radius: 8px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .navbar-nav .nav-link i {
            font-size: 18px;
            color: #64ffda;
            transition: all 0.3s ease;
        }

        .navbar-nav .nav-link:hover {
            background: rgba(100, 255, 218, 0.1);
            transform: translateY(-2px);
        }

        .navbar-nav .nav-link:hover i {
            transform: scale(1.1);
        }

        .navbar-nav .nav-link.logout-link {
            background: rgba(231, 76, 60, 0.9);
            color: white !important;
            padding: 8px 20px;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .navbar-nav .nav-link.logout-link:hover {
            background: rgba(231, 76, 60, 1);
            transform: translateY(-2px);
        }

        .navbar-nav .nav-link.logout-link i {
            color: white;
        }

        .navbar-toggler {
            border: none;
            padding: 0;
        }

        .navbar-toggler:focus {
            box-shadow: none;
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba(100, 255, 218, 1)' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        @media (max-width: 991px) {
            .navbar-collapse {
                background: linear-gradient(135deg, #2b4162 0%, #12100e 100%);
                margin: 15px -30px -15px;
                padding: 20px;
                border-top: 1px solid rgba(100, 255, 218, 0.1);
            }

            .navbar-nav .nav-link {
                padding: 12px 20px;
            }
        }

        .navbar.scrolled {
            padding: 10px 30px;
            background: rgba(43, 65, 98, 0.95);
            backdrop-filter: blur(10px);
        }

        html {
            scroll-padding-top: 120px;
        }

        .main-content {
            padding-top: 120px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid flex-column">
            <div class="top-title w-100">
                Student Learning Management System
            </div>
            <div class="w-100 d-flex align-items-center">
                <a class="navbar-brand" href="adminhome"><i class="bi bi-mortarboard"></i>SLMS</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#adminNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <div class="collapse navbar-collapse" id="adminNavbar">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="adminhome">
                                <i class="bi bi-house"></i>Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="studentreg">
                                <i class="bi bi-person-plus"></i>Student Registration
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="viewallstudents">
                                <i class="bi bi-list-ul"></i>View All Students
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="facultyreg">
                                <i class="bi bi-person-plus"></i>Faculty Registration
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="viewallfaculty">
                                <i class="bi bi-list-ul"></i>View All Faculty
                            </a>
                        </li>
                        <!-- Add Course link added -->
                   <li class="nav-item">
                    <a class="nav-link" href="/add-course">Add Course</a>
                </li>
              
                        
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link logout-link" href="adminlogin">
                                <i class="bi bi-box-arrow-right"></i>Logout
                            </a>
                        </li>
                    </ul>
                    
                </div>
            </div>
        </div>
    </nav>

    <div class="main-content">
        <!-- Your page content goes here -->
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    <script>
        window.addEventListener('scroll', function() {
            const navbar = document.querySelector('.navbar');
            if (window.scrollY > 50) {
                navbar.classList.add('scrolled');
            } else {
                navbar.classList.remove('scrolled');
            }
        });
    </script>
</body>
</html>
