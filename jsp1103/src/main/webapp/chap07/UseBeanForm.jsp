<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03
  Time: 오후 3:12
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
  <h2>액션 태그로 폼값 한번에 받기</h2>

  <div class="row">
    <div class="col-sm-4 mx-auto">
      <form action="UseBeanAction.jsp" method="post">
        <div class="my-3">
          <label for="name" class="form-label">이름 : </label>
          <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해주세요">
        </div>
        <div class="my-3">
          <label for="age" class="form-label">나이 : </label>
          <input type="text" class="form-control" id="age" name="age" placeholder="나이를 입력하세요">
        </div>
        <div class="my-3 d-grid">
          <button type="submit" class="btn btn-primary">전송</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>









