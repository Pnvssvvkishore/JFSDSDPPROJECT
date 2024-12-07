<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Reset Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }
        input[type="password"] {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #218838;
        }
        .message {
            color: green;
            margin-top: 15px;
            text-align: center;
        }
        .error {
            color: red;
            margin-top: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Reset Password</h1>
    <form action="/faculty/forgotpassword/reset" method="post">
        <input type="hidden" name="email" value="${email}">
        <div class="form-group">
            <label for="newPassword">Enter new password:</label>
            <input type="password" id="newPassword" name="newPassword" required>
        </div>
        <button type="submit" class="btn">Reset Password</button>
    </form>
    <div class="message">${message}</div>
    <div class="error">${error}</div>
</div>
</body>
</html>
