<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="text-center mb-4">Update Student Details</h2>

        <form action="<c:url value='/updateStudent' />" method="post" class="shadow p-4 bg-white rounded">
            <input type="hidden" name="id" value="${student.id}" />

            <div class="form-group">
                <label for="name">Student Name:</label>
                <input type="text" class="form-control" id="name" name="name" value="${student.name}" required />
            </div>

            <div class="form-group">
                <label for="gender">Gender:</label>
                <input type="text" class="form-control" id="gender" name="gender" value="${student.gender}" required />
            </div>

            <div class="form-group">
                <label for="dateOfBirth">Date of Birth:</label>
                <input type="text" class="form-control" id="dateOfBirth" name="dateOfBirth" value="${student.dateOfBirth}" required />
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" value="${student.email}" required />
            </div>

            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" class="form-control" id="location" name="location" value="${student.location}" required />
            </div>

            <div class="form-group">
                <label for="contact">Contact:</label>
                <input type="text" class="form-control" id="contact" name="contact" value="${student.contact}" required />
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" value="${student.password}" required />
            </div>

            <div class="form-group">
                <label for="program">Program:</label>
                <input type="text" class="form-control" id="program" name="program" value="${student.program}" required />
            </div>

            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" value="${student.username}" required />
            </div>

            <button type="submit" class="btn btn-primary btn-block">Update Student</button>
        </form>

        <div class="text-center mt-3">
            <a href="<c:url value='/viewallstudents' />" class="btn btn-link">Back to Student List</a>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
