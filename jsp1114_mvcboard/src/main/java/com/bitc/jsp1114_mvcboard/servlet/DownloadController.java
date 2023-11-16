package com.bitc.jsp1114_mvcboard.servlet;

import com.bitc.jsp1114_mvcboard.utils.FileUtil;
import com.bitc.jsp1114_mvcboard.database.MVCBoardDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "download", value = "/mvcboard/download.do")
public class DownloadController extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    파라미터 값으로 전달된 데이터 가져오기
    String ofile = req.getParameter("ofile");
    String sfile = req.getParameter("sfile");
    int idx = Integer.parseInt(req.getParameter("idx"));

//    FileUtil 을 활용하여 파일 다운로드
    FileUtil.download(ofile, sfile, "C:/upload", req, res);

//    다운로드 수 증가
    MVCBoardDAO dao = new MVCBoardDAO();
    dao.dbOpen();
    dao.updateDownCount(idx);
    if (dao.dbIsOpen()) {
      dao.dbClose();
    }
  }
}







