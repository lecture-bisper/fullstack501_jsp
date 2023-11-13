<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-13
  Time: 오후 2:57
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
  <h3 class="text-center">파일 업로드</h3>

  <span class="text-danger">${errorMessage}</span>

  <div class="row">
    <div class="col-sm-4 mx-auto">
<%--      enctype="multipart/form-data"  : 파일 정보를 서버로 전송 시 반드시 설정, 일반 text 정보와 file 정보를 서버에서 확인할 수 있음 --%>
      <form action="/UploadProcess.do" method="post" name="fileForm" enctype="multipart/form-data">
        <div class="my-3">
          <label for="title" class="form-label">제목 : </label>
          <input type="text" class="form-control" id="title" name="title">
        </div>
        <div class="my-3">
          <label for="cate" class="form-label">카테고리(선택사항) : </label>
          <div id="cate">
            <div class="form-check form-check-inline">
              <input type="checkbox" class="form-check-input" id="cate01" name="cate" value="사진" checked>
              <label for="cate01" class="form-check-label">사진</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="checkbox" class="form-check-input" id="cate02" name="cate" value="과제">
              <label for="cate02" class="form-check-label">과제</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="checkbox" class="form-check-input" id="cate03" name="cate" value="워드">
              <label for="cate03" class="form-check-label">워드</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="checkbox" class="form-check-input" id="cate04" name="cate" value="음원">
              <label for="cate04" class="form-check-label">음원</label>
            </div>
          </div>
        </div>
        <div class="my-3">
          <label for="file" class="form-label">첨부 파일 : </label>
          <input type="file" class="form-control" id="file" name="attachedFile">
        </div>
        <div class="my-3 d-grid">
          <button type="submit" class="btn btn-primary">전송하기</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>









