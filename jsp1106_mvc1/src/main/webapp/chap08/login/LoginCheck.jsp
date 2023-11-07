<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-07
  Time: 오후 2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %>

<%
  // 세션 정보를 기준으로 로그인 상태 확인
//  로그인 상태가 아닐 경우 로그인 페이지로 이동
  if (session.getAttribute("userId") == null) {
    JSFunction.alertLocation("로그인 후 이용해 주세요", "./login/LoginForm.jsp", out);
    return;
  }
%>









