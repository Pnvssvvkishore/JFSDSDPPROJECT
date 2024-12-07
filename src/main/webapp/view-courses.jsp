<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="studentnavbar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Courses</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f8;
        }
        .course-card {
            transition: all 0.3s ease;
            margin-bottom: 20px;
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            cursor: pointer;
        }
        .course-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.15);
        }
        /* Previous styles remain the same */
       
.course-header {
  background-color: #007bff;
  color: white;
  padding: 15px;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}
.course-body {
  padding: 20px;
}
.course-footer {
  background-color: #f8f9fa;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
  padding: 10px 20px;
}
.page-title {
  color: #333;
  margin-bottom: 30px;
  text-align: center;
}
    </style>
</head>
<body>
    <div class="container py-5">
        <h2 class="page-title">
            <i class="bi bi-journal-bookmark me-2"></i>Course Catalog
        </h2>
        
        <div class="row">
            <c:forEach var="course" items="${courses}">
                <div class="col-md-4 col-lg-3 col-sm-6">
                    <div class="card course-card" onclick="showCourseDetails('${course.id}', '${course.courseCode}', '${course.courseName}', '${course.year}')">
                        <div class="course-header d-flex justify-content-between align-items-center">
                            <h5 class="mb-0">
                                <i class="bi bi-code-slash me-2"></i>${course.courseCode}
                            </h5>
                            <span class="badge bg-light text-dark">${course.year}</span>
                        </div>
                        <div class="course-body">
                            <h6 class="card-title text-dark mb-3">
                                <i class="bi bi-book me-2 text-primary"></i>${course.courseName}
                            </h6>
                            <div class="course-details text-muted">
                                <p class="mb-1">
                                    <strong>Course ID:</strong> ${course.id}
                                </p>
                            </div>
                        </div>
                        <div class="course-footer text-end">
                            <small class="text-muted">
                                <i class="bi bi-clock me-1"></i>Academic Year: ${course.year}
                            </small>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        
        <c:if test="${empty courses}">
            <div class="alert alert-info text-center" role="alert">
                <i class="bi bi-info-circle me-2"></i>No courses available
            </div>
        </c:if>
    </div>

    <!-- Course Details Modal -->
    <div class="modal fade" id="courseDetailsModal" tabindex="-1" aria-labelledby="courseDetailsModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="courseDetailsModalLabel">Course Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="courseDetailsContent">
                    <!-- Dynamic content will be inserted here -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function showCourseDetails(courseId, courseCode, courseName, year) {
            // Get the modal elements
            const modalTitle = document.getElementById('courseDetailsModalLabel');
            const modalContent = document.getElementById('courseDetailsContent');

            // Set the modal title
            modalTitle.textContent = `${courseCode} - ${courseName}`;

            // Populate the modal content
            // In a real application, you would typically fetch more details from the server
            modalContent.innerHTML = `
                <div class="row">
                    <div class="col-md-6">
                        <h6>Course Information</h6>
                        <p><strong>Course ID:</strong> ${courseId}</p>
                        <p><strong>Course Code:</strong> ${courseCode}</p>
                        <p><strong>Course Name:</strong> ${courseName}</p>
                        <p><strong>Academic Year:</strong> ${year}</p>
                    </div>
                    <div class="col-md-6">
                        <h6>Additional Details</h6>
                        <p>Description, prerequisites, and other course-specific information would go here.</p>
                        <p>In a real application, this would be dynamically populated from your backend.</p>
                    </div>
                </div>
            `;

            // Show the modal
            const courseModal = new bootstrap.Modal(document.getElementById('courseDetailsModal'));
            courseModal.show();
        }
    </script>
</body>
</html>