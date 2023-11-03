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
  <h2>액션 태그 사용하기</h2>
  <ul>
    <li><a href="./chap07/IncludeMain.jsp" class="btn btn-link" target="_blank">IncludeMain.jsp</a></li>
    <li><a href="./chap07/ForwardMain.jsp" class="btn btn-link" target="_blank">ForwardMain.jsp</a></li>
    <li><a href="./chap07/UseBeanMain.jsp" class="btn btn-link" target="_blank">UseBeanMain.jsp</a></li>
    <li><a href="./chap07/UseBeanForm.jsp" class="btn btn-link" target="_blank">UseBeanForm.jsp</a></li>
    <li><a href="./chap07/ParamMain.jsp" class="btn btn-link" target="_blank">ParamMain.jsp</a></li>
    <li><a href="./chap07/form.jsp" class="btn btn-link" target="_blank">form.jsp</a></li>
  </ul>
</div>
</body>
</html>