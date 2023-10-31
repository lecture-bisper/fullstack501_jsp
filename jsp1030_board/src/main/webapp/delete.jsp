<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-31
  Time: 오전 10:33
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
<%--삭제할 글 번호 입력 화면--%>
<div class="container mt-5">
  <h2 class="text-center">board에 글 삭제하기</h2>

  <div class="row">
    <div class="col-sm-4 mx-auto">
      <form action="deleteProcess.jsp" method="post">
        <div class="input-group my-3">
          <input type="text" class="form-control" name="num" placeholder="삭제하고자하는 글의 글 번호를 입력하세요">
          <button type="submit" class="btn btn-outline-danger">삭제</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>









