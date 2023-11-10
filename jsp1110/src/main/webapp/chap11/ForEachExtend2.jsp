<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오전 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page import="com.bitc.jsp1110.Person" %>

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

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
  <h3>List 컬렉션 사용하기</h3>

  <%
    List<Person> lists = new ArrayList<>();
    lists.add(new Person("맹사성", 34));
    lists.add(new Person("장영실", 44));
    lists.add(new Person("신숙주", 54));
  %>

  <c:set var="lists" value="<%=lists%>"></c:set>
  <ul>
  <c:forEach var="list" items="${lists}">
    <li>이름 : ${list.name}, 나이 : ${list.age}</li>
  </c:forEach>
  </ul>

  <hr>

  <h3>Map 컬렉션 사용하기</h3>

  <%
    Map<String, Person> maps = new HashMap<>();
    maps.put("1st", new Person("맹사성", 34));
    maps.put("2nd", new Person("장영실", 44));
    maps.put("3rd", new Person("신숙주", 54));
  %>

  <c:set var="maps" value="<%=maps%>"></c:set>
  <ul>
    <c:forEach var="map" items="${maps}" >
      <li>Key => ${map.key}<br>Value => 이름 : ${map.value.name}, 나이 : ${map.value.age}</li>
    </c:forEach>
  </ul>
</div>
</body>
</html>









