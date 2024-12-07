<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <div class="container mt-5">
        <h3 class="text-center mb-4">Student Registration Form</h3>

        <form method="post" action="insertstudent" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="sid" class="form-label">Enter ID Number</label>
                <input type="text" class="form-control" name="sid" id="sid" required>
            </div>

            <div class="mb-3">
                <label for="sname" class="form-label">Enter Student Name</label>
                <input type="text" class="form-control" name="sname" id="sname" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Select Gender</label>
                <div>
                    <input type="radio" class="form-check-input" name="sgender" value="Male" required> Male
                    <input type="radio" class="form-check-input" name="sgender" value="Female" required> Female
                    <input type="radio" class="form-check-input" name="sgender" value="Others" required> Others
                </div>
            </div>

            <div class="mb-3">
                <label for="sdob" class="form-label">Select Date of Birth</label>
                <input type="date" name="sdob" class="form-control" id="sdob" required>
            </div>

            <div class="mb-3">
                <label for="semail" class="form-label">Enter Email ID</label>
                <input type="email" name="semail" class="form-control" id="semail" required>
            </div>

            <div class="mb-3">
                <label for="susername" class="form-label">Enter Username</label>
                <input type="text" class="form-control" name="susername" id="susername" required>
            </div>

            <div class="mb-3">
                <label for="spwd" class="form-label">Enter Password</label>
                <input type="password" class="form-control" name="spwd" id="spwd" required>
            </div>

            <div class="mb-3">
                <label for="sprogram" class="form-label">Select Program</label>
                <select name="sprogram" class="form-select" id="sprogram" required>
                    <option value="BTech">BTech</option>
                    <option value="MTech">MTech</option>
                    <option value="MBA">MBA</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="slocation" class="form-label">Enter Location</label>
                <input type="text" class="form-control" name="slocation" id="slocation" required>
            </div>

            <div class="mb-3">
                <label for="scontact" class="form-label">Enter Contact Number</label>
                <input type="text" class="form-control" name="scontact" id="scontact" required>
            </div>

           

            <!-- Centering the buttons -->
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-secondary ms-3">Reset</button>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
