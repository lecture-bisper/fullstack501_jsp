<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-07
  Time: 오전 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %>
<%
  session.removeAttribute("userId");
  session.removeAttribute("userName");

  session.invalidate();

  JSFunction.alertLocation("로그아웃 되었습니다.", "../List.jsp", out);
//  response.sendRedirect("../List.jsp");
%>









