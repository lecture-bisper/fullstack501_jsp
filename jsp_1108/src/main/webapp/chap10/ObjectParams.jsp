<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08
  Time: 오후 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp_1108.Person" %>

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
<%
  // 내장 객체 영역에 저장하는 것은 스크립틀릿으로 진행
  request.setAttribute("personObj", new Person("홍길동", 33));
  request.setAttribute("stringObj", "나는 문자열");
  request.setAttribute("integerObj", 99);
%>

<%-- 액션 태그를 사용하여 forward 및 파라미터값 지정 --%>
<jsp:forward page="ObjectResult.jsp?num1=10&num2=20">
  <jsp:param name="firstNum" value="10"/>
  <jsp:param name="secondNum" value="20"/>
</jsp:forward>
</body>
</html>









