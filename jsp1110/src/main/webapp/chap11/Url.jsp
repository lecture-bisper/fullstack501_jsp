<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오전 11:18
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
  <h4>url 태그로 링크 걸기</h4>
  <c:url value="./OtherPage.jsp" var="url">
    <c:param name="user_param1" value="Must"></c:param>
    <c:param name="user_param2">Have</c:param>
  </c:url>

<%--  JSTL 의 url 태그 사용 시 미리 url 정보를 생성해 두고 나중에 사용하는 것이 가능--%>
  <a href="${url}" target="_blank" class="btn btn-link">OtherPage.jsp 바로 가기(url사용)</a>
<%--  url 태그 미사용 시 url 주소에 파라미터 값을 직접 입력해야 함 --%>
  <a href="./OtherPage.jsp?user_param1=Must&user_param2=Have" target="_blank" class="btn btn-link">OtherPage.jsp 바로 가기(url미사용)</a>
</div>
</body>
</html>









