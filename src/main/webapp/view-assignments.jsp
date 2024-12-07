<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Assignments</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <h1>View Assignments</h1>
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Course Code</th>
                <th>Course Name</th>
                <th>File</th>
            </tr>
        </thead>
        <tbody>
            <!-- Check if assignments exist -->
            <tr th:if="${#lists.isEmpty(assignments)}">
                <td colspan="5">No assignments available.</td>
            </tr>
            <!-- Iterate through the assignments -->
            <tr th:each="assignment : ${assignments}">
                <td th:text="${assignment.title}"></td>
                <td th:text="${assignment.description}"></td>
                <td th:text="${assignment.courseCode}"></td>
                <td th:text="${assignment.courseName}"></td>
                <td><a th:href="@{/assignments/{id}/download(id=${assignment.id})}">Download</a></td>
            </tr>
        </tbody>
    </table>
    <a href="/assignments/upload">Upload New Assignment</a>
</body>
</html>
