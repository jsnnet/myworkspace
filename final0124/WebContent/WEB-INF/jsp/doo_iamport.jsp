<%@include file="doo_header2.jsp" %>

<body>
<form name="pgForm">
	<input type="hidden" name="Amt" value="1000">
	<input type="hidden" name="BuyerName" value="홍길동">
	<input type="hidden" name="OrderName" value="결제테스트">
</form>


<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>

    IMP.init('imp87081031'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

    IMP.request_pay({
	amount : 1000,
	buyer_name : '홍길동',
	name : '결제테스트'
}, function(response) {
	//결제 후 호출되는 callback함수
	if ( response.success ) { //결제 성공
		console.log(response);
	} else {
		alert('결제실패 : ' + response.error_msg);
	}
})

</script>
</body>
