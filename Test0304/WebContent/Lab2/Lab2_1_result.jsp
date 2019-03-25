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
<!-- post로 전송받은 값을은 밑에 명령어 처럼 해서 받는다 -->

<%=request.getParameter("wf")%>
<% String hello = request.getParameter("wf"); %>
<%
String w = "while";
String f = "for";
out.println(hello);
if ( hello.equals(w) || hello.equals(f)) {

	out.println("이름 : "+request.getParameter("name"));

	out.println("학번 : "+ request.getParameter("stuid"));
	
	if (hello.equals(w)){
		out.println("while문 선택!");
		int i = 0;
		while (i < Integer.parseInt(request.getParameter("count")) ){
			out.println(request.getParameter("str"));
			i++;
		}
	}
	
	else if ( hello.equals(f)){
		out.println("for문 선택!");
		for(int i = 0; i < Integer.parseInt(request.getParameter("count")); i++){
			out.println(request.getParameter("str"));
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