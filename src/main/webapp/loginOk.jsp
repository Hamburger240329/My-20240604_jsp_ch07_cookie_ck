<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� Ȯ��</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
	String mid = request.getParameter("id");
	String mpw = request.getParameter("pw");
	
	if(mid.equals("tiger") && mpw.equals("12345")) { // ���̸� �α��� ����
		Cookie cookie1 = new Cookie("cookieID", mid);//��Ű1 ����
		Cookie cookie2 = new Cookie("cookiePW", mpw);//��Ű2 ����
		
		response.addCookie(cookie1);//�������� ������ ��Ű1�� Ŭ���̾�Ʈ ��ǻ�� ���������� ����
		response.addCookie(cookie2);//�������� ������ ��Ű2�� Ŭ���̾�Ʈ ��ǻ�� ���������� ����
		
		response.sendRedirect("loginSucess.jsp");
		//�α��� �����ϸ� loginSucess.jsp �������� ���� �̵�
	} else {
		response.sendRedirect("loginFail.jsp");
		//�α��� �����ϸ� loginFail.jsp �������� ���� �̵�
		
	}
	%>
</body>
</html>
