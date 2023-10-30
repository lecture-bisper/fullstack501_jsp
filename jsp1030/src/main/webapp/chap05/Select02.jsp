<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-30
  Time: 오전 10:45
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
  <h2 class="text-center">Prepared Statement로 데이터 조회하기</h2>

  <div class="row">
    <div class="col-sm-6 mx-auto">
      <form method="post" action="SelectProcess02.jsp">
        <div class="my-3">
          <div class="row">
            <div class="col-sm-3">
              <select class="form-select" id="search-select" name="searchSelect">
                <option value="seq">번호</option>
                <option value="id" selected>아이디</option>
                <option value="name">이름</option>
              </select>
            </div>
            <div class="col-sm">
              <input type="text" class="form-control" name="searchText">
            </div>
            <div class="col-sm-2">
              <button type="submit" class="btn btn-primary">검색</button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>









