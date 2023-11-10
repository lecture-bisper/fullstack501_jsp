<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오전 11:42
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
  <h3>자바 코드에서의 예외</h3>
  <%
    int num1 = 100;
  %>

  <%
    // 0으로 나눌 수 없기 때문에 오류 발생
//    기존의 try ~ catch 를 사용한 예외처리
    try {
      int result = num1 / 0;
    }
    catch (Exception e) {
      out.print("<p>예외처리 : " + e.getMessage() + "</p>");
    }
  %>

<%--  JSTL을 사용한 예외처리 --%>
  <c:catch var="eMsg">
    <%
      int result2 = num1 / 0;
    %>
  </c:catch>
  <p>예외처리 : ${eMsg}</p>

  <hr>

  <h3>EL에서의 예외</h3>

  <c:set var="num2" value="200"></c:set>
  <c:catch var="eMsg">
    ${"일" + num2}
  </c:catch>
  <p>예외처리 : ${eMsg}</p>
</div>
</body>
</html>









