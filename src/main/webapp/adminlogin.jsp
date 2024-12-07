<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap');

        body {
            background: linear-gradient(135deg, #f6f9fc 0%, #edf2f7 100%);
            font-family: 'Plus Jakarta Sans', sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .login-container {
            max-width: 420px;
            margin: 100px auto;
            padding: 2.5rem;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 16px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.08);
            position: relative;
            overflow: hidden;
            backdrop-filter: blur(10px);
        }

        .login-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, #3b82f6, #2563eb);
        }

        .login-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .login-header h3 {
            color: #1e293b;
            font-weight: 700;
            font-size: 1.75rem;
            margin-bottom: 0.5rem;
        }

        .login-header p {
            color: #64748b;
            font-size: 0.95rem;
            margin-bottom: 0;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-label {
            font-weight: 600;
            font-size: 0.9rem;
            color: #334155;
            margin-bottom: 0.5rem;
            display: block;
        }

        .form-control {
            border: 2px solid #e2e8f0;
            border-radius: 10px;
            padding: 0.75rem 1rem;
            font-size: 1rem;
            transition: all 0.2s ease;
            background: #f8fafc;
        }

        .form-control:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 0 4px rgba(59, 130, 246, 0.1);
            background: #fff;
        }

        .input-group {
            position: relative;
        }

        .input-icon {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: #64748b;
            z-index: 10;
        }

        .input-with-icon {
            padding-left: 2.75rem;
        }

        .btn {
            padding: 0.75rem 1.5rem;
            font-weight: 600;
            border-radius: 10px;
            transition: all 0.2s ease;
        }

        .btn-primary {
            background: linear-gradient(90deg, #3b82f6, #2563eb);
            border: none;
            box-shadow: 0 4px 12px rgba(59, 130, 246, 0.25);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 16px rgba(59, 130, 246, 0.35);
        }

        .btn-reset {
            background: #e2e8f0;
            border: none;
            color: #64748b;
        }

        .btn-reset:hover {
            background: #cbd5e1;
            color: #475569;
        }

        .btn-group {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1rem;
            margin-top: 2rem;
        }

        @media (max-width: 768px) {
            .login-container {
                margin: 2rem;
                padding: 1.5rem;
            }
        }

        /* Animation */
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

        .login-container {
            animation: fadeInUp 0.6s ease-out;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <div class="login-container">
        <div class="login-header">
            <h3>Admin Login</h3>
            <p>Enter your credentials to access the admin panel</p>
        </div>
        <form method="post" action="checkadminlogin">
            <div class="form-group">
                <label for="auname" class="form-label">Username</label>
                <div class="input-group">
                    <i class="bi bi-person input-icon"></i>
                    <input 
                        type="text" 
                        id="auname" 
                        class="form-control input-with-icon" 
                        name="auname" 
                        required
                        placeholder="Enter your username"
                    >
                </div>
            </div>

            <div class="form-group">
                <label for="apwd" class="form-label">Password</label>
                <div class="input-group">
                    <i class="bi bi-lock input-icon"></i>
                    <input 
                        type="password" 
                        id="apwd" 
                        class="form-control input-with-icon" 
                        name="apwd" 
                        required
                        placeholder="Enter your password"
                    >
                </div>
            </div>

            <div class="btn-group">
                <button type="submit" class="btn btn-primary">
                    <i class="bi bi-box-arrow-in-right me-2"></i>Login
                </button>
                <button type="reset" class="btn btn-reset">
                    <i class="bi bi-x-circle me-2"></i>Clear
                </button>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>