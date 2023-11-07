<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-07
  Time: 오후 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <div class="container-fluid">
    <a href="/index.jsp" class="navbar-brand">회원제 게시판</a>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">메뉴1</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">메뉴2</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">메뉴3</a>
      </li>
    </ul>
    <div class="ms-auto">
      <%
        if (session.getAttribute("userId") == null) {
          out.print("<a href='login/LoginForm.jsp' class='btn btn-outline-success'>로그인</a>");
        }
        else {
      %>
      <span class="navbar-text me-3"><%=session.getAttribute("userName")%>님 반갑습니다.</span>
      <a href="login/Logout.jsp" class="btn btn-outline-secondary">로그아웃</a>
      <%
        }
      %>
    </div>
  </div>
</nav>









