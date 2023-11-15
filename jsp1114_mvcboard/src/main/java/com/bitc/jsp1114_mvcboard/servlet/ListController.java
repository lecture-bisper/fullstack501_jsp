package com.bitc.jsp1114_mvcboard.servlet;

import com.bitc.jsp1114_mvcboard.database.MVCBoardDAO;
import com.bitc.jsp1114_mvcboard.database.MVCBoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "list", value = "/mvcboard/list.do")
public class ListController extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    MVCBoardDAO dao = new MVCBoardDAO();
    dao.dbOpen();
    List<MVCBoardDTO> boardList = dao.selectMVCBoardList();
    if (dao.dbIsOpen()) {
      dao.dbClose();
    }

    req.setAttribute("boardList", boardList);
//    바로 reqeust 영역에 저장 시
//    req.setAttribute("boardList", dao.selectMVCBoardList());

    req.getRequestDispatcher("/MVCBoard/List.jsp").forward(req, res);
  }
}







