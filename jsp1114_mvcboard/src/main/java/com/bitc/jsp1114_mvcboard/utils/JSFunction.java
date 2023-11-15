package com.bitc.jsp1114_mvcboard.utils;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.jsp.JspWriter;

import java.io.PrintWriter;

public class JSFunction {
  public static void alertLocation(String msg, String url, HttpServletResponse res) {
    try {
      res.setContentType("text/html; charset=UTF-8");
      PrintWriter out = res.getWriter();

      String script = "<script>";
      script += "alert('" + msg + "');";
      script += "location.href = '" + url + "';";
      script += "</script>";

      out.println(script);
    }
    catch (Exception e) {}
  }

  public static void alertBack(String msg, HttpServletResponse res) {
    try {
      res.setContentType("text/html; charset=UTF-8");
      PrintWriter out = res.getWriter();

      String script = "<script>";
      script += "alert('" + msg + "');";
      script += "history.back();";
      script += "</script>";

      out.println(script);
    }
    catch (Exception e) {
      System.out.println("에러 발생");
      System.out.println(e.getMessage());
    }
  }
}







