<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Navbar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
        }

        .navbar {
            padding: 15px 30px;
            background: linear-gradient(90deg, #2c3e50, #3498db); /* Professional dark blue gradient */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar-brand {
            font-size: 22px;
            font-weight: 600;
            padding: 8px 15px;
            border-radius: 6px;
            color: #ffffff !important;
            transition: all 0.3s ease;
        }

        .navbar-brand:hover {
            background-color: rgba(255, 255, 255, 0.1);
            color: #e0e0e0 !important;
        }

        .navbar-brand i {
            margin-right: 8px;
            font-size: 24px;
            vertical-align: middle;
            color: #e0e0e0;
        }

        .navbar-nav {
            margin-left: auto;
            align-items: center;
        }

        .nav-item {
            margin: 0 5px;
        }

        .nav-link {
            color: #e0e0e0 !important;
            font-weight: 500;
            font-size: 15px;
            padding: 8px 16px;
            border-radius: 6px;
            display: flex;
            align-items: center;
            transition: all 0.3s ease;
        }

        .nav-link i {
            margin-right: 8px;
            font-size: 17px;
        }

        .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.1);
            color: #ffffff !important;
        }

        .navbar-toggler {
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 8px;
            border-radius: 6px;
        }

        .navbar-toggler:focus {
            box-shadow: none;
            border-color: rgba(255, 255, 255, 0.3);
        }

        /* Logout button styling */
        .nav-link[href="studentlogout"] {
            background-color: rgba(231, 76, 60, 0.1);
            border: 1px solid rgba(231, 76, 60, 0.3);
        }

        .nav-link[href="studentlogout"]:hover {
            background-color: rgba(231, 76, 60, 0.2);
        }

        @media (max-width: 991px) {
            .navbar-collapse {
                background: #2c3e50;
                margin: 15px -15px -15px;
                padding: 15px;
                border-radius: 8px;
            }

            .nav-item {
                margin: 5px 0;
            }

            .nav-link[href="studentlogout"] {
                margin-top: 10px;
            }
        }

        @media (max-width: 768px) {
            .navbar {
                padding: 10px 15px;
            }

            .navbar-brand {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/"><i class="bi bi-mortarboard"></i>SLMS</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="studenthome"><i class="bi bi-house nav-icon"></i>Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="studentprofile"><i class="bi bi-person nav-icon"></i>Profile</a>
                    </li>
                     <li class="nav-item">
                    <a class="nav-link" href="/view-courses"> Courses</a>
                     <li class="nav-item">
                            <a class="nav-link" href="viewmaterials">
                                <i class="bi bi-file-earmark-text"></i>View Materials
                            </a>
                        </li>
                      
                      
                
                    <li class="nav-item">
                        <a class="nav-link" href="studentlogout"><i class="bi bi-box-arrow-right nav-icon"></i>Logout</a>
                    </li>
                     
                     
                    
                </ul>
            </div>
        </div>
    </nav>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>