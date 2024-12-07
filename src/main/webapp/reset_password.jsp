<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Your Password</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
        }

        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #f6f8f9 0%, #e5ebee 100%);
        }

        .reset-password-container {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            padding: 40px;
            width: 100%;
            max-width: 450px;
            border: 1px solid rgba(0,0,0,0.05);
        }

        .reset-password-container .logo {
            text-align: center;
            margin-bottom: 30px;
        }

        .reset-password-container .logo h2 {
            color: var(--primary-color);
            font-weight: 600;
            margin-bottom: 10px;
        }

        .reset-password-container .logo p {
            color: #6c757d;
            font-size: 0.9rem;
        }

        .form-control {
            padding: 12px 15px;
            border: 1px solid #e0e0e0;
            border-radius: 6px;
        }

        .form-control:focus {
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 0.2rem rgba(52,152,219,0.25);
        }

        .btn-primary {
            background-color: var(--secondary-color);
            border-color: var(--secondary-color);
            padding: 12px 20px;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #2980b9;
            border-color: #2980b9;
        }

        .alert-custom {
            border-radius: 6px;
            padding: 12px 20px;
        }

        .password-strength {
            font-size: 0.8rem;
            margin-top: 0.5rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 col-lg-6">
                <div class="reset-password-container">
                    <div class="logo">
                        <h2>Reset Password</h2>
                        <p>Create a new secure password for your account</p>
                    </div>
                    
                    <form action="/forgotpassword/reset" method="POST">
                        <input type="hidden" name="email" value="${email}" />
                        
                        <div class="mb-4">
                            <label for="newPassword" class="form-label">New Password</label>
                            <input 
                                type="password" 
                                class="form-control" 
                                id="newPassword" 
                                name="newPassword" 
                                placeholder="Enter new password" 
                                required
                                minlength="8"
                                autocomplete="new-password"
                            >
                            <div id="passwordStrength" class="password-strength text-muted"></div>
                        </div>
                        
                        <div class="mb-4">
                            <label for="confirmPassword" class="form-label">Confirm Password</label>
                            <input 
                                type="password" 
                                class="form-control" 
                                id="confirmPassword" 
                                name="confirmPassword" 
                                placeholder="Confirm new password" 
                                required
                                minlength="8"
                                autocomplete="new-password"
                            >
                        </div>
                        
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary" id="submitBtn" disabled>
                                Reset Password
                            </button>
                        </div>
                    </form>

                    <c:if test="${not empty error}">
                        <div class="alert alert-danger alert-custom mt-4" role="alert">
                            <i class="bi bi-exclamation-triangle-fill me-2"></i>${error}
                        </div>
                    </c:if>
                    
                    <c:if test="${not empty message}">
                        <div class="alert alert-success alert-custom mt-4" role="alert">
                            <i class="bi bi-check-circle-fill me-2"></i>${message}
                        </div>
                    </c:if>

                    <div class="text-center mt-4">
                        <a href="/studentlogin" class="text-muted text-decoration-none" style="font-size: 0.9rem;">
                            Back to Login
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
    <!-- Bootstrap Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.0/font/bootstrap-icons.min.css" rel="stylesheet">

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const newPasswordInput = document.getElementById('newPassword');
            const confirmPasswordInput = document.getElementById('confirmPassword');
            const passwordStrengthDiv = document.getElementById('passwordStrength');
            const submitBtn = document.getElementById('submitBtn');

            function checkPasswordStrength(password) {
                if (password.length < 8) return { strength: 'weak', color: 'text-danger' };
                
                const hasUppercase = /[A-Z]/.test(password);
                const hasLowercase = /[a-z]/.test(password);
                const hasNumber = /[0-9]/.test(password);
                const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(password);

                const strengthCount = 
                    [hasUppercase, hasLowercase, hasNumber, hasSpecialChar]
                    .filter(Boolean).length;

                if (strengthCount <= 2) return { strength: 'weak', color: 'text-danger' };
                if (strengthCount <= 3) return { strength: 'medium', color: 'text-warning' };
                return { strength: 'strong', color: 'text-success' };
            }

            function validatePasswords() {
                const newPassword = newPasswordInput.value;
                const confirmPassword = confirmPasswordInput.value;
                
                const strengthResult = checkPasswordStrength(newPassword);
                passwordStrengthDiv.textContent = `Password Strength: ${strengthResult.strength}`;
                passwordStrengthDiv.className = `password-strength ${strengthResult.color}`;

                if (newPassword && confirmPassword && newPassword === confirmPassword) {
                    submitBtn.disabled = false;
                } else {
                    submitBtn.disabled = true;
                }
            }

            newPasswordInput.addEventListener('input', validatePasswords);
            confirmPasswordInput.addEventListener('input', validatePasswords);
        });
    </script>
</body>
</html>