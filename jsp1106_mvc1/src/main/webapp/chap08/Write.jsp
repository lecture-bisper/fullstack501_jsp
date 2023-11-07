<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%-- 로그인 상태에서만 글쓰기를 할 수 있으므로 로그인 상태 체크를 위한 LoginCheck 파일 불러오기 --%>
<jsp:include page="./login/LoginCheck.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>MVC1 게시판 - 등록 페이지</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>

  <style>

  </style>
  <script>
    // html이 모두 로딩된 이후 아래의 자바스크립트가 동작하도록 하는 이벤트
    $(document).ready(function () {
      // 버튼 클릭 시 리스트 페이지로 이동
      $("#btn-list").on("click", function () {
        location.href = "./List.jsp";
      });
    });
  </script>

</head>
<body>
<%@ include file="./layout/Menu.jsp" %>
<%@ include file="./layout/Header.jsp" %>

<main class="container mt-5">
  <section>
    <div class="row my-3">
      <div class="col-sm">
        <form action="WriteProcess.jsp" method="post">
          <div class="my-3">
            <label for="title" class="form-label">제목 : </label>
            <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
          </div>
          <div class="my-3">
            <label for="content" class="form-label">내용 : </label>
            <textarea class="form-control" id="content" name="content" rows="5" placeholder="내용을 입력하세요"></textarea>
          </div>
          <div class="my-3 d-flex justify-content-center">
            <button type="submit" class="btn btn-primary">작성 완료</button>
            <button type="reset" class="btn btn-secondary mx-2">다시 입력</button>
            <button type="button" class="btn btn-info" id="btn-list">목록 보기</button>
          </div>
        </form>
      </div>
    </div>
  </section>
</main>

<%@ include file="./layout/Footer.jsp" %>
</body>
</html>









