<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08
  Time: 오후 3:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

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
  int num1 = 3;
  pageContext.setAttribute("num2", 4);
  pageContext.setAttribute("num3", "5");
  pageContext.setAttribute("num4", "8");
%>
<div class="container mt-5">
  <h2>EL 언어 - 연산자</h2>
  <h3>변수 선언</h3>
  <div class="my-3">
<%--    스크립틀릿에서 선언한 변수는 EL언어에서 바로 사용할 수 없음 --%>
    <p>스크립틀릿에서 선언한 변수 : ${num1}</p>
<%--  내장객체에 저장된 데이터는 바로 사용할 수 있음 --%>
    <p>page 영역에 저장된 변수 : ${num2}</p>
    <p>변수 할당 및 즉시 출력 : ${num1 = 7}</p>
    <p>변수 할당 및 별도 출력 : ${num2 = 8;''} => ${num2}</p>
<%--  EL언어에서 스크립틀릿에서 선언한 변수 num1에 값을 대입했으므로 EL 언어에서 바로 사용할 수 있음 --%>
    <p>num1 = ${num1}, num2 = ${num2}, num3 = ${num3}, num4 = ${num4}</p>
  </div>

  <hr>
  <h3>산술 연산자</h3>
  <div class="my-3">
<%--    EL 언어의 표현 방식인 ${} 안에서 간단한 연산이 가능함--%>
    <p>num1 + num2 = ${num1 + num2}</p>
    <p>num1 - num2 = ${num1 - num2}</p>
    <p>num1 * num2 = ${num1 * num2}</p>
<%--  EL 언어에서는 데이터 타입이 문자열인 숫자도 산술 연산이 가능함 --%>
    <p>num3 / num4 = ${num3 / num4}</p>
    <p>num3 div num4 = ${num3 div num4}</p>
    <p>num3 % num4 = ${num3 % num4}</p>
    <p>num3 mod num4 = ${num3 mod num4}</p>
  </div>

  <hr>
  <h3> + 연산자는 덧셈만 가능</h3>
  <div class="my-3">
<%--  EL 언어에서는 데이터 타입이 문자열인 숫자도 산술 연산이 가능함 --%>
    <p>num1 + "34" = ${num1 + "34"}</p>
<%--  EL 언어에서는 문자열 연결 연산이 안됨 --%>
<%--    <p>num2 + "이십" = ${num2 + "이십"}</p>--%>
<%--    <p>"삼십" + "사십" = ${"삼십" + "사십"}</p>--%>
  </div>

  <hr>
  <h3>비교 연산자</h3>
  <div class="my-3">
    <p>num4 > num3 : ${num4 gt num3}</p>
    <p>num1 < num3 : ${num1 lt num3}</p>
    <p>num2 >= num4 : ${num2 ge num4}</p>
    <p>num1 == num4 : ${num1 eq num4}</p>
  </div>

  <hr>
  <h3>논리 연산자</h3>
  <div class="my-3">
    <p>num3 <= num4 && num3 == num4 : ${num3 le num4 and num3 eq num4}</p>
    <p>num3 >= num4 || num3 != num4 : ${num3 ge num4 or num3 ne num4}</p>
  </div>

</div>
</body>
</html>









