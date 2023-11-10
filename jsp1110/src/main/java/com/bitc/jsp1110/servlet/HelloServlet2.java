package com.bitc.jsp1110.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="helloServlet2", value = "/test/helloServlet2")
public class HelloServlet2 extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    req.setAttribute("msg", "아무 글자나 입력해 봅시다.");
    req.getRequestDispatcher("/chap12/ServletTest2.jsp").forward(req, res);
  }
}







