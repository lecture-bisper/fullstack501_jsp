<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-13
  Time: 오전 10:11
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
  <h3>한 번의 매핑으로 여러가지 요청 처리하기</h3>

<%--  request 영역에 저장된 데이터 출력, EL언어를 사용하여 해당 영역에 데이터가 없으면 null 처리 --%>
  ${resultValue}
  <ol>
    <li>요청명 : ${commandStr}</li>
    <li>URI : ${uri}</li>
  </ol>
  <ul>
    <li><a href="/join/regist.one" target="_blank" class="btn btn-link">회원가입</a> </li>
    <li><a href="/login/login.one" target="_blank" class="btn btn-link">로그인</a> </li>
    <li><a href="/board/freeboard.one" target="_blank" class="btn btn-link">자유게시판</a> </li>
  </ul>
</div>
</body>
</html>









