<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Course Materials Library</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap');

        :root {
            --background-primary: #f9fafb;
            --background-secondary: #ffffff;
            --text-primary: #1a2b3b;
            --text-secondary: #4a5568;
            --accent-color: #3b82f6;
            --accent-color-hover: #2563eb;
            --border-color: #e2e8f0;
            --shadow-subtle: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            --shadow-hover: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background-color: var(--background-primary);
            color: var(--text-primary);
            line-height: 1.6;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            padding: 2rem 1rem;
        }

        .materials-container {
            width: 100%;
            max-width: 800px;
            background-color: var(--background-secondary);
            border-radius: 16px;
            box-shadow: var(--shadow-subtle);
            overflow: hidden;
            border: 1px solid var(--border-color);
        }

        .header {
            background: linear-gradient(135deg, var(--accent-color), #6366f1);
            color: white;
            padding: 2rem;
            text-align: center;
        }

        .header h1 {
            font-size: 1.75rem;
            font-weight: 700;
            letter-spacing: -0.025em;
        }

        .materials-list {
            padding: 1.5rem;
        }

        .material-item {
            background-color: var(--background-primary);
            border: 1px solid var(--border-color);
            border-radius: 12px;
            padding: 1.25rem;
            margin-bottom: 1rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .material-item::before {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            bottom: 0;
            width: 4px;
            background: linear-gradient(to bottom, var(--accent-color), #6366f1);
            transition: all 0.3s ease;
        }

        .material-item:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-color);
        }

        .material-item:hover::before {
            width: 6px;
        }

        .material-details {
            flex-grow: 1;
            margin-right: 1rem;
        }

        .material-details h3 {
            font-size: 1.125rem;
            font-weight: 600;
            color: var(--accent-color);
            margin-bottom: 0.5rem;
        }

        .material-details .info-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 0.5rem;
            color: var(--text-secondary);
            font-size: 0.875rem;
        }

        .download-btn {
            background: var(--accent-color);
            color: white;
            text-decoration: none;
            padding: 0.75rem 1.25rem;
            border-radius: 8px;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .download-btn:hover {
            background: var(--accent-color-hover);
            transform: translateY(-2px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }

        .no-materials {
            text-align: center;
            padding: 3rem;
            background-color: var(--background-primary);
            border-radius: 12px;
        }

        @media (max-width: 600px) {
            .material-item {
                flex-direction: column;
                text-align: center;
            }

            .material-details .info-grid {
                grid-template-columns: 1fr;
            }

            .download-btn {
                width: 100%;
                justify-content: center;
                margin-top: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="materials-container">
        <div class="header">
            <h1>Course Materials Library</h1>
        </div>

        <c:choose>
            <c:when test="${not empty materials}">
                <div class="materials-list">
                    <c:forEach var="material" items="${materials}">
                        <div class="material-item">
                            <div class="material-details">
                                <h3>${material.course}</h3>
                                <div class="info-grid">
                                    <div><strong>Material ID:</strong> ${material.id}</div>
                                    <div><strong>Course Code:</strong> ${material.courseCode}</div>
                                    <div><strong>File Name:</strong> ${material.fileName}</div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/download/${material.id}" class="download-btn">
                                <i class="fas fa-download"></i> Download
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </c:when>
            <c:otherwise>
                <div class="no-materials">
                    <h2>No Materials Available</h2>
                    <p>There are currently no course materials uploaded to the library.</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>