package com.bitc.jsp1114_mvcboard.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "write", value = "/mvcboard/write.do")
public class WriteController extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    req.getRequestDispatcher("/MVCBoard/Write.jsp").forward(req, res);
  }
}







