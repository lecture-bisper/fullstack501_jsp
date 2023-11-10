<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오전 10:45
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
<div class="container mt-5">
<%--  변수 선언, request 영역에 저장 --%>
  <c:set var="requestVar" value="MustHave" scope="request"></c:set>
<%--  JSTL로 다른 페이지 import, import 시 파라미터값 전달, import 된 페이지 정보를 contents 변수에 저장 --%>
  <c:import url="./OtherPage.jsp" var="contents">
    <c:param name="user_param1" value="JSP"></c:param>
    <c:param name="user_param2" value="기본서"></c:param>
  </c:import>

  <hr>

  <h3>다른 문서 삽입하기</h3>

<%--  위에서 만든 import 정보를 가지고 있는 변수 contents를 출력 --%>
  ${contents}

  <hr>

  <h3>외부 자원 삽입하기</h3>
<%--  html의 iframe를 통해서 외부 자원 가져오기 --%>
  <iframe src="./GoldPage.jsp" class="w-100" style="height: 600px"></iframe>
</div>
</body>
</html>









