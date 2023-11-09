<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <h2>EL언어 사용하기</h2>

  <ul>
    <li><a href="./chap10/Operator2.jsp" target="_blank" class="btn btn-link">Operator2</a></li>
    <li><a href="./chap10/ELCallMethod.jsp" target="_blank" class="btn btn-link">ELCallMethod</a></li>
  </ul>

  <br><hr><br>

  <h2>JSTL 사용하기</h2>

  <ul>
    <li><a href="./chap11/Gugudan.jsp" target="_blank" class="btn btn-link">Gugudan</a></li>
    <li><a href="./chap11/Set1.jsp" target="_blank" class="btn btn-link">Set1</a></li>
    <li><a href="./chap11/Set2.jsp" target="_blank" class="btn btn-link">Set2</a></li>
    <li><a href="./chap11/Remove.jsp" target="_blank" class="btn btn-link">Remove</a></li>
    <li><a href="./chap11/If.jsp" target="_blank" class="btn btn-link">If</a></li>
    <li><a href="./chap11/Choose.jsp" target="_blank" class="btn btn-link">Choose</a></li>
    <li><a href="./chap11/ForEachNormal.jsp" target="_blank" class="btn btn-link">ForEachNormal</a></li>
  </ul>
</div>
</body>
</html>