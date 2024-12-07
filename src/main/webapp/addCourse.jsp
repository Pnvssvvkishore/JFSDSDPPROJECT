<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="adminnavbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Course</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom CSS Styling */
        body {
            background-color: #f0f2f5;
            font-family: Arial, sans-serif;
        }
        .custom-form-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 30px;
            margin-top: 50px;
            max-width: 500px;
            margin-left: auto;
            margin-right: auto;
        }
        .custom-form-title {
            color: #333;
            text-align: center;
            margin-bottom: 25px;
            font-weight: bold;
        }
        .custom-input {
            margin-bottom: 15px;
            border-radius: 4px;
            padding: 10px;
            border: 1px solid #ddd;
        }
        .custom-label {
            font-weight: 600;
            color: #555;
            margin-bottom: 5px;
        }
        .custom-submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: white;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        .custom-submit-btn:hover {
            background-color: #0056b3;
        }
        .custom-message {
            margin-top: 15px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="custom-form-container">
            <h2 class="custom-form-title">Add Course</h2>
            <form action="add-course" method="post">
                <div class="form-group">
                    <label for="courseCode" class="custom-label">Course Code:</label>
                    <input type="text" class="form-control custom-input" id="courseCode" name="courseCode" required>
                </div>
                <div class="form-group">
                    <label for="courseName" class="custom-label">Course Name:</label>
                    <input type="text" class="form-control custom-input" id="courseName" name="courseName" required>
                </div>
                <div class="form-group">
                    <label for="year" class="custom-label">Year:</label>
                    <input type="text" class="form-control custom-input" id="year" name="year" required>
                </div>
                <button type="submit" class="custom-submit-btn">Add Course</button>
                <p class="custom-message text-success">${message}</p>
            </form>
        </div>
    </div>
</body>
</html>