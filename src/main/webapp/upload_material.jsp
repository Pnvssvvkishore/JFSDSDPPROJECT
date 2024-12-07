<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Material</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
        }

        .upload-container {
            max-width: 500px;
            margin: 100px auto;
            padding: 30px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border: 1px solid #e1e6eb;
            position: relative;
        }

        .upload-header {
            text-align: center;
            color: #2b4162;
            margin-bottom: 25px;
            position: relative;
        }

        .upload-header::after {
            content: '';
            display: block;
            width: 50px;
            height: 3px;
            background: #64ffda;
            margin: 10px auto 0;
        }

        .form-label {
            font-weight: 500;
            color: #2b4162;
        }

        .form-control {
            border: 1px solid #cfd8e3;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #64ffda;
            box-shadow: 0 0 0 0.2rem rgba(100, 255, 218, 0.25);
        }

        .btn-upload {
            background: linear-gradient(135deg, #2b4162 0%, #12100e 100%);
            border: none;
            color: #64ffda;
            font-weight: 600;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .btn-upload:hover {
            background: linear-gradient(135deg, #1a2d42 0%, #000000 100%);
            transform: translateY(-2px);
            color: white;
        }

        .file-input-wrapper {
            position: relative;
            overflow: hidden;
        }

        .file-input-wrapper input[type=file] {
            font-size: 100px;
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
        }

        .file-input-wrapper .btn-file-choose {
            background-color: #f1f3f5;
            color: #2b4162;
            border: 1px dashed #cfd8e3;
        }

        .file-name {
            margin-top: 10px;
            color: #2b4162;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <div class="upload-container">
        <h2 class="upload-header">Upload Course Material</h2>
        <form th:action="@{/uploadmaterial}" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="course" class="form-label">Course Name</label>
                <input type="text" class="form-control" id="course" name="course" placeholder="Enter course name" required>
            </div>
            
            <div class="mb-3">
                <label for="courseCode" class="form-label">Course Code</label>
                <input type="text" class="form-control" id="courseCode" name="courseCode" placeholder="Enter course code" required>
            </div>
            
            <div class="mb-3">
                <label for="file" class="form-label">File Upload</label>
                <div class="file-input-wrapper">
                    <input type="file" class="form-control" id="file" name="file" required 
                           onchange="document.getElementById('file-chosen').textContent = this.files[0].name">
                    <button type="button" class="btn btn-file-choose w-100 mt-2">
                        <i class="bi bi-cloud-upload me-2"></i>Choose File
                    </button>
                </div>
                <div id="file-chosen" class="file-name text-center"></div>
            </div>
            
            <div class="d-grid">
                <button type="submit" class="btn btn-upload">
                    <i class="bi bi-cloud-upload-fill"></i> Upload Material
                </button>
            </div>
        </form>
        
        <p th:if="${message}" class="mt-3 text-center text-danger" th:text="${message}"></p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    <script>
        // Optional: Prevent form resubmission on page refresh
        if ( window.history.replaceState ) {
            window.history.replaceState( null, null, window.location.href );
        }
    </script>
</body>
</html>