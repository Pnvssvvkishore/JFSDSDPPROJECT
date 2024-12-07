<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Faculty</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --accent-color: #e74c3c;
            --background-color: #ecf0f1;
            --table-hover-color: #f5f6fa;
        }

        body {
            background-color: var(--background-color);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .container {
            max-width: 1200px;
            padding: 2rem;
        }

        .page-title {
            color: var(--primary-color);
            font-weight: 600;
            margin-bottom: 2rem;
            position: relative;
            padding-bottom: 0.5rem;
        }

        .page-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 3px;
            background-color: var(--secondary-color);
        }

        .table-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 1rem;
        }

        .table {
            margin-bottom: 0;
        }

        .table thead th {
            background-color: var(--primary-color);
            color: white;
            font-weight: 500;
            text-transform: uppercase;
            font-size: 0.9rem;
            padding: 1rem;
            vertical-align: middle;
            border: none;
        }

        .table tbody tr:hover {
            background-color: var(--table-hover-color);
            transition: background-color 0.3s ease;
        }

        .table td {
            padding: 1rem;
            vertical-align: middle;
            font-size: 0.9rem;
        }

        .btn-group {
            gap: 0.5rem;
        }

        .btn {
            padding: 0.5rem 1rem;
            border-radius: 5px;
            font-weight: 500;
            text-transform: uppercase;
            font-size: 0.8rem;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
        }

        .btn-edit {
            background-color: var(--secondary-color);
            color: white;
            border: none;
        }

        .btn-delete {
            background-color: var(--accent-color);
            color: white;
            border: none;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        @media (max-width: 768px) {
            .container {
                padding: 1rem;
            }

            .table-container {
                padding: 0.5rem;
            }

            .btn {
                padding: 0.4rem 0.8rem;
                font-size: 0.7rem;
            }

            .table td, .table th {
                padding: 0.75rem;
                font-size: 0.8rem;
            }
        }

        /* Custom scrollbar */
        .table-responsive::-webkit-scrollbar {
            width: 8px;
            height: 8px;
        }

        .table-responsive::-webkit-scrollbar-track {
            background: #f1f1f1;
            border-radius: 4px;
        }

        .table-responsive::-webkit-scrollbar-thumb {
            background: var(--secondary-color);
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <h3 class="text-center page-title">View All Faculty</h3>

        <div class="table-container">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Faculty ID</th>
                            <th>Faculty Name</th>
                            <th>Department</th>
                            <th>Designation</th>
                            <th>Qualification</th>
                            <th>Email</th>
                            <th>Username</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${facultylist}" var="faculty">
                            <tr>
                                <td><c:out value="${faculty.id}" /></td>
                                <td><c:out value="${faculty.name}" /></td>
                                <td><c:out value="${faculty.department}" /></td>
                                <td><c:out value="${faculty.designation}" /></td>
                                <td><c:out value="${faculty.qualification}" /></td>
                                <td><c:out value="${faculty.email}" /></td>
                                <td><c:out value="${faculty.username}" /></td>
                                <td>
                                    <div class="btn-group" role="group">
                                        <button class="btn btn-edit">
                                            <i class="fas fa-edit me-1"></i>Edit
                                        </button>
                                        <button class="btn btn-delete">
                                            <i class="fas fa-trash-alt me-1"></i>Delete
                                        </button>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>