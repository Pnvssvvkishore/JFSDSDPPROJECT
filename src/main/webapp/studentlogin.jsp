<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #f3f4f6 0%, #e5e7eb 100%);
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-container {
            max-width: 420px;
            width: 100%;
            margin: 0 auto;
            padding: 2.5rem;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 24px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }

        .login-container:hover {
            transform: translateY(-8px);
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.12);
        }

        .login-container h3 {
            text-align: center;
            margin-bottom: 2rem;
            color: #4338ca;
            font-weight: 700;
            font-size: 2rem;
            letter-spacing: -0.5px;
        }

        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .form-control {
            padding: 0.875rem 1.25rem;
            border: 2px solid #e5e7eb;
            border-radius: 12px;
            transition: all 0.3s ease;
            font-size: 1rem;
        }

        .form-control:focus {
            border-color: #4338ca;
            box-shadow: 0 0 0 4px rgba(67, 56, 202, 0.1);
        }

        .password-toggle {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            color: #6b7280;
            z-index: 10;
        }

        .btn-login {
            background: linear-gradient(135deg, #4338ca 0%, #5b21b6 100%);
            color: white;
            border: none;
            transition: all 0.3s ease;
        }

        .btn-login:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(67, 56, 202, 0.3);
        }

        .error-message {
            color: #ef4444;
            font-size: 0.875rem;
            margin-top: 0.5rem;
            display: none;
        }

        @media (max-width: 480px) {
            .login-container {
                margin: 1rem;
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <div class="login-container">
        <h3>Student Login</h3>
        <form id="loginForm" method="post" action="checkstudentlogin" novalidate>
            <div class="form-group">
                <label for="susername" class="form-label">Username</label>
                <input type="text" id="susername" class="form-control" name="susername" 
                       required minlength="3" maxlength="50"
                       aria-describedby="usernameError">
                <div id="usernameError" class="error-message">
                    Username must be at least 3 characters long
                </div>
            </div>

            <div class="form-group position-relative">
                <label for="spwd" class="form-label">Password</label>
                <input type="password" id="spwd" class="form-control" name="spwd" 
                       required minlength="6"
                       aria-describedby="passwordError">
                <span class="password-toggle" onclick="togglePassword()">
                    <i id="passwordToggleIcon" class="fas fa-eye-slash"></i>
                </span>
                <div id="passwordError" class="error-message">
                    Password must be at least 6 characters long
                </div>
            </div>

            <button type="submit" class="btn btn-login w-100 mt-3">Login</button>
            <div class="text-center mt-3">
                <a href="forgotpassword" class="text-primary">Forgot Password?</a>
            </div>
        </form>
    </div>

    <script>
        function togglePassword() {
            const passwordField = document.getElementById('spwd');
            const passwordToggleIcon = document.getElementById('passwordToggleIcon');
            
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                passwordToggleIcon.classList.remove('fa-eye-slash');
                passwordToggleIcon.classList.add('fa-eye');
            } else {
                passwordField.type = 'password';
                passwordToggleIcon.classList.remove('fa-eye');
                passwordToggleIcon.classList.add('fa-eye-slash');
            }
        }

        document.getElementById('loginForm').addEventListener('submit', function(event) {
            let isValid = true;
            const username = document.getElementById('susername');
            const password = document.getElementById('spwd');
            const usernameError = document.getElementById('usernameError');
            const passwordError = document.getElementById('passwordError');

            // Reset previous error states
            username.classList.remove('is-invalid');
            password.classList.remove('is-invalid');
            usernameError.style.display = 'none';
            passwordError.style.display = 'none';

            // Validate username
            if (username.value.length < 3) {
                username.classList.add('is-invalid');
                usernameError.style.display = 'block';
                isValid = false;
            }

            // Validate password
            if (password.value.length < 6) {
                password.classList.add('is-invalid');
                passwordError.style.display = 'block';
                isValid = false;
            }

            if (!isValid) {
                event.preventDefault();
            }
        });
    </script>
</body>
</html>