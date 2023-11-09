<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09
  Time: 오후 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page import="java.util.Date" %>
<%@ page import="com.bitc.jsp1109.Person" %>

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
<%--  JSTL을 사용하여 내장 객체 영역에 변수 선언 --%>
<%--  EL 문법이나 스크립틀릿을 사용하지 않고 원하는 변수를 선언 가능 --%>
  <c:set var="directVar" value="100"></c:set>
<%--  JSTL 변수 선언 시 EL언어로 간단한 연산 후 값을 대입--%>
  <c:set var="elVar" value="${directVar mod 5}"></c:set>
<%--  JSTL 변수 선언 시 표현식으로 객체 생성하여 대입 --%>
  <c:set var="expVar" value="<%=new Date()%>"></c:set>
<%--  JSTL 변수 선언 시 값을 시작 태그와 끝 태그 사이에 입력하여 대입해야 됨 --%>
  <c:set var="betweenVar">변수값 이렇게 설정</c:set>

  <h3>EL언어를 이용해 변수 값 출력</h3>
  <ul>
    <li>directVar : ${pageScope.directVar}</li>
    <li>elVar : ${elVar}</li>
    <li>expVar : ${expVar}</li>
    <li>betweenVar : ${betweenVar}</li>
  </ul>

  <hr>

  <h3>자바빈즈 생성 1 - 생성자 사용</h3>
<%--  JSTL을 사용하여 Person 클래스 타입의 객체 생성, request 영역에 저장 --%>
  <c:set var="personVar1" value='<%=new Person("박문수", 50)%>' scope="request"></c:set>
  <ul>
<%--    request 영역에 저장된 객체를 가져와서 사용 --%>
    <li>이름 : ${requestScope.personVar1.name}</li>
<%--    영역 지정없이 request 영역에 저장된 객체를 가져와서 사용 --%>
    <li>나이 : ${personVar1.age}</li>
  </ul>

  <hr>

  <h3>자바빈즈 생성 2 - target, property 사용</h3>
<%--  JSTL로 기본 생성자를 사용하는 Person 클래스의 객체 생성--%>
  <c:set var="personVar2" value="<%=new Person()%>" scope="request"></c:set>
<%--  request 영역에 저장된 객체에 필드값 설정 --%>
<%--  target 속성으로 객체 선택, property 속성으로 지정된 객체의 필드 선택, value로 필드값 설정 --%>
  <c:set target="${personVar2}" property="name" value="정약용"></c:set>
  <c:set target="${personVar2}" property="age" value="60"></c:set>

  <ul>
    <li>이름 : ${personVar2.name}</li>
    <li>나이 : ${requestScope.personVar2.age}</li>
  </ul>
</div>
</body>
</html>









