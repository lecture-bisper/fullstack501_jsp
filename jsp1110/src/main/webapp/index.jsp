<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Title</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>
</head>
<body>

<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<div class="container mt-5">
  <h2>JSTL 사용하기 - core 태그</h2>
  <ul>
    <li><a href="./chap11/ForEachExtend1.jsp" target="_blank" class="btn btn-link">ForEachExtend1</a></li>
    <li><a href="./chap11/ForEachExtend2.jsp" target="_blank" class="btn btn-link">ForEachExtend2</a></li>
    <li><a href="./chap11/ForTokens.jsp" target="_blank" class="btn btn-link">ForTokens</a></li>
    <li><a href="./chap11/Import.jsp" target="_blank" class="btn btn-link">Import</a></li>
    <li><a href="./chap11/Redirect.jsp" target="_blank" class="btn btn-link">Redirect</a></li>
    <li><a href="./chap11/Url.jsp" target="_blank" class="btn btn-link">Url</a></li>
    <li><a href="./chap11/Out.jsp" target="_blank" class="btn btn-link">Out</a></li>
    <li><a href="./chap11/Catch.jsp" target="_blank" class="btn btn-link">Catch</a></li>
  </ul>

  <br><hr><br>

  <h2>JSTL 사용하기 - Formatting 태그</h2>
  <ul>
    <li><a href="./chap11/Fmt1.jsp" target="_blank" class="btn btn-link">Fmt1</a></li>
    <li><a href="./chap11/Fmt2.jsp" target="_blank" class="btn btn-link">Fmt2</a></li>
    <li><a href="./chap11/Fmt3.jsp" target="_blank" class="btn btn-link">Fmt3</a></li>
  </ul>

  <br><hr><br>

  <h2>Servlet 사용하기</h2>

  <ul>
<%--    html 태그의 a 태그를 통해서 /chap12/HelloServlet.jsp 파일을 직접 연결하여 페이지를 오픈 --%>
    <li><a href="./chap12/HelloServlet.jsp" target="_blank" class="btn btn-link">HelloServlet.jsp</a></li>
  </ul>

  <ul>
    <li><a href="./chap12/loginForm.jsp" target="_blank" class="btn btn-link">로그인 폼 페이지</a></li>
  </ul>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>