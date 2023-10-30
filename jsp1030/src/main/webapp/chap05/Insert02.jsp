<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-30
  Time: 오전 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>JDBC - PreparedStatement</title>

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
  <h2 class="text-center">Prepared Statement로 데이터 추가하기</h2>

  <div class="row">
    <div class="col-sm-4 mx-auto">
      <form action="InsertProcess02.jsp" method="post">
        <div class="my-3">
          <label for="user-id" class="form-label">User ID : </label>
          <input type="text" class="form-control" id="user-id" name="userId" placeholder="사용할 User ID를 입력하세요">
        </div>
        <div class="my-3">
          <label for="user-pw" class="form-label">User Password : </label>
          <input type="password" class="form-control" id="user-pw" name="userPw" placeholder="사용할 비밀번호를 입력하세요">
        </div>
        <div class="my-3">
          <label for="user-name" class="form-label">User Name : </label>
          <input type="text" class="form-control" id="user-name" name="userName" placeholder="사용할 사용자의 이름을 입력하세요">
        </div>
        <div class="my-3 d-grid gap-2">
          <button type="submit" class="btn btn-primary">회원 가입</button>
          <button type="reset" class="btn btn-secondary">취소</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>









