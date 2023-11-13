<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-13
  Time: 오후 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

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

  <style>

  </style>
  <script>

  </script>

</head>
<body>
<div class="container mt-5">
  <h3>MVC 패턴으로 회원인증하기</h3>
  <div>
    <p><strong>${authMessage}</strong></p>

    <ul>
      <li><a href="/MemberAuth.mvc?id=test1&pass=1234" target="_self" class="btn btn-link">회원인증(관리자)</a> </li>
      <li><a href="/MemberAuth.mvc?id=test2&pass=1234" target="_self" class="btn btn-link">회원인증(회원)</a> </li>
      <li><a href="/MemberAuth.mvc?id=test5&pass=1234" target="_self" class="btn btn-link">회원인증(비회원)</a> </li>
    </ul>
  </div>
</div>
</body>
</html>









