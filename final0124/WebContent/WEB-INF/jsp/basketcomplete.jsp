<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="doo_header2.jsp"%>

<br>
<br>
<br>
<br>
<br>
<br>
<div class="content">

	<style>
#list {
	color: black;
	border: solid 1px;
	text-align: center;
	width: 1000px;
	margin: auto;
}

#store_list th {
	text-align: center;
}
</style>

	<div id="list">

		<fieldset>
			<legend>${sessionScope.uname }���� ��ٱ���</legend>
			${searchValue }

			<table class="table table-hover" id="basket_complete">
				<thead>

				</thead>
				<tbody>
					<a href="storelistController?page=1">��� �����ϱ�</a>
					<a>	/	</a>
					<a href="listBasket2">��ٱ��Ϸ� �̵�</a>
					
				</tbody>

			</table>
		</fieldset>

	</div>
	<br> <br> <br>

	<script>
		// window.onload ����� ���Դٰ� �ڵ����� ������� .ready�� �����غ���
		//window.onload=function(){  
		$(document).ready(function() {
			alert("�ε� �Ϸ�");
			$("#nav").children().css('background-color', 'black');
		});
	</script>

</div>
<%@include file="footer.jsp"%>