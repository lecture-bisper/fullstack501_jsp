<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09
  Time: 오후 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
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
  <h2>List 컬렉션 사용하기</h2>

  <%
    // ArrayList 타입의 객체 생성, 스크립틀릿에만 존재하고 있음
    List<Person> pList = new ArrayList<>();
//    데이터 추가
    pList.add(new Person("성삼문", 55));
    pList.add(new Person("박팽년", 60));
  %>
<%--  JSTL을 사용하여 request 영역에 personList 라는 이름으로 저장 --%>
  <c:set var="personList" value="<%=pList%>" scope="request"></c:set>
  <ul>
    <li>이름 : ${requestScope.personList[0].name}</li>
    <li>나이 : ${personList[0].age}</li>
  </ul>

  <hr>

  <h2>Map 컬렉션 사용하기</h2>
  <%
    // Map 타입으로 객체 생성
    Map<String, Person> pMap = new HashMap<>();
//    Map 타입의 변수에 데이터를 Person 클래스의 객체를 생성하여 저장
    pMap.put("personArgs1", new Person("하위지", 65));
    pMap.put("personArgs2", new Person("이개", 67));
  %>
<%--  JSTL을 사용하여 personMap라는 이름으로 Map 타입의 객체를 저장--%>
  <c:set var="personMap" value="<%=pMap%>" scope="request"></c:set>
  <ul>
<%--    request영역에 저장된 personMap이라는 이름의 Map 타입의 객체를 가져옴 --%>
<%--    Map 타입에서 데이터를 출력하기 위해서 key 이름을(personArgs2) 사용하여 데이터 출력 --%>
    <li>아이디 : ${requestScope.personMap.personArgs2.name}</li>
    <li>비번 : ${personMap.personArgs2.age}</li>
  </ul>

</div>
</body>
</html>









