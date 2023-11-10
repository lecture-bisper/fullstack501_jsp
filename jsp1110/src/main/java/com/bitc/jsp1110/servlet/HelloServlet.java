package com.bitc.jsp1110.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class HelloServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
//  부모 클래스인 HttpServlet 에서 상속받은 doGet, doPost를 오버라딩하여 사용함
//  HttpServletRequest : 클라이언트에서 요청한 데이터를 가지고 있는 객체, JSP의 내장 객체 request와 동일함
//  HttpServletResponse : 클라이언트로 응답을 주기 위한 객체, JSP의 내장 객체 response와 동일함
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    request 영역에 message 라는 이름으로 데이터 저장
    req.setAttribute("message", "Hello Servlet!!");
//    request 객체에서 제공하는 페이지 이동 명령, 한번의 요청으로 서버 안에서 다른 페이지로 이동
//    getRequestDispatcher의 매개변수는 실제 View 페이지인 JSP 파일이 있는 위치를 지정
    req.getRequestDispatcher("/chap12/HelloServlet.jsp").forward(req, res);
  }
}







