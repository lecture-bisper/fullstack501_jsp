package com.bitc.jsp1110.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="loginOK", value = "/loginOK.do")
public class LoginOK extends HttpServlet {

  @Override
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
    String userId = req.getParameter("userId2");
    String userPw = req.getParameter("userPw2");

    PrintWriter out = res.getWriter();

    out.print("<html lang='ko-kr'>");
    out.print("<head>");
    out.print("<meta charset='UTF-8'>");
    out.print("<meta name='viewport' content='width=device-width, initial-scale=1'>");
    out.print("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css' rel='stylesheet'>");
    out.print("<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js'></script>");
    out.print("</head>");
    out.print("<body>");
    out.print("<div class='container mt-5'>");
    out.print("<h3>서블릿으로 연결한 페이지</h3>");
    out.print("<h4>아이디 : " + userId + "</h4>");
    out.print("<h4>비밀번호 : " + userPw + "</h4>");
    out.print("</div>");
    out.print("</body>");
    out.print("</html>");
  }
}







