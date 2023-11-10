<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오전 10:42
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
<div class="container my-4">
  <h4>OtherPage.jsp</h4>
  <ul>
<%--    request에 저장된 requestVar 변수 출력 --%>
    <li>저장된 값 : ${requestScope.requestVar}</li>
<%--  파라미터로 전달된 데이터 출력 --%>
    <li>매개변수 1 : ${param.user_param1}</li>
    <li>매개변수 2 : ${param.user_param2}</li>
  </ul>
</div>
</body>
</html>









