<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03
  Time: 오후 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1102.database.JSPBoardDao" %>

<%
  request.setCharacterEncoding("UTF-8");

  int idx = Integer.parseInt(request.getParameter("idx"));

  JSPBoardDao dao = new JSPBoardDao(application);
  dao.dbOpen();
  dao.deleteBoard(idx);
  dao.dbClose();

  response.sendRedirect("./boardList.jsp");
%>









