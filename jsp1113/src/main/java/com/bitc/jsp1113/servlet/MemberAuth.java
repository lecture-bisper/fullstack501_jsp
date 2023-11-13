package com.bitc.jsp1113.servlet;

import com.bitc.jsp1113.database.MemberDao;
import com.bitc.jsp1113.database.MemberDto;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// 서블릿 클래스
@WebServlet("/MemberAuth.mvc")
public class MemberAuth extends HttpServlet {
//  web.xml에서 데이터를 가져오기 위한 ServletContext 객체 생성
//  ServletContext app;
  
//  사용자 정보를 데이터 베이스에서 가져오기 위한 DAO 클래스를 필드로 사용
  MemberDao dao;

//  서블릿 클래스가 객체화될 때 한번 실행되는 초기화 메소드
  @Override
  public void init() throws ServletException {
//    현재 동작하고 있는 서블릿 애플리케이션 정보를 가져옴
//    app = this.getServletContext();

//    데이터 베이스 접속 정보 설정
    String dbDriver = "com.mysql.cj.jdbc.Driver";
    String dbUrl = "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC";
    String dbUserId = "test1";
    String dbUserPw = "fullstack501";

//    DAO 클래스 타입의 객체를 사용하여 데이터 베이스 연결
    dao = new MemberDao(dbDriver, dbUrl, dbUserId, dbUserPw);
    dao.dbOpen();
  }

//  사용자 요청에서 get 방식과 post 방식 모두 동작하는 메소드
//  doGet/doPost 메소드 실행 이전에 동작하는 메소드
//  사용자 인증 정보를 가져옴
  @Override
  protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    web.xml 에 저장된 context-param의 정보를 가져옴
//    String adminId = app.getInitParameter("admin_id");
//    설정 파일에 지정된 관리자 아이디를 가져옴
    String adminId = this.getServletContext().getInitParameter("admin_id");
//    사용자가 서버로 전달한 id/pass 정보 가져옴
    String userId = req.getParameter("id");
    String userPw = req.getParameter("pass");

//    dao를 사용하여 데이터베이스에서 사용자 정보를 가져옴
    MemberDto member = dao.getMemberInfo(userId, userPw);

    String memberName = member.getName();
    if (memberName != null) {
//      데이터 베이스에 정보가 있을 경우
      if (adminId.equals(userId)) {
//        설정 파일의 정보와 사용자가 입력한 id가 같을 경우
        req.setAttribute("authMessage", adminId + "는 관리자입니다.");
      }
      else {
//        설정 파일의 정보와 다를 경우
        req.setAttribute("authMessage", memberName + " 회원님 반갑습니다.");
      }
    }
    else {
//      데이터 베이스에 정보가 없을 경우
      req.setAttribute("authMessage", "귀하는 회원이 아닙니다.");
    }

    req.getRequestDispatcher("/chap12/MemberAuth.jsp").forward(req, res);
  }

  @Override
  public void destroy() {
    dao.dbClose();
  }

}







