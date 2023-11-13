<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>JSP - Hello World</title>

  <link rel="stylesheet" href="resources/css/bootstrap.css">
  <script src="resources/js/jquery-3.7.1.js"></script>
  <script src="resources/js/bootstrap.bundle.js"></script>

</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>

<div class="container mt-5">
  <h2>서블릿 사용하기</h2>

  <ul>
    <li><a href="./chap12/AnnoMapping.jsp" target="_blank" class="btn btn-link">AnnoMapping</a></li>
    <li><a href="./chap12/FrontController.jsp" target="_blank" class="btn btn-link">FrontController</a></li>
    <li><a href="./chap12/LifeCycle.jsp" target="_blank" class="btn btn-link">LifeCycle</a></li>
    <li><a href="./chap12/MemberAuth.jsp" target="_blank" class="btn btn-link">MemberAuth</a></li>
  </ul>

  <br><hr><br>

  <h2>파일 업로드/다운로드</h2>

  <ul>
    <li><a href="./chap13/FileUploadMain.jsp" target="_blank" class="btn btn-link">FileUploadMain</a></li>
  </ul>
</div>
</body>
</html>