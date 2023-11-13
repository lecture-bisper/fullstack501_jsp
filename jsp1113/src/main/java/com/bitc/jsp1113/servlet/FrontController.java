package com.bitc.jsp1113.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// @WebServlet 를 이용하여 클라이언트에게 접속할 url 정보를 제공하고, 지정한 클래스와 url을 연동
// url에 * 을 사용하여 모든 접속 url을 현재 클래스에 연동
@WebServlet(value = "*.one")
public class FrontController extends HttpServlet {

//  get 방식으로 서버에 요청하는 모든 url을 먼저 처리
  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    getRequestURI : 서버 주소와 쿼리스트링을  제외한 하위 주소를 모두 가져옴
    String uri = req.getRequestURI();
//    lastIndexOf : 전체 문자열 중에서 지정한 문자열이 마지막으로 검색되는 index 번호를 알려줌
    int lastSlash = uri.lastIndexOf("/");
//    substring() : 지정한 index에서 문자열 복사하기
    String commandStr = uri.substring(lastSlash);

//    복사해 온 주소와 else if 문의 주소가 같은지 확인
    if (commandStr.equals("/regist.one")) {
      registFunc(req);
    }
    else if (commandStr.equals("/login.one")) {
      loginFunc(req);
    }
    else if (commandStr.equals("/freeboard.one")) {
      freeboardFunc(req);
    }

//    내장 객체 request 영역에 데이터를 저장
    req.setAttribute("uri", uri);
    req.setAttribute("commandStr", commandStr);
//    지정한 jsp 템플릿 파일을 지정하고 페이지 이동(forward, 서버 내부에서 이동)
    req.getRequestDispatcher("/chap12/FrontController.jsp").forward(req, res);
  }

  private void registFunc(HttpServletRequest req) {
    req.setAttribute("resultValue", "<h4>회원가입</h4>");
  }

  private void loginFunc(HttpServletRequest req) {
    req.setAttribute("resultValue", "<h4>로그인</h4>");
  }

  private void freeboardFunc(HttpServletRequest req) {
    req.setAttribute("resultValue", "<h4>자유게시판</h4>");
  }
}







