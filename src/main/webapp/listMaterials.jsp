<!DOCTYPE html>
<html>
<head>
    <title>List of Materials</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Uploaded Materials</h2>
        <c:if test="${files != null}">
            <ul class="list-group mt-4">
                <c:forEach items="${files}" var="fileName">
                    <li class="list-group-item">
                        <a href="/download/${fileName}" class="btn btn-link">${fileName}</a>
                    </li>
                </c:forEach>
            </ul>
        </c:if>
        <c:if test="${message != null}">
            <p class="text-danger">${message}</p>
        </c:if>
    </div>
</body>
</html>
