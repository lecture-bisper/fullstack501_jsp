<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09
  Time: 오후 2:58
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
  <c:set var="number" value="100"></c:set>

  <h3>choose 태그로 홀짝 확인</h3>
  <div>
<%--    JSTL의 choose를 사용 시 when과 otherwise를 하나씩 사용 하면 if ~ else문으로 사용할 수 있음 --%>
    <c:choose>
      <c:when test="${number mod 2 eq 0}">
        <p>${number}는 짝수입니다.</p>
      </c:when>
      <c:otherwise>
        <p>${number}는 홀수입니다.</p>
      </c:otherwise>
    </c:choose>
  </div>

  <hr>

  <h3>국, 영, 수 점수를 입력하면 평균을 내어 학점 출력</h3>
  <form action="Choose.jsp" method="get">
    <div class="my-3">
      <label for="kor" class="form-label">국어 : </label>
      <input type="text" class="form-control" id="kor" name="kor">
    </div>
    <div class="my-3">
      <label for="eng" class="form-label">영어 : </label>
      <input type="text" class="form-control" id="eng" name="eng">
    </div>
    <div class="my-3">
      <label for="math" class="form-label">수학 : </label>
      <input type="text" class="form-control" id="math" name="math">
    </div>
    <div class="mt-3 d-flex">
      <button type="submit" class="btn btn-primary">학점 구하기</button>
    </div>
  </form>
<%--  JSTL의 choose 사용 중 when을 여러개 사용 시 자바의 else if문을 구현할 수 있음 --%>
  <c:if test="${not (empty param.kor or empty param.eng or empty param.math)}">
    <c:set var="avg" value="${(param.kor + param.eng + param.math) / 3}"></c:set>
    <p>평균 점수는 ${avg} 점으로
      <c:choose>
        <c:when test="${avg >= 90}">A학점</c:when>
        <c:when test="${avg >= 80}">B학점</c:when>
        <c:when test="${avg ge 70}">C학점</c:when>
        <c:when test="${avg ge 60}">D학점</c:when>
        <c:otherwise>F학점</c:otherwise>
      </c:choose>
    입니다.</p>
  </c:if>
</div>
</body>
</html>









