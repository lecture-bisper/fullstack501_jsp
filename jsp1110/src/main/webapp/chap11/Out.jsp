<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오전 11:31
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
  <c:set var="iTag">i 태그는 <i>기울임</i>을 표현합니다.</c:set>

  <h3>기본 사용</h3>
  <c:out value="${iTag}"></c:out>
  <hr>

  <h3>escapeXml 속성</h3>
  <c:out value="${iTag}" escapeXml="false"></c:out>
  <hr>

  <h3>default 속성</h3>
<%--  현재 페이지에 전달되는 파라미터 값이 없으므로 param.name은 null이 됨 --%>
  <p>이름 : <c:out value="${param.name}"></c:out></p>
<%--  default 속성 사용 시 null 대신 default 속성의 값을 출력--%>
  <p>이름 : <c:out value="${param.name}" default="이름 없음"></c:out></p>
  <p>이름 : <c:out value="" default="빈 문자열도 default 속성값 사용"></c:out></p>
</div>
</body>
</html>









