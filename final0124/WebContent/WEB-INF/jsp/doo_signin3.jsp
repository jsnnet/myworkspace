<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="doo_header2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>

<!-- �� ��Ÿ�Ϸ� �ϴ���? ��Ÿ�� ���� �ٸ� ������� �� �� �ִµ�? �ٸ� ������� �ϸ� �װ� ���� ���� ���� (����)�̴�? -->
<style>
#target {
	color: red;
	background-color: yellow;
	width: 50%;
	font-size: 18px;
	display: none; /*����Ӽ�*/
}
</style>
</head>
<body>
	<div>
		<form method="post" action="signin_completed" id="memF">
			<fieldset>
				<legend>ȸ�� ���� form</legend>
				<p>
					<label>���̵�</label><input type="text" name="memid" id="memid">
					&nbsp;<input type="button" id="idChkBtn" value="�ߺ�Ȯ��">
				</p>
				<p id="target">�̹� ������� ���̵� �Դϴ�.</p>
				<p>
					<label>��й�ȣ</label><input type="password" name="mempwd" id="mempwd">
				</p>
				<p>
					<label>�̸�</label><input type="text" name="memname" id="memname">
				</p>
				<p>
					<label>����</label><input type="text" name="memage" id="memage">
				</p>
				<p>
					<label>����</label><input type="text" name="memgender" id="memgender">
				</p>
				<p>
					<label>��ȭ��ȣ</label><input type="text" name="memphone" id="memphone">
				</p>
				<p>
					<label>�����ȣ</label><input type="text" name="mempost" id="mempost"><input
						type="button" id="postBtn" value="�����ȣ ã��">
				</p>
				<p>
					<label>�ּ�</label><input type="text" name="memaddr1" id="memaddr1">
				</p>
				<p>
					<label>���ּ�</label><input type="text" name="memaddr2" id="memaddr2">
				</p>
				<p>
					<label>Email</label><input type="text" name="mememail"
						id="mememail">
				</p>
				<p>
					<input type="submit" value="ȸ������">
				</p>
			</fieldset>
		</form>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
	$(function() {
		$('#postBtn').click(function() {
			execDaumPostcode();

		});
		//ȸ�� ���̵� �ߺ�Ȯ��!
		$('#idChkBtn').click(function() {
			$.ajax({
				url : "chkid?memid=" + $('#memid').val(),
				success : function(data) {
					if (data == 0) {
						$('#target').show().css("color", "blue").text("��밡��");
					} else {
						$('#target').show().css("color", "red").text("�����");

					}
				}
			});

		});
		function execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

					// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
					// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
					var fullAddr = ''; // ���� �ּ� ����
					var extraAddr = ''; // ������ �ּ� ����

					// ����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
					if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
						fullAddr = data.roadAddress;

					} else { // ����ڰ� ���� �ּҸ� �������� ���(J)
						fullAddr = data.jibunAddress;
					}

					// ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����Ѵ�.
					if (data.userSelectedType === 'R') {
						//���������� ���� ��� �߰��Ѵ�.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// �ǹ����� ���� ��� �߰��Ѵ�.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// �������ּ��� ������ ���� ���ʿ� ��ȣ�� �߰��Ͽ� ���� �ּҸ� �����.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
								: '');
					}

					// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
					document.getElementById('mempost').value = data.zonecode; //5�ڸ� �������ȣ ���
					document.getElementById('memaddr1').value = fullAddr;

					// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
					document.getElementById('memaddr2').focus();
				}
			}).open();
		} // fn end

	});
</script>
</html>