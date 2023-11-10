<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오전 11:09
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
<%-- JSTL 을 사용하여 request영역에 requestVar이라는 변수를 선언 --%>
<%-- 아래에 지정한 페이지로 리다이렉트가 되기 때문에 request 영역에 저장된 변수는 삭제됨 --%>
<c:set var="requestVar" value="MustHave" scope="request"></c:set>
<%-- JSTL을 사용하여 지정된 페이지로 리다이렉트, 파라미터값 2개 전달--%>
<c:redirect url="./OtherPage.jsp">
  <c:param name="user_param1" value="출판사"></c:param>
  <c:param name="user_param2" value="골든래빗"></c:param>
</c:redirect>
</body>
</html>









