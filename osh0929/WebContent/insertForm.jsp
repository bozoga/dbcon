<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ�� ���� �Է� ���</h2>
<form action="insertAction.jsp" method="post">
<table >
	<tr>
		<td>�̸�</td>
		<td><input type="text" name="name" size="20"></td>
	</tr>
	<tr>
		<td>���̵�</td>
		<td><input type="text" name="userid" size="20"></td>
	</tr>
	<tr>
		<td>���</td>
		<td><input type="password" name="pwd" size="20"></td>
	</tr>
	<tr>
		<td>�̸���</td>
		<td><input type="text" name="email" size="20"></td>
	</tr>
	<tr>
		<td>��ȭ��ȣ</td>
		<td><input type="text" name="phone" size="11"></td>
	</tr>
	<tr>
		<td>���</td>
		<td>
			<input type="radio" name="admin" value="1"> ������
			<input type="radio" name="admin" value="0" checked="checked"> �Ϲ�ȸ��
		</td>
	</tr>
	<tr>
		<td><input type="submit" value="����" ></td>
		<td><input type="reset" value="�ʱ�ȭ" ></td>
	</tr>
</table>
</form>


</body>
</html>