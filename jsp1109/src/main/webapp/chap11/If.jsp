<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09
  Time: 오후 2:18
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
<%--  JSTL로 변수 선언--%>
  <c:set var="number" value="100" scope="page"></c:set>
  <c:set var="string" value="JSP"></c:set>

  <h3>JSTL의 if로 짝수/홀수 구분하기</h3>

  <div>
    <c:if test="${number mod 2 eq 0}" var="result">
      <p>${number} 는 짝수입니다.</p>
    </c:if>
    <p>result : ${result}</p>
  </div>

  <hr>

  <h3>문자열 비교와 else 문 흉내내기</h3>
  <div>
    <c:if test="${string eq 'java'}" var="result2">
      <p>문자열은 java 입니다.</p>
    </c:if>
    <c:if test="${not result2}">
      <p>문자열은 java가 아닙니다.</p>
    </c:if>
  </div>

  <hr>

  <h3>조건식 주의사항</h3>

  <div>
    <c:if test="100" var="result3">
      <p>EL언어가 아닌 정수를 지정하면 무조건 false</p>
    </c:if>
    <p>result3 : ${result3}</p>
    <br>
    <%--    JSTL의 if문 사용 시 정수를 EL언어로 표현하여 입력하면 오류발생--%>
<%--    <c:if test="${100}" var="result3">--%>
<%--    </c:if>--%>
<%--    JSTL의 if문에 연산식 없이 변수만 사용하면 false가 출력됨 --%>
    <c:if test="${string}" var="result3">
      <p>어떻게되나??</p>
    </c:if>
    <p>result3 : ${result3}</p>

    <c:if test="tRue" var="result4">
      <p>대소문자 구분 없이 "tRue"인 경우 true"</p>
    </c:if>
    <p>result4 : ${result4}</p>

    <br>

    <c:if test=" ${true} " var="result5">
      <p>EL 언어 양쪽에 빈 공백이 있을 경우 false</p>
    </c:if>
    <p>result5 : ${result5}</p>

    <br>

    <c:if test="${true}" var="result6">
      <p>EL 언어 양쪽에 빈 공백이 없으면 true가 true</p>
    </c:if>
    <p>result6 : ${result6}</p>

  </div>
</div>
</body>
</html>









