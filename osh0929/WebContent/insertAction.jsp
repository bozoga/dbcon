<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "system";
	String pass = "1234";
	
	String sql = "insert into member values (?, ?, ?, ?, ?, ?)";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String id= request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String admin = request.getParameter("admin");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, user, pass);
		
		//미리 미완성의 sql을 등록시켜 놓겠다.
		pstmt = conn.prepareStatement(sql); 
		
		//바인딩 시키기
		pstmt.setString(1, name); //첫번째 물음표에 가져다 놔!
		pstmt.setString(2, id);
		pstmt.setString(3, pwd);
		pstmt.setString(4, phone);
		pstmt.setString(5, email);
		pstmt.setInt(6, Integer.parseInt(admin));
		pstmt.executeUpdate();
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
<h3>입력이 완료되었습니다</h3><br>
<a href="list.jsp">확인하기</a>

</body>
</html>