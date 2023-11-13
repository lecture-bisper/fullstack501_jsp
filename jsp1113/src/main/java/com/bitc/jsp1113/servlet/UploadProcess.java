package com.bitc.jsp1113.servlet;

import com.bitc.jsp1113.FileUtil;
import com.bitc.jsp1113.database.MyFileDao;
import com.bitc.jsp1113.database.MyFileDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;

// 파일 업로드를 처리할 서블릿 클래스 생성, url 지정
@WebServlet("/UploadProcess.do")
// 업로드 시 파일당 최대 크기 설정(1MB), 업로드 시 전체 파일의 최대 크기 설정(10MB)
@MultipartConfig(maxFileSize = 1024 * 1024 * 1, maxRequestSize = 1024 * 1024 * 10)
public class UploadProcess extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    try {
//      String saveDir = getServletContext().getRealPath("C:/upload/");
//      저장할 폴더 지정
      String saveDir = "C:/upload/";
//      클라이언트에서 서버로 전달한 파일의 원본 이름
      String originalFileName = FileUtil.uploadFile(req, saveDir);
//      서버에 저장될 변경된 파일명
      String saveFileName = FileUtil.renameFile(saveDir, originalFileName);

//      실제 서버의 특정 폴더에 파일 저장하기
      insertMyFile(req, originalFileName, saveFileName);
      res.sendRedirect("/chap13/FileList.jsp");
    }
    catch (Exception e) {
      e.printStackTrace();
      req.setAttribute("errorMessage", "파일 업로드 오류");
      req.getRequestDispatcher("/chap13/FileUploadMain.jsp").forward(req, res);
    }
  }

  private void insertMyFile(HttpServletRequest req, String oFile, String sFile) {
//    클라이언트에서 전달한 파라미터 중 title 가져오기
    String title = req.getParameter("title");
//    클라이언트에서 전달한 파라미터 중 cate 가져오기, 배열로 가져오기
    String[] cateArr = req.getParameterValues("cate");
//    연속적인 문자열 추가/삭제가 있을 경우 효율적인 StringBuilder로 문자열 만들기
    StringBuilder cateBuff = new StringBuilder();

//    배열로 가져온 카테고리 데이터를 문자열로 만듬
    if (cateArr == null) {
      cateBuff.append("선택한 항목 없음");
    }
    else {
      for (String cate : cateArr) {
        cateBuff.append(cate + ", ");
      }
    }

    System.out.println("파일 외 폼값 : " + title + "\n" + cateBuff);

//    MyFileDto 클래스 타입의 객체 생성, 데이터 추가
    MyFileDto myFile = new MyFileDto();
    myFile.setTitle(title);
    myFile.setCate(cateBuff.toString());
    myFile.setOfile(oFile);
    myFile.setSfile(sFile);

//    데이터 베이스 연결 후 파일 정보를 데이터 베이스에 등록
    MyFileDao dao = new MyFileDao();
    dao.dbOpen();
    dao.insertFile(myFile);
    dao.dbClose();
  }
}







