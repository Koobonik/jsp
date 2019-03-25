<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션</title>
</head>
<body>
<%if(session.getAttribute("id")==null){ %>
<form action="Lab2_2_result.jsp" method="post">
	아이디 <input type= "text" name="id">
	<br>
	비밀번호 <input type="password" name="pwd"> <br>
	<input type="submit" value="로그인">
</form>
<% }else { //세션이 설정되지 않은 경우
%>
<form action="logout.jsp" method="post" >
<%= session.getAttribute("id") %>님 로그인하셨습니다. <br>
<input type="submit" value="로그아웃">
</form>
<p> * 좋아하는 계절은? </p>
<form name="form" id="form" action="includepage.jsp" method="post">
	<label>
	<input type="radio" name="season" value="spring">봄
	<input type="radio" name="season" value="summer">여름
	<input type="radio" name="season" value="fall">가을
	<input type="radio" name="season" value="winter">겨울
</label>
<p> <input type="submit" value="결과보기">
</form>
<%
	Date d = new Date();
	SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	long time =session.getLastAccessedTime();
	out.println("마지막 접속 시간 : " + f.format(time)); 
%>







<%
// pageContext.include("pageContextTest3.jsp");
%>

<%}%>
</body>
</html>