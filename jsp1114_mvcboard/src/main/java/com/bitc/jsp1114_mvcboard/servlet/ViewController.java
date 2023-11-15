package com.bitc.jsp1114_mvcboard.servlet;

import com.bitc.jsp1114_mvcboard.database.MVCBoardDAO;
import com.bitc.jsp1114_mvcboard.database.MVCBoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "view", value = "/mvcboard/view.do")
public class ViewController extends HttpServlet {

//  지정한 글번호에 대한 상세 정보를 출력
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    글번호 파라미터 값 가져오기
    int idx = Integer.parseInt(req.getParameter("idx"));

//    데이터 베이스 연결
    MVCBoardDAO dao = new MVCBoardDAO();
    dao.dbOpen();

//    글번호에 해당하는 글 상세 정보를 가져옴
    MVCBoardDTO board = dao.selectMVCBoardDetail(idx);
    if (dao.dbIsOpen()) {
      dao.dbClose();
    }
//    request 영역에 가져온 데이터 저장
    req.setAttribute("board", board);

//    jsp 템플릿 파일을 호출하여 서버 내에서 페이지 이동
    req.getRequestDispatcher("/MVCBoard/View.jsp").forward(req, res);
  }
}







