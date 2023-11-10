<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오후 3:53
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
  <h3>jsp 페이지로 접속</h3>
  <div class="row">
    <div class="col-sm-4 mx-auto">
      <form action="./loginOK.jsp" method="post">
        <div class="my-3">
          <label for="user-id" class="form-label">ID : </label>
          <input type="text" class="form-control" id="user-id" name="userId">
        </div>
        <div class="my-3">
          <label for="user-pw" class="form-label">PW : </label>
          <input type="text" class="form-control" id="user-pw" name="userPw">
        </div>
        <div class="my-3 d-grid">
          <button type="submit" class="btn btn-primary">로그인</button>
        </div>
      </form>
    </div>
  </div>

  <br><hr><br>

  <h3>서블릿으로 접속</h3>
  <div class="row">
    <div class="col-sm-4 mx-auto">
      <form action="/loginOK.do" method="post">
        <div class="my-3">
          <label for="user-id2" class="form-label">ID : </label>
          <input type="text" class="form-control" id="user-id2" name="userId2">
        </div>
        <div class="my-3">
          <label for="user-pw2" class="form-label">PW : </label>
          <input type="text" class="form-control" id="user-pw2" name="userPw2">
        </div>
        <div class="my-3 d-grid">
          <button type="submit" class="btn btn-primary">로그인</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>









