<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오후 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<%@ page import="java.util.Date" %>

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
  <c:set var="toDay" value="<%=new Date()%>"></c:set>
  <c:set var="toDay1" value="<%=new Date()%>"></c:set>
  <c:set var="toDay2" value="<%=new Date()%>"></c:set>

  <h3>날짜 포맷</h3>
  <p>full : <fmt:formatDate value="${toDay}" type="date" dateStyle="full"></fmt:formatDate> </p>
  <p>short : <fmt:formatDate value="${toDay}" type="date" dateStyle="short"></fmt:formatDate> </p>
  <p>long : <fmt:formatDate value="${toDay}" type="date" dateStyle="long"></fmt:formatDate> </p>
  <p>default : <fmt:formatDate value="${toDay}" type="date" dateStyle="default"></fmt:formatDate> </p>

  <hr>

  <h3>시간 포맷</h3>
  <p>full : <fmt:formatDate value="${toDay}" type="time" timeStyle="full"></fmt:formatDate> </p>
  <p>short : <fmt:formatDate value="${toDay}" type="time" timeStyle="short"></fmt:formatDate> </p>
  <p>long : <fmt:formatDate value="${toDay}" type="time" timeStyle="long"></fmt:formatDate> </p>
  <p>default : <fmt:formatDate value="${toDay}" type="time" timeStyle="default"></fmt:formatDate> </p>

  <hr>

  <h3>날짜/시간 표시</h3>
  <p>날짜/시간 full : <fmt:formatDate value="${toDay}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate> </p>
  <p>날짜/시간 pattern : <fmt:formatDate value="${toDay}" type="both" pattern="yyyy-MM-dd hh:mm:ss"></fmt:formatDate> </p>

  <hr>

  <h3>타임존 설정</h3>

  <fmt:timeZone value="America/Chicago">
    <p>America/Chicago 사용 : <fmt:formatDate value="${toDay1}" type="both" dateStyle="full" timeZone="full"></fmt:formatDate> </p>
  </fmt:timeZone>
  <fmt:timeZone value="Asia/Seoul">
    <p>Asia/Seoul 사용 : <fmt:formatDate value="${toDay2}" type="both" dateStyle="full" timeZone="full"></fmt:formatDate> </p>
  </fmt:timeZone>
  <fmt:timeZone value="GMT">
    <p>GMT 사용 : <fmt:formatDate value="${toDay}" type="both" dateStyle="full" timeZone="full"></fmt:formatDate> </p>
  </fmt:timeZone>

</div>
</body>
</html>









