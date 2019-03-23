<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="stylecss.css">
<script type="text/javascript">
	function check_form(f) {//�˻� �Լ�
		var name = document.getElementById("name");
		var tel = document.getElementById("tel");
		var count = document.getElementById("count");
		var total = document.getElementById("total_price");
		var totaltotal = document.getElementById("total");//���� �ѱ������ hidden���� ����
		//��ø���� ���ϸ� �����ȭ âó�� ��ü �������� �ȵȴ�...return false������...
		if (name.value == "" || name.value.length == 0) {//�̸� �˻�
			document.getElementById("name_chk").innerHTML = "*�̸��� �Է����ּ���.";
			document.getElementById("name_chk").style.color = "red";
			document.getElementById("total_price").innerHTML = "0��";
			document.getElementById("total_price").style.color = "red";
			{
				if (tel.value == "" || tel.value.length == 0) {//��ȭ��ȣ�˻�
					document.getElementById("tel_chk").innerHTML = "*��ȭ��ȣ�� �Է����ּ���.";
					document.getElementById("tel_chk").style.color = "red";
					document.getElementById("total_price").innerHTML = "0��";
					document.getElementById("total_price").style.color = "red";
					{
						if (count.value == "0") {//���� �˻�
							document.getElementById("count_chk").innerHTML = "*������ �Է����ּ���.";
							document.getElementById("count_chk").style.color = "red";
							return false;
						} else
							document.getElementById("count_chk").innerHTML = "";
					}
					return false;
				} else
					document.getElementById("tel_chk").innerHTML = "";
			}
			return false;

		} else
			//���� �ܾ� �����ֱ�
			document.getElementById("name_chk").innerHTML = "";
		{
			if (tel.value == "" || tel.value.length == 0) {
				document.getElementById("tel_chk").innerHTML = "*��ȭ��ȣ�� �Է����ּ���.";
				document.getElementById("tel_chk").style.color = "red";
				document.getElementById("total_price").innerHTML = "0��";
				document.getElementById("total_price").style.color = "red";
				return false;
			} else
				document.getElementById("tel_chk").innerHTML = "";
		}
		{
			if (count.value == "0") {
				document.getElementById("count_chk").innerHTML = "*������ �Է����ּ���.";
				document.getElementById("count_chk").style.color = "red";
				return false;
			} else
				document.getElementById("count_chk").innerHTML = "";//�ԷµǾ����� �����ܾ� �����
		}
		document.getElementById("total_price").innerHTML = count.value * 5000
				+ "��";// ����
		var retVal = confirm("�ֹ��Ͻðڽ��ϱ�?");//�Ϸ�Ǿ����� �޽���â
		if (retVal == true) {
			totaltotal.value = count.value * 5000;
		} else {
		}
	}
	function reset_form() {//��ҹ�ư
		var name = document.getElementById("name");
		var tel = document.getElementById("tel");
		var count = document.getElementById("count");
		var total = document.getElementById("total_price");

		var retVal = confirm("���� ����Ͻðڽ��ϱ�?");
		if (retVal == true) {//�����۾� �����
			document.getElementById("name_chk").innerHTML = "";
			document.getElementById("tel_chk").innerHTML = "";
			document.getElementById("count_chk").innerHTML = "";//�ԷµǾ����� �����ܾ� �����
		} else {
		}

	}
</script>

</head>
<body>
	<!-- 201704007 ������ -->
	<div id="container">
		<h2>201704007 ������ ��ǰ ���� ���</h2>
		<p style="color: red; font-size: 10px">��� �׸��� ä���ּ���.</p>
		<hr>
		<!--  -->
		<form action="Lab1_result.jsp" name="form" method="post"
			onsubmit="return check_form()" onreset="">

			<p>�̸�</p>
			<input type="text" id="name" name="name" onfocus="" autofocus>
			<span id="name_chk"> </span>
			<p>��ȭ��ȣ</p>
			<input type="text" id="tel" name="tel" placeholder="�����ϰ� �Է�"
				onfocus=""> <span id="tel_chk"></span>
			<p>������</p>
			<label> <input type="radio" name="size" value="S" checked>S
				<input type="radio" name="size" value="M">M<input
				type="radio" name=size value="L">L
			</label>
			<p>����</p>
			<select name="count" id="count" onclick="">
				<option value="0" selected>�����ϼ���</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select> <span id="count_chk"></span>
			<hr>
			<div class="total">
				�ݾ� : <span id="total_price" style="font-size: 25px">0</span> <input
					type="hidden" name="total" id="total" value="">

			</div>
			<p>
				<input type="submit" value="����" onclick="check_form()"> <input
					type="reset" value="�ٽþ���" onclick="reset_form()">
		</form>
	</div>
</body>
</html>