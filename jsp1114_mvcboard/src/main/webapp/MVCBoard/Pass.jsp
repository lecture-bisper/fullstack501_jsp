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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>

  <style>

  </style>
  <script>

  </script>

</head>
<body>
<c:import url="../layout/Header.jsp"></c:import>

<main class="container mt-5">
  <section>
    <div class="row">
      <div class="col-sm">
        <form action="/mvcboard/pass.do" method="post">
          <div class="row mt-3">
            <div class="col-sm-6 mx-auto">
              <div class="input-group">
                <div class="form-floating">
                  <input type="password" class="form-control" id="pass" name="pass" placeholder="비밀번호를 입력해주세요">
                  <label for="pass">비밀번호를 입력해주세요</label>
                </div>
                <button type="submit" class="btn btn-outline-primary" style="width: 15%">확인</button>
              </div>
            </div>
          </div>
          <input type="hidden" name="mode" value="${mode}">
          <input type="hidden" name="idx" value="${idx}">
        </form>
      </div>
    </div>
  </section>
</main>

<%@ include file="../layout/Footer.jsp" %>
</body>
</html>









