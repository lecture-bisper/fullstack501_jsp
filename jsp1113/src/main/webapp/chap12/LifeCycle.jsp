<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-13
  Time: 오전 11:10
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
    function requestAction(frm, met) {
      if (met == 1) {
        frm.method = 'get';
      }
      else {
        frm.method = 'post';
      }

      frm.submit();
    }
  </script>

</head>
<body>

<div class="container mt-5">
  <h2>서블릿 생명주기(Life Cycle) 메소드</h2>

  <form action="/LifeCycle.do">
    <div class="row">
      <div class="col-sm d-grid">
<%--        자바스크립트의 onclick 이벤트 발생 시 requestAction() 함수 실행 --%>
<%--        매개변수로 현재 form 태그를 전달 --%>
        <button type="button" onclick="requestAction(this.form, 1);">GET 방식 요청하기</button>
      </div>
      <div class="col-sm d-grid">
        <button type="button" onclick="requestAction(this.form, 2);">POST 방식 요청하기</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>









