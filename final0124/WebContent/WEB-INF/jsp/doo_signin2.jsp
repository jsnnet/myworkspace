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
<title>회원가입</title>
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
					<!-- 여기에 어떤 페이지로 갈지 action 넣기 -->
						<form method="post" action="memberjoin" id="memF">
							<div class="form-group">
								<label for="memid">아이디</label> <input type="text"
									class="form-control" name="memid" id="memid"
									placeholder="아이디를입력해주세요" ng-required="true" ng-maxlength="4">
								<button type="button" id="idChkBtn"
									class="btn btn-primary active" value="중복확인">아이디중복확인</button>
								<i class="fa fa-check spaceLeft"></i>
							</div>
							<div class="form-group">
								<label for="memname">이름</label> <input type="text"
									class="form-control" name="memname" id="memname"
									placeholder="이름을입력해주세요" ng-required="true" ng-maxlength="4">
							</div>
							<div class="form-group">
								<label for="mememail">이메일 주소</label> <input type="email"
									class="form-control" name="mememail" id="mememail"
									placeholder="이메일 주소를 입력해주세요">
							</div>
							<div class="form-group">
								<label for="mempwd">비밀번호</label> <input type="password"
									class="form-control" name="mempwd" id="mempwd"
									placeholder="비밀번호를 입력해주세요">
							</div>
							<div class="form-group">
								<label for="mempwdchk">비밀번호 확인</label> <input
									type="password" class="form-control" name="mempwdchk"
									id="mempwdchk" placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요">
							</div>
							<div class="form-group">
								<label for="memphone">휴대폰 번호</label> <input type="tel"
									class="form-control" name="memphone" id="memphone"
									placeholder="휴대폰번호를 입력해 주세요">
							</div>
							<div class="form-group" style="text-align: left:;">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary active"> <input
										type="radio" id="memgender" name="memgender"
										autocomplete="off" value="남자" checked>남자
									</label> <label class="btn btn-primary"> <input type="radio"
										id="memgender" name="memgender" autocomplete="off" value="여자"
										checked>여자
									</label>
								</div>
							</div>

							<div class="form-group text-center">
								<button type="submit" class="btn btn-primary">
									회원가입<i class="fa fa-check spaceLeft"></i>
								</button>
								<button type="submit" class="btn btn-warning">
									가입취소<i class="fa fa-times spaceLeft"></i>
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
		//비밀번호 확인
		$('#mempwd2').blur(function() {
			if ($('#mempwd').val() != $('#mempwd2').val()) {
				if ($('#mempwd2').val() != '') {
					alert("비밀번호가 일치하지 않습니다.");
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
		// 회원 아이디 중복확인!
		$('#idchkbtn').click(function() {
			$.ajax({
				url : "idcheck?memid=" + $('#memid').val(),
				success : function(data) {
					if (data == 0) {
						$('#target').show().css("color", "blue").text("사용가능");
					} else {
						$('#target').show().css("color", "red").text("사용중");
					}
				}
			});
		});
	});
	//특수문자 
	function mempwd() {
		var objEv = event.srcElement;
		var num = "{}[]()<>?_|~`!@#$%^&*-+\"'\\/ "; //입력을 막을 특수문자 기재.
		event.returnValue = true;

		for (var i = 0; i < objEv.value.length; i++) {
			if (-1 != num.indexOf(objEv.value.charAt(i)))
				event.returnValue = false;
		}
		if (!event.returnValue) {
			alert("특수문자는 입력하실 수 없습니다.");
			objEv.value = "";
		}
	};

	$('#idChkBtn').click(function() {
		if ($('#memid').val() == '') {
			alert('값을 입력하여 주세요 .');
		} else {
			$.ajax({
				url : "idcheck?memid=" + $('#memid').val(),
				success : function(data) {
					console.log(data + '넘어온 data 값 ');
					if (data == 0) {
						console.log(data);
						alert('사용 가능 ');
						$('#memid').attr("readonly", true);
					} else {
						console.log(data);
						alert('사용 불가 ');
					}
				}
			});
		}
	});
</script>
</html>

<%@include file="footer.jsp"%>