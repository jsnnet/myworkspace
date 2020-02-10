<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="doo_header2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>

<!-- 왜 스타일로 하느냐? 스타일 말고 다른 방법으로 할 수 있는데? 다른 방법으로 하면 그게 먼저 오기 때문 (순서)이다? -->
<style>
#target {
	color: red;
	background-color: yellow;
	width: 50%;
	font-size: 18px;
	display: none; /*숨김속성*/
}
</style>
</head>
<body>
	<div>
		<form method="post" action="signin_completed" id="memF">
			<fieldset>
				<legend>회원 가입 form</legend>
				<p>
					<label>아이디</label><input type="text" name="memid" id="memid">
					&nbsp;<input type="button" id="idChkBtn" value="중복확인">
				</p>
				<p id="target">이미 사용중인 아이디 입니다.</p>
				<p>
					<label>비밀번호</label><input type="password" name="mempwd" id="mempwd">
				</p>
				<p>
					<label>이름</label><input type="text" name="memname" id="memname">
				</p>
				<p>
					<label>나이</label><input type="text" name="memage" id="memage">
				</p>
				<p>
					<label>성별</label><input type="text" name="memgender" id="memgender">
				</p>
				<p>
					<label>전화번호</label><input type="text" name="memphone" id="memphone">
				</p>
				<p>
					<label>우편번호</label><input type="text" name="mempost" id="mempost"><input
						type="button" id="postBtn" value="우편번호 찾기">
				</p>
				<p>
					<label>주소</label><input type="text" name="memaddr1" id="memaddr1">
				</p>
				<p>
					<label>상세주소</label><input type="text" name="memaddr2" id="memaddr2">
				</p>
				<p>
					<label>Email</label><input type="text" name="mememail"
						id="mememail">
				</p>
				<p>
					<input type="submit" value="회원가입">
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
		//회원 아이디 중복확인!
		$('#idChkBtn').click(function() {
			$.ajax({
				url : "chkid?memid=" + $('#memid').val(),
				success : function(data) {
					if (data == 0) {
						$('#target').show().css("color", "blue").text("사용가능");
					} else {
						$('#target').show().css("color", "red").text("사용중");

					}
				}
			});

		});
		function execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = ''; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수

					// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						fullAddr = data.roadAddress;

					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						fullAddr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
					if (data.userSelectedType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
								: '');
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('mempost').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('memaddr1').value = fullAddr;

					// 커서를 상세주소 필드로 이동한다.
					document.getElementById('memaddr2').focus();
				}
			}).open();
		} // fn end

	});
</script>
</html>