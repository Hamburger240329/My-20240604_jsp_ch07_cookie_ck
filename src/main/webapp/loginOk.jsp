<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
	String mid = request.getParameter("id");
	String mpw = request.getParameter("pw");
	
	if(mid.equals("tiger") && mpw.equals("12345")) { // 참이면 로그인 성공
		Cookie cookie1 = new Cookie("cookieID", mid);//쿠키1 생성
		Cookie cookie2 = new Cookie("cookiePW", mpw);//쿠키2 생성
		
		response.addCookie(cookie1);//서버에서 생성된 쿠키1을 클라이언트 컴퓨터 웹브라우저로 전송
		response.addCookie(cookie2);//서버에서 생성된 쿠키2을 클라이언트 컴퓨터 웹브라우저로 전송
		
		response.sendRedirect("loginSucess.jsp");
		//로그인 성공하면 loginSucess.jsp 페이지로 강제 이동
	} else {
		response.sendRedirect("loginFail.jsp");
		//로그인 실패하면 loginFail.jsp 페이지로 강제 이동
		
	}
	%>
</body>
</html>
