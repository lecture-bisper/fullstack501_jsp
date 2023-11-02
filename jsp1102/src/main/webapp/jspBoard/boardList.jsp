<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-02
  Time: 오전 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%-- 세션 정보 필요없음 --%>
<%-- DAO/DTO를 사용하여 데이터 베이스 연결--%>
<%-- DAO/DTO를 사용하여 게시물 목록 가져오기 --%>
<%-- 게시물 목록 화면에 출력 --%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>JSP 게시판 목록 페이지</title>

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

<nav class="navbar navbar-expend-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <div>
      <a href="#" class="navbar-brand">FullStack 501</a>
    </div>
    <div class="ms-auto">
      <span class="navbar-text me-3">로그인이 필요합니다</span>
      <a href="#" class="btn btn-success">로그인</a>
    </div>
  </div>
</nav>

<header>
  <div class="mt-5 p-5">
    <h1 class="text-center display-3">JSP 게시판 목록 화면</h1>
  </div>
</header>

<main>
  <div class="container mt-5">
    <div class="row">
      <div class="col-sm">
        <table class="table table-hover table-striped">
          <colgroup>
            <col style="width: 10%">
            <col style="width: 45%">
            <col style="width: 10%">
            <col style="width: 25%">
            <col style="width: 10%">
          </colgroup>
          <thead>
            <tr>
              <th>글번호</th>
              <th>제목</th>
              <th>글쓴이</th>
              <th>등록시간</th>
              <th>조회수</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>제목1</td>
              <td>글쓴이</td>
              <td>2023-11-02 12:20:00</td>
              <td>0</td>
            </tr>
            <tr>
              <td>1</td>
              <td>제목1</td>
              <td>글쓴이</td>
              <td>2023-11-02 12:20:00</td>
              <td>0</td>
            </tr>
            <tr>
              <td>1</td>
              <td>제목1</td>
              <td>글쓴이</td>
              <td>2023-11-02 12:20:00</td>
              <td>0</td>
            </tr>
            <tr>
              <td>1</td>
              <td>제목1</td>
              <td>글쓴이</td>
              <td>2023-11-02 12:20:00</td>
              <td>0</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="row">
      <div class="col-sm">
        <div class="d-flex justify-content-end">
          <a href="./boardWrite.jsp" class="btn btn-primary">글쓰기</a>
        </div>
      </div>
    </div>
  </div>
</main>

<footer class="p-sm-5 mt-5 border-top ">
  <p class="lead text-muted text-center">made by fullstack501</p>
</footer>

</body>
</html>









