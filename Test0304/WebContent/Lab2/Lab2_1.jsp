<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<%@include file="header.jsp"%>
<html>
<head>
<style>
#container
{
width: 520px;
border: 1px solid black;
padding: 20px 40px;margin: 0 auto 
}
p {
font-size: 25px;
color: black
}
span{
font-size: 10px;
color: red 
}
div.total {
text-align: right;
font-size: 20px;
color: blue 
}
</style>
<title>Lab2_1</title>
</head>
<body>
<div id="container">
		<hr>
		<form name="form" id="form" action="Lab2_1_result.jsp" method="post">
			<p>�̸�</p>
			<input type="text" id="name" name="name">
			
			<p>�й�</p>
			<input type="number" id="stuid" name="stuid">
			
			<br>
			<br>
			<label>
				<input type="radio" name="wf" value="for">while��
				<input type="radio" name="wf" value="while">for��
			</label>
			
			<p>�Է� Ƚ��</p>
			<input type="number" id="count" name="count">
			
			<p>�Է� ����</p>
			<input type="text" id="str" name="str">
			
			
			<p> <input type="button" onclick="submit()" value="������">
		</form>
	</div>
<script type="text/javascript">
function submit() {
	document.getElementById('form').submit();
}
</script>
</body>
</html>

    