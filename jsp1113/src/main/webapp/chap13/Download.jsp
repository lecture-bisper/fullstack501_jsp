<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-14
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.io.File" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.FileNotFoundException" %>
<%@ page import="com.bitc.jsp1113.utils.JSFunction" %>

<%
  // 파일이 저장되어 있는 폴더 경로
  String saveDir = "C:/upload";
//  클라이언트에서 전달한 원본 파일명, 저장된 파일명
  String saveFileName = request.getParameter("sName");
  String originalFileName = request.getParameter("oName");

  try {
//    다운로드를 위한 파일 객체 생성
    File file = new File(saveDir, saveFileName);
//    InputStream에 파일을 저장
    InputStream inputStream = new FileInputStream(file);

//    웹 브라우저의 종류 확인
    String client = request.getHeader("User-Agent");
//    WOW64는 인터넷 익스플로러를 의미, 인터넷 익스플로러 사용 시 한글 깨짐 처리
    if (client.indexOf("WOW64") == 1) {
      originalFileName = new String(originalFileName.getBytes("UTF-8"), "ISO-8859-1");
    }
    else {
      originalFileName = new String(originalFileName.getBytes("KSC5601"), "ISO-8859-1");
    }

//    파일 다운로드를 위해서 서버의 응답 객체인 response 객체 설정
    response.reset();
//    응답 객체인 response 객체의 컨텐츠 타입 변경, 파일 전송 방식으로 변경
    response.setContentType("application/octet-stream");
//    파일 다운로드 설정
    response.setHeader("Content-Disposition", "attachment; filename=\"" + originalFileName + "\"");
//    다운로드 하는 파일의 크기 설정
    response.setHeader("Content-Length", "" + file.length());

    out.clear();

//    response 객체에서 새로운 출력 스트림 생성
    OutputStream outputStream = response.getOutputStream();

//    파일의 내용을 출력 스트림인 outputStream에 쓰기
//    네트워크 통신으로 데이터 전송 시 byte 타입의 배열로 데이터를 전송
//    파일의 크기를 기준으로 byte 타입의 배열 생성
    byte[] b = new byte[(int) file.length()];
    int readBuffer = 0;
//    inputStream에 저장된 내용을 읽어오기, 읽어올 데이터가 없을 경우 0보다 작은 값이 출력됨
//    read() : 지정된 스트림에서 데이터 읽어옴, 반환값으로 몇글자 읽어왔는지 반환
    while ( (readBuffer = inputStream.read(b)) > 0) {
//      outputStream에 내용 쓰기
//      write(타겟배열, 시작index, 내용을 쓸 크기) : 타겟 배열에 저장된 내용을 지정한 index부터 지정한 크기만큼 쓰기위한 메소드
      outputStream.write(b, 0, readBuffer);
    }

//    스트림은 외부 리소스이므로 반드시 close()로 닫아줘야 함
    inputStream.close();
    outputStream.close();
  }
  catch (FileNotFoundException e) {
    JSFunction.alertBack("파일을 찾을 수 없습니다.", out);
  }
  catch (Exception e) {
    JSFunction.alertBack("파일 다운로드 중 오류가 발생하였습니다.", out);
  }
%>









