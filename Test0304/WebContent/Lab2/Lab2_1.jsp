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
			<input type="text" id="stuid" name="stuid">
			
			<br>
			<br>
			<label>
				<input type="radio" name="wf" value="for" checked> while��
				<input type="radio" name="wf" value="while"> for��
			</label>
			
			<p>�Է� Ƚ��</p>
			<input type="text" id="count" name="count">
			
			<p>�Է� ����</p>
			<input type="text" id="count" name="count">
			
			<div class="total">
				�ݾ� : <span id="total_price" style="font-size: 25px"> 0 </span>
				<input type="hidden" name="hidden_price" id="hidden_price" value="">
			</div>
			<p> <input type="button" onclick="check()" value="����"> <input type="reset" onclick="dreset()" value="�ٽþ���">
		</form>
	</div>
<script type="text/javascript">
	
	// �ٽþ��� ��ư �������� �۵�
function dreset() {
	//window.alert("sd");
	var real = confirm("������ �ٽ� ���ðڽ��ϱ�?");
	if (real == true){
		document.getElementById("total_price").innerHTML = "0";
		document.getElementById("total_price").style.color = "black";
		document.getElementById("name").value = "";
		document.getElementById("tel").value = "";
		document.getElementById("hidden_price").value = "";
		//document.getElementById("size").value = "S";
		
	}
	
}
	
	// �̸�â Ŭ��������� �۵�
function namefocus() {
	if (document.getElementById("name_chk").value != "") {
		document.getElementById("name_chk").innerHTML = "";
	}
}

// ��ȭ��ȣâ Ŭ��������� �۵�
function telfocus() {
	if (document.getElementById("tel_chk").value != "") {
		document.getElementById("tel_chk").innerHTML = "";
	}
}

function check() {
	// �̸� ���Է½�
	if (document.getElementById("name").value == "") {
		document.getElementById("name_chk").innerHTML = "�̸��� �Է����ּ���.";
		document.getElementById("name_chk").style.color = "red";
	}

	// ��ȭ��ȣ ���Է½�
	if (document.getElementById("tel").value == "") {
		document.getElementById("tel_chk").innerHTML = "��ȭ��ȣ�� �Է����ּ���.";
		document.getElementById("tel_chk").style.color = "red";
	}

	// ���� �� ���ý�
	if (document.getElementById("count").value == 0) {
		document.getElementById("count_chk").innerHTML = "������ �������ּ���.";
		document.getElementById("count_chk").style.color = "red";
	}
	
	// ���� �Է� �� �������
	if (document.getElementById("name").value != "" && document.getElementById("tel").value != "" && document.getElementById("count").value != 0 ){
		var real_order = confirm("��ǰ�� �ֹ� �Ͻðڽ��ϱ�?"); // bool Ÿ������ ��ȯ�Ǿ� ��
		// �� ������� �׼�
		if (real_order == true){
			document.getElementById('form').submit();
		}
		
		// �ƴϿ� ������� �׼�
		else {
			return;
		}
	}

}
// ���� Ŭ������ ��� ���� �ٲ�
function price(){
	document.getElementById("count_chk").innerHTML = "";
	var count = document.getElementById("count");
	
	var pr2 = count.value;
	var price = pr2 * 5000;
	// ���̴� ���� ���
	document.getElementById("total_price").innerHTML = price + " ��";
	document.getElementById("total_price").style.color = "red";
	
	// ���� post ���۶� ���� ��
	document.getElementById("hidden_price").value = price;
	
	//window.alert(price);
	//if (pr == "0")
}

</script>
</body>
</html>

    