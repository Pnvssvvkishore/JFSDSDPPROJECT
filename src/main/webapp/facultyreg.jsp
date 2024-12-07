<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --accent-color: #e74c3c;
            --background: #f0f2f5;
            --form-bg: #ffffff;
            --text-dark: #2c3e50;
            --text-light: #7f8c8d;
            --border-color: #e2e8f0;
            --input-bg: #f8fafc;
            --shadow-color: rgba(44, 62, 80, 0.1);
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--background);
            min-height: 100vh;
            position: relative;
        }

        .container {
            margin: 2rem auto 4rem;
            max-width: 800px;
        }

        .form-container {
            background: var(--form-bg);
            padding: 3rem;
            border-radius: 20px;
            box-shadow: 0 15px 30px var(--shadow-color);
            position: relative;
            overflow: hidden;
        }

        /* Decorative elements */
        .form-container::before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            width: 150px;
            height: 150px;
            background: linear-gradient(135deg, var(--secondary-color) 0%, transparent 100%);
            opacity: 0.1;
            border-radius: 0 20px 0 150px;
        }

        h3 {
            color: var(--primary-color);
            font-weight: 700;
            font-size: 2rem;
            margin-bottom: 2rem;
            position: relative;
            padding-bottom: 1rem;
        }

        h3::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background: linear-gradient(90deg, var(--secondary-color), var(--accent-color));
            border-radius: 2px;
        }

        .form-label {
            color: var(--text-dark);
            font-weight: 500;
            font-size: 0.95rem;
            margin-bottom: 0.5rem;
        }

        .form-control {
            border: 2px solid var(--border-color);
            border-radius: 12px;
            padding: 0.8rem 1.2rem;
            background: var(--input-bg);
            transition: all 0.3s ease;
            font-size: 1rem;
        }

        .form-control:focus {
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 4px rgba(52, 152, 219, 0.1);
            background: white;
        }

        .input-group {
            position: relative;
            margin-bottom: 1.5rem;
        }

        .input-group i {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-light);
            transition: all 0.3s ease;
        }

        .form-control:focus + i {
            color: var(--secondary-color);
        }

        .btn {
            padding: 0.8rem 2rem;
            border-radius: 50px;
            font-weight: 600;
            transition: all 0.3s ease;
            font-size: 1rem;
        }

        .btn-primary {
            background: linear-gradient(45deg, var(--secondary-color), var(--primary-color));
            border: none;
            box-shadow: 0 5px 15px rgba(52, 152, 219, 0.2);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(52, 152, 219, 0.3);
            background: linear-gradient(45deg, var(--primary-color), var(--secondary-color));
        }

        .btn-secondary {
            background: #95a5a6;
            border: none;
            box-shadow: 0 5px 15px rgba(149, 165, 166, 0.2);
        }

        .btn-secondary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(149, 165, 166, 0.3);
            background: #7f8c8d;
        }

        /* Animation */
        @keyframes slideUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .form-container {
            animation: slideUp 0.6s ease-out forwards;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                margin: 1rem auto;
                padding: 0 1rem;
            }

            .form-container {
                padding: 2rem;
            }

            h3 {
                font-size: 1.5rem;
            }

            .btn {
                padding: 0.7rem 1.5rem;
            }
        }

        /* Form Row Styling */
        .form-row {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.5rem;
            margin-bottom: 1.5rem;
        }

        @media (max-width: 576px) {
            .form-row {
                grid-template-columns: 1fr;
                gap: 1rem;
            }
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <div class="container">
        <div class="form-container">
            <h3 class="text-center">Faculty Registration Form</h3>

            <form method="post" action="insertfaculty">
                <div class="form-row">
                    <div class="mb-3">
                        <label for="fid" class="form-label">Faculty ID</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="fid" id="fid" required>
                            <i class="fas fa-id-card"></i>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="fname" class="form-label">Faculty Name</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="fname" id="fname" required>
                            <i class="fas fa-user"></i>
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="mb-3">
                        <label for="fdepartment" class="form-label">Department</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="fdepartment" id="fdepartment" required>
                            <i class="fas fa-building"></i>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="fdesignation" class="form-label">Designation</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="fdesignation" id="fdesignation" required>
                            <i class="fas fa-briefcase"></i>
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="mb-3">
                        <label for="fqualification" class="form-label">Qualification</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="fqualification" id="fqualification" required>
                            <i class="fas fa-graduation-cap"></i>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="femail" class="form-label">Email ID</label>
                        <div class="input-group">
                            <input type="email" class="form-control" name="femail" id="femail" required>
                            <i class="fas fa-envelope"></i>
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="mb-3">
                        <label for="fusername" class="form-label">Username</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="fusername" id="fusername" required>
                            <i class="fas fa-user-circle"></i>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="fpwd" class="form-label">Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" name="fpwd" id="fpwd" required>
                            <i class="fas fa-lock"></i>
                        </div>
                    </div>
                </div>

                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-primary">
                        <i class="fas fa-save me-2"></i>Submit
                    </button>
                    <button type="reset" class="btn btn-secondary ms-3">
                        <i class="fas fa-redo me-2"></i>Reset
                    </button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>