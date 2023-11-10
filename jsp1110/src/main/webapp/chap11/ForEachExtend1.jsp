<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오전 9:34
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
  <%
    String[] rgba = {"red", "green", "blue", "black"};
  %>

  <h3>향상된 for문 형태 사용하기</h3>
  <c:forEach items="<%=rgba%>" var="c">
    <span style="color: ${c};">${c}</span>
  </c:forEach>

  <hr>

  <h4>varStatus 속성 살펴보기</h4>
  <table class="table table-bordered">
    <c:forEach items="<%=rgba%>" var="c" varStatus="loop">
      <tr>
        <td>count : ${loop.count}</td>
        <td>index : ${loop.index}</td>
        <td>current : ${loop.current}</td>
        <td>c : ${c}</td>
        <td>first : ${loop.first}</td>
        <td>last : ${loop.last}</td>
      </tr>
    </c:forEach>
  </table>

</div>
</body>
</html>









