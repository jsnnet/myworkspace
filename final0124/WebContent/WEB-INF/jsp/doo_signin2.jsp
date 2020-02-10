<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="doo_header2.jsp"%>

<%-- loginform.jsp --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ȸ������</title>
<style>
#login {
	width: 70%;
	margin: auto;
}
</style>

<!-- font awesome -->
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<!-- Custom style -->
<link rel="stylesheet" href="../plugin/bootstrap/css/style.css"
	media="screen" title="no title" charset="utf-8">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->



<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="../config/js/join.js"></script>
</head>
<body>
	<div id="login">
		<article class="container">
			<div class="page-header"></div>
			<tr>
				<br>
				<span style="padding-left: 160px"> <img
					src="resources/img/macaron/logo2.png" align="middle">
					<div class="col-sm-6 col-md-offset-3">
					<!-- ���⿡ � �������� ���� action �ֱ� -->
						<form method="post" action="memberjoin" id="memF">
							<div class="form-group">
								<label for="memid">���̵�</label> <input type="text"
									class="form-control" name="memid" id="memid"
									placeholder="���̵��Է����ּ���" ng-required="true" ng-maxlength="4">
								<button type="button" id="idChkBtn"
									class="btn btn-primary active" value="�ߺ�Ȯ��">���̵��ߺ�Ȯ��</button>
								<i class="fa fa-check spaceLeft"></i>
							</div>
							<div class="form-group">
								<label for="memname">�̸�</label> <input type="text"
									class="form-control" name="memname" id="memname"
									placeholder="�̸����Է����ּ���" ng-required="true" ng-maxlength="4">
							</div>
							<div class="form-group">
								<label for="mememail">�̸��� �ּ�</label> <input type="email"
									class="form-control" name="mememail" id="mememail"
									placeholder="�̸��� �ּҸ� �Է����ּ���">
							</div>
							<div class="form-group">
								<label for="mempwd">��й�ȣ</label> <input type="password"
									class="form-control" name="mempwd" id="mempwd"
									placeholder="��й�ȣ�� �Է����ּ���">
							</div>
							<div class="form-group">
								<label for="mempwdchk">��й�ȣ Ȯ��</label> <input
									type="password" class="form-control" name="mempwdchk"
									id="mempwdchk" placeholder="��й�ȣ Ȯ���� ���� �ٽ��ѹ� �Է� �� �ּ���">
							</div>
							<div class="form-group">
								<label for="memphone">�޴��� ��ȣ</label> <input type="tel"
									class="form-control" name="memphone" id="memphone"
									placeholder="�޴�����ȣ�� �Է��� �ּ���">
							</div>
							<div class="form-group" style="text-align: left:;">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary active"> <input
										type="radio" id="memgender" name="memgender"
										autocomplete="off" value="����" checked>����
									</label> <label class="btn btn-primary"> <input type="radio"
										id="memgender" name="memgender" autocomplete="off" value="����"
										checked>����
									</label>
								</div>
							</div>

							<div class="form-group text-center">
								<button type="submit" class="btn btn-primary">
									ȸ������<i class="fa fa-check spaceLeft"></i>
								</button>
								<button type="submit" class="btn btn-warning">
									�������<i class="fa fa-times spaceLeft"></i>
								</button>
							</div>
						</form>
					</div>
				</span>
			</tr>
		</article>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	$(function() {
		//��й�ȣ Ȯ��
		$('#mempwd2').blur(function() {
			if ($('#mempwd').val() != $('#mempwd2').val()) {
				if ($('#mempwd2').val() != '') {
					alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
					$('#mempwd2').val('');
					$('#mempwd2').focus();
				}
			}
		});
	});
	$(function() {
		$('#postBtn').click(function() {
			execDaumPostcode();
		});
		// ȸ�� ���̵� �ߺ�Ȯ��!
		$('#idchkbtn').click(function() {
			$.ajax({
				url : "idcheck?memid=" + $('#memid').val(),
				success : function(data) {
					if (data == 0) {
						$('#target').show().css("color", "blue").text("��밡��");
					} else {
						$('#target').show().css("color", "red").text("�����");
					}
				}
			});
		});
	});
	//Ư������ 
	function mempwd() {
		var objEv = event.srcElement;
		var num = "{}[]()<>?_|~`!@#$%^&*-+\"'\\/ "; //�Է��� ���� Ư������ ����.
		event.returnValue = true;

		for (var i = 0; i < objEv.value.length; i++) {
			if (-1 != num.indexOf(objEv.value.charAt(i)))
				event.returnValue = false;
		}
		if (!event.returnValue) {
			alert("Ư�����ڴ� �Է��Ͻ� �� �����ϴ�.");
			objEv.value = "";
		}
	};

	$('#idChkBtn').click(function() {
		if ($('#memid').val() == '') {
			alert('���� �Է��Ͽ� �ּ��� .');
		} else {
			$.ajax({
				url : "idcheck?memid=" + $('#memid').val(),
				success : function(data) {
					console.log(data + '�Ѿ�� data �� ');
					if (data == 0) {
						console.log(data);
						alert('��� ���� ');
						$('#memid').attr("readonly", true);
					} else {
						console.log(data);
						alert('��� �Ұ� ');
					}
				}
			});
		}
	});
</script>
</html>

<%@include file="footer.jsp"%>