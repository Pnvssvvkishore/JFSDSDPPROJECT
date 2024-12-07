<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Assignment</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <h1>Upload Assignment</h1>
    <form action="/assignments/upload" method="post" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br>

        <label for="description">Description:</label>
        <input type="text" id="description" name="description" required><br>

        <label for="courseCode">Course Code:</label>
        <input type="text" id="courseCode" name="courseCode" required><br>

        <label for="courseName">Course Name:</label>
        <input type="text" id="courseName" name="courseName" required><br>

        <label for="file">File:</label>
        <input type="file" id="file" name="file" required><br>

        <button type="submit">Upload</button>
    </form>
</body>
</html>
