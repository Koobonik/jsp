<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<br>
<br>

<% String hello = request.getParameter("wf"); %>
<%
String w = "while";
String f = "for";
if ( hello.equals(w) || hello.equals(f)) {

	out.println("이름 : "+request.getParameter("name"));
	%>
	<br>
	<%
	out.println("학번 : "+ request.getParameter("stuid"));
	%>
	<br>
	<%
	if (hello.equals(w)){
		out.println("while문 선택!");
		%>
		<br>
		<%
		int i = 0;
		while (i < Integer.parseInt(request.getParameter("count")) ){
			out.println(request.getParameter("str"));
			i++;
			%>
			<br>
			<%
		}
	}
	
	else if ( hello.equals(f)){
		out.println("for문 선택!");
		%>
		<br>
		<%
		for(int i = 0; i < Integer.parseInt(request.getParameter("count")); i++){
			out.println(request.getParameter("str"));
			%>
			<br>
			<%
		}
	}
	
}



if (request.getParameter("wf") == null) {
out.print("라디오 버튼을 선택하지 않으셨습니다.");
}


%>


<br>
<br>
<hr>
</body>
</html>