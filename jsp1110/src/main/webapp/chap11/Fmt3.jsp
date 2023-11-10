<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오후 2:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

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
  <h3>로케일 설정</h3>
  <c:set var="today" value="<%= new java.util.Date()%>"></c:set>

  <br>
  
  <h4>한글로 설정 : <fmt:setLocale value="ko_KR"></fmt:setLocale> </h4>
  <h4><fmt:formatNumber value="10000" type="currency"></fmt:formatNumber></h4>
  <h4><fmt:formatDate value="${today}" type="both"></fmt:formatDate> </h4>
  
  <hr>
  
  <h4>일어로 설정 : <fmt:setLocale value="ja_JP"></fmt:setLocale></h4>
  <h4><fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> </h4>
  <h4><fmt:formatDate value="${today}" type="both"></fmt:formatDate></h4>
  
  <hr>
  
  <h4>영어(영국)로 설정 : <fmt:setLocale value="en_GB"></fmt:setLocale></h4>
  <h4><fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> </h4>
  <h4><fmt:formatDate value="${today}" type="both"></fmt:formatDate></h4>

  <hr>

  <h4>영어(미국)로 설정 : <fmt:setLocale value="en_US"></fmt:setLocale></h4>
  <h4><fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> </h4>
  <h4><fmt:formatDate value="${today}" type="both"></fmt:formatDate></h4>
  
</div>
</body>
</html>









