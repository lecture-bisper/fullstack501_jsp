package com.bitc.jsp1113.database;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MyFileDao extends JDBConnect {

  public MyFileDao() {
    super(
        "com.mysql.cj.jdbc.Driver",
        "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC",
        "test1",
        "fullstack501"
    );
  }

//  파일 업로드용 메소드, 파일 정보를 DB에 저장하기 위한 메소드
  public int insertFile(MyFileDto dto) {
    int result = 0;

    try {
//      파일 정보를 입력하기 위한 SQL 문
      String sql = "INSERT INTO myfile (title, cate, ofile, sfile, postdate) ";
      sql += "VALUES (?, ?, ?, ?, NOW()) ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, dto.getTitle());
      pstmt.setString(2, dto.getCate());
      pstmt.setString(3, dto.getOfile());
      pstmt.setString(4, dto.getSfile());

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      System.out.println("데이터 베이스 insert 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return result;
  }

  public List<MyFileDto> myFileList() {
    List<MyFileDto> fileList = new ArrayList<>();

    try {
      String sql = "SELECT idx, title, cate, ofile, sfile, postdate FROM myfile ORDER BY idx DESC ";

      stmt = conn.createStatement();
      rs = stmt.executeQuery(sql);

      while (rs.next()) {
        MyFileDto myFile = new MyFileDto();

        myFile.setIdx(rs.getInt("idx"));
        myFile.setTitle(rs.getString("title"));
        myFile.setCate(rs.getString("cate"));
        myFile.setOfile(rs.getString("ofile"));
        myFile.setSfile(rs.getString("sfile"));
        myFile.setPostdate(rs.getString("postdate"));

        fileList.add(myFile);
      }
    }
    catch (SQLException e) {
      System.out.println("데이터 조회 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return fileList;
  }
}







