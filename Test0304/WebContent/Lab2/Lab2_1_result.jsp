<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<br>
<br>
<!-- post�� ���۹��� ������ �ؿ� ��ɾ� ó�� �ؼ� �޴´� -->

<%=request.getParameter("wf")%>

<%
String hello = request.getParameter("wf");
String w = "while";
String f = "for";
out.print(hello);out.print(hello);out.print(hello);
if ( hello == w || hello == f) {

	out.println("�̸� : "+request.getParameter("name"));

	out.println("�й� : "+ request.getParameter("stuid"));
	
	if (request.getParameter("wf") == "while"){
		out.println("while�� ����!");
		int i = 0;
		while (i < Integer.parseInt(request.getParameter("count")) ){
			out.println(request.getParameter("str"));
			i++;
		}
	}
	
	else if ( request.getParameter("wf") == "for"){
		out.println("for�� ����!");

		for(int i = 0; i < Integer.parseInt(request.getParameter("count")); i++){
			out.println(request.getParameter("str"));
		}
	}
	
}



if (request.getParameter("wf") == null) {
out.print("���� ��ư�� �������� �����̽��ϴ�.");
}


%>


<br>
<br>
<hr>
</body>
</html>