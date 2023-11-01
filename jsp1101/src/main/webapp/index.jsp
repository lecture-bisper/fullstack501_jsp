<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>JSP - Hello World</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>
</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>

<div class="container mt-5">
  <h2 class="text-center">커넥션 풀 사용하기</h2>
  <ul class="my-3">
    <li><a href="connectionPoolTest.jsp" target="_blank" class="btn btn-link">connectionPoolTest.jsp</a> </li>
  </ul>

  <br><hr><br>

  <h2 class="text-center">세션 사용하기</h2>
  <ul>
    <li><a href="chap06/LoginForm.jsp" target="_blank" class="btn btn-link">LoginForm.jsp</a> </li>
  </ul>
</div>
</body>
</html>