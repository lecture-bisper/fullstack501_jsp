package com.bitc.jsp1113.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/AnnoMapping.do")
public class AnnoMapping extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    request.setAttribute("message", "@WebServlet으로 주소 매핑");
    request.getRequestDispatcher("/chap12/AnnoMapping.jsp").forward(request, response);
  }
}







