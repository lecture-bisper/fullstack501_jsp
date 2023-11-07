package com.bitc.jsp1106_mvc1.database;

import jakarta.servlet.ServletContext;

import java.sql.*;

// 데이터 베이스 접속을 위한 부모 클래스
public class JDBConnect {
//  실제 접속 및 SQL 쿼리 실행, 결과값을 받아오기 위한 필드 선언
  public Connection conn;
  public Statement stmt;
  public PreparedStatement pstmt;
  public ResultSet rs;

//  데이터 베이스 접속을 위한 드라이버 정보, 서버 주소, 사용자ID/PW 정보를 저장하기 위한 필드 선언
  private String dbDriver;
  private String dbUrl;
  private String dbUserId;
  private String dbUserPw;

//  생성자 오버로딩을 통해서 여러가지 방식으로 데이터베이스를 사용할 수 있도록 선언
//  기본 값으로 사용 (MySql 사용을 기본으로 함)
  public JDBConnect() {
    this(
        "com.mysql.cj.jdbc.Driver",
        "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC",
        "test1",
        "fullstack501"
    );
  }

//  Web.xml에 입력된 내용을 가져와서 사용하기
  public JDBConnect(ServletContext app) {
    this(
        app.getInitParameter("MySqlDriver"),
        app.getInitParameter("MySqlUrl"),
        app.getInitParameter("MySqlUserId"),
        app.getInitParameter("MySqlUserPw")
    );
  }

//  사용자가 전달한 드라이버 정보, 서버 주소, 사용자 ID/PW를 사용
  public JDBConnect(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    this.dbDriver = dbDriver;
    this.dbUrl = dbUrl;
    this.dbUserId = dbUserId;
    this.dbUserPw = dbUserPw;
  }

//  저장된 드라이버 정보, 서버 주소, 사용자 ID/PW를 사용하여 데이터 베이스 접속
  public void dbOpen() {
    try {
      Class.forName(dbDriver);
      conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);
      System.out.println("데이터 베이스에 연결했습니다.");
    }
    catch (Exception e) {
      System.out.println("데이터 베이스 연결이 실패했습니다.");
      e.printStackTrace();
    }
  }

//  데이터 베이스 접속 종료 및 리소스 해제
  public void dbClose() {
    try {
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }
      System.out.println("데이터 베이스 연결 및 리소스를 해제했습니다.");
    }
    catch (Exception e) {
      System.out.println("데이터 베이스 연결 및 리소스 해제 중 오류가 발생했습니다.");
      e.printStackTrace();
    }
  }
}







