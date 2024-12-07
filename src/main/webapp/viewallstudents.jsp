<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Students</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #34495e;
            --accent-color: #3498db;
            --hover-color: #f8f9fa;
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e7eb 100%);
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            padding: 2rem;
        }

        .page-title {
            color: var(--primary-color);
            font-size: 2.5rem;
            font-weight: 600;
            margin-bottom: 2rem;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .table-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 1.5rem;
            margin-bottom: 2rem;
        }

        .table {
            margin-bottom: 0;
        }

        .table thead th {
            background-color: var(--primary-color);
            color: white;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.9rem;
            padding: 1rem;
            vertical-align: middle;
            border: none;
        }

        .table tbody tr {
            transition: all 0.3s ease;
        }

        .table tbody tr:hover {
            background-color: var(--hover-color);
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .table td {
            padding: 1rem;
            vertical-align: middle;
            color: var(--secondary-color);
            font-size: 0.95rem;
        }

        .program-badge {
            background-color: var(--accent-color);
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 50px;
            font-size: 0.85rem;
            font-weight: 500;
        }

        .action-buttons {
            display: flex;
            gap: 0.5rem;
            justify-content: center;
        }

        .btn-update, .btn-delete {
            padding: 0.5rem 1rem;
            border-radius: 8px;
            font-weight: 500;
            transition: all 0.3s ease;
            min-width: 100px;
        }

        .btn-update {
            background-color: #f39c12;
            border: none;
            color: white;
        }

        .btn-update:hover {
            background-color: #e67e22;
            transform: translateY(-2px);
        }

        .btn-delete {
            background-color: #e74c3c;
            border: none;
            color: white;
        }

        .btn-delete:hover {
            background-color: #c0392b;
            transform: translateY(-2px);
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .table-container {
                overflow-x: auto;
                padding: 1rem;
            }

            .action-buttons {
                flex-direction: column;
            }

            .btn-update, .btn-delete {
                width: 100%;
            }
        }

        /* Empty State */
        .empty-state {
            text-align: center;
            padding: 3rem;
            color: var(--secondary-color);
        }

        .empty-state i {
            font-size: 4rem;
            margin-bottom: 1rem;
            color: var(--accent-color);
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    
    <div class="container">
        <h1 class="page-title">
            <i class="fas fa-users me-2"></i>Student Directory
        </h1>

        <div class="table-container">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th><i class="fas fa-id-card me-2"></i>ID</th>
                            <th><i class="fas fa-user me-2"></i>Name</th>
                            <th><i class="fas fa-venus-mars me-2"></i>Gender</th>
                            <th><i class="fas fa-calendar me-2"></i>Date of Birth</th>
                            <th><i class="fas fa-envelope me-2"></i>Email</th>
                            <th><i class="fas fa-user-circle me-2"></i>Username</th>
                            <th><i class="fas fa-graduation-cap me-2"></i>Program</th>
                            <th><i class="fas fa-map-marker-alt me-2"></i>Location</th>
                            <th><i class="fas fa-phone me-2"></i>Contact</th>
                            <th><i class="fas fa-cogs me-2"></i>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${empty studentlist}">
                                <tr>
                                    <td colspan="10" class="empty-state">
                                        <i class="fas fa-user-graduate"></i>
                                        <h3>No Students Found</h3>
                                        <p>There are currently no students in the system.</p>
                                    </td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${studentlist}" var="student">
                                    <tr>
                                        <td>${student.id}</td>
                                        <td>${student.name}</td>
                                        <td>${student.gender}</td>
                                        <td>${student.dateOfBirth}</td>
                                        <td>${student.email}</td>
                                        <td>${student.username}</td>
                                        <td><span class="program-badge">${student.program}</span></td>
                                        <td>${student.location}</td>
                                        <td>${student.contact}</td>
                                        <td>
                                            <div class="action-buttons">
                                                <a href="updateStudent?id=${student.id}" class="btn btn-update">
                                                    <i class="fas fa-edit me-1"></i>Update
                                                </a>
                                                <a href="deleteStudent?id=${student.id}" 
                                                   class="btn btn-delete"
                                                   onclick="return confirm('Are you sure you want to delete this student? This action cannot be undone.')">
                                                    <i class="fas fa-trash-alt me-1"></i>Delete
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>