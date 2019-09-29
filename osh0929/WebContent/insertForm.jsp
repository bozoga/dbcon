<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 정보 입력 양식</h2>
<form action="insertAction.jsp" method="post">
<table >
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" size="20"></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="userid" size="20"></td>
	</tr>
	<tr>
		<td>비번</td>
		<td><input type="password" name="pwd" size="20"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" size="20"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone" size="11"></td>
	</tr>
	<tr>
		<td>등급</td>
		<td>
			<input type="radio" name="admin" value="1"> 관리자
			<input type="radio" name="admin" value="0" checked="checked"> 일반회원
		</td>
	</tr>
	<tr>
		<td><input type="submit" value="전송" ></td>
		<td><input type="reset" value="초기화" ></td>
	</tr>
</table>
</form>


</body>
</html>