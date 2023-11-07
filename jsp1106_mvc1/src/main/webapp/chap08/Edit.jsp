<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDto" %>

<%-- 로그인 상태에서만 글수정을 할 수 있으므로 로그인 상태 체크를 위한 LoginCheck 파일 불러오기 --%>
<jsp:include page="./login/LoginCheck.jsp"></jsp:include>

<%-- 글 수정 페이지는 상세 글 읽기 페이지와 기본적으로 같음 --%>
<%
  request.setCharacterEncoding("UTF-8");

//  수정할 글 번호 가져오기
  int num = Integer.parseInt(request.getParameter("num"));

//  데이터 베이스 연결 후 글 내용 가져오기
  BoardDao dao = new BoardDao(application);
  dao.dbOpen();
  BoardDto board = dao.selectView(num);
  dao.dbClose();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>MVC1 게시판 - 수정 페이지</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>

  <style>
    .caption1 { width: 14%; }
    .caption2 { width: 7%; }
  </style>
  <script>
    $(document).ready(function () {
      // 목록 버튼 클릭 시 목록 페이지로 이동
      $("#btn-list").on("click", function () {
        location.href = "./List.jsp";
      });

      // html 속성 중 id가 title은 태그를 자동 선택하기
      $("#title").focus();
    });
  </script>

</head>
<body>
<%@ include file="./layout/Menu.jsp" %>
<%@ include file="./layout/Header.jsp" %>

<main class="container mt-5">
  <section>
    <form id="frm" action="EditProcess.jsp" method="post">
      <div class="row my-3">
        <div class="col-sm">
          <div class="input-group">
            <span class="input-group-text caption1">번호</span>
            <input type="text" class="form-control" id="num" name="num" readonly value="<%=board.getNum()%>">
          </div>
        </div>
        <div class="col-sm">
          <div class="input-group">
            <span class="input-group-text caption1">작성자</span>
            <input type="text" class="form-control" name="id" name="id" readonly value="<%=board.getId()%>">
          </div>
        </div>
      </div>
      <div class="row my-3">
        <div class="col-sm">
          <div class="input-group">
            <span class="input-group-text caption1">작성일</span>
            <input type="text" class="form-control" readonly value="<%=board.getPostdate()%>">
          </div>
        </div>
        <div class="col-sm">
          <div class="input-group">
            <span class="input-group-text caption1">조회수</span>
            <input type="text" class="form-control" readonly value="<%=board.getVisitcount()%>">
          </div>
        </div>
      </div>
      <div class="row my-3">
        <div class="col-sm">
          <div class="input-group">
            <span class="input-group-text caption2">제목</span>
            <input type="text" class="form-control" id="title" name="title" value="<%=board.getTitle()%>">
          </div>
        </div>
      </div>
      <div class="row my-3">
        <div class="col-sm">
          <div class="input-group">
            <span class="input-group-text caption2">내용</span>
            <textarea class="form-control" name="content" rows="5"><%=board.getContent()%></textarea>
          </div>
        </div>
      </div>
      <div class="row my-3">
        <div class="col-sm d-flex justify-content-center">
          <button type="submit" class="btn btn-primary">작성 완료</button>
          <button type="reset" class="btn btn-secondary mx-2">다시 입력</button>
          <button type="button" class="btn btn-info" id="btn-list">목록 보기</button>
        </div>
      </div>
    </form>
  </section>
</main>

<%@ include file="./layout/Footer.jsp" %>
</body>
</html>









