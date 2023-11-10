<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오후 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%-- tomcat 10 버전용 Formatting uri (jakarta EE 10, jakarta EE 9, jakarta EE 8에서 사용 가능)--%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%-- tomcat 옛날 버전용 Formatting uri --%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>

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
  <h3>숫자 포맷 설정</h3>
  <c:set var="number1" value="12345"></c:set>
  <p>콤마 O : <fmt:formatNumber value="${number1}"></fmt:formatNumber></p>
  <p>콤마 X : <fmt:formatNumber value="${number1}" groupingUsed="false"></fmt:formatNumber></p>

  <fmt:formatNumber value="${number1}" type="currency" var="printNum1"></fmt:formatNumber>
  <p>통화 기호 : ${printNum1}</p>
  <fmt:formatNumber value="0.03" type="percent" var="printNum2"></fmt:formatNumber>
  <p>퍼센트 : ${printNum2}</p>

  <hr>

  <h4>문자열을 숫자로 변경</h4>
  <c:set var="number2" value="6,789.01"></c:set>
  <fmt:parseNumber value="${number2}" pattern="00,000.00" var="printNum3"></fmt:parseNumber>
  <p>소수점까지 표현 : ${printNum3}</p>
  <fmt:parseNumber value="${number2}" integerOnly="true" var="printNum4"></fmt:parseNumber>
  <p>정수 부분만 표현 : ${printNum4}</p>
</div>
</body>
</html>









