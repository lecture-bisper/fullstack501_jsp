<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-14
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Title</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>

  <style>

  </style>
  <script>
    $(document).ready(function () {
      $("#btn-list").on("click", function () {
        location.href = "/mvcboard/list.do";
      });
    });
  </script>

</head>
<body>
<c:import url="../layout/Header.jsp"></c:import>

<main class="container mt-5">
  <section>
    <div class="row">
      <div class="col-sm">
        <form action="/mvcboard/edit.do" method="post" enctype="multipart/form-data">
<%--          글번호와 일치하는 데이터를 수정하기 위해 글 번호를 input 태그에 저장 --%>
          <input type="hidden" name="idx" value="${board.idx}">
<%--          이전에 업로드된 파일도 삭제하기 위해서 이전에 저장된 파일명을 input 태그에 저장 --%>
          <input type="hidden" name="oldSaveFile" value="${board.sfile}">
          <div class="row mt-3">
            <div class="col-sm">
              <div class="form-floating">
                <input type="text" class="form-control" id="title" name="title" value="${board.title}" placeholder="제목을 입력하세요">
                <label for="title">제목을 입력하세요</label>
              </div>
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-sm">
              <div class="form-floating">
                <textarea class="form-control" id="content" name="content" placeholder="내용을 입력하세요" style="height: 200px;">${board.content}</textarea>
                <label for="content">내용을 입력하세요</label>
              </div>
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-sm">
              <input type="file" class="form-control" id="upload-file" name="uploadFile">
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-sm">
              <button type="button" class="btn btn-secondary" id="btn-list">목록</button>
            </div>
            <div class="col-sm d-flex justify-content-end">
              <button type="reset" class="btn btn-info me-2">다시쓰기</button>
              <button type="submit" class="btn btn-warning">수정</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </section>
</main>

<%@ include file="../layout/Footer.jsp" %>
</body>
</html>









