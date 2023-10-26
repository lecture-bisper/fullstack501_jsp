<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%
  // ajax 통신으로 'inactiveToday'의 이름을 가지는 파라미터 값을 전달
  String chkVal = request.getParameter("inactiveToday");

  if (chkVal != null && chkVal.equals("1")) {
//    쿠키 객체 생성, 이름은 'PopupClose', 값은 'off'
    Cookie cookie = new Cookie("PopupClose", "off");
    cookie.setPath(request.getContextPath());
//    쿠키 생존 시간 설정, setMaxAge() 1초 단위로 설정 가능함, 60 * 60 * 20 는 하루 24시간을 뜻함
    cookie.setMaxAge(60 * 60 * 24);
//    생성한 쿠키를 response 내장 객체에 저장
    response.addCookie(cookie);
    out.print("쿠키 : 하루 동안 열지 않음");
  }
%>


