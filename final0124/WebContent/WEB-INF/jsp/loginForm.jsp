<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="header.jsp"%>
<%-- loginform.jsp --%>
<script>
</script>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="content">

	<fieldset style="width: 300px; margin: auto; color: black;">
		<legend>�α��� ��</legend>
		<form method="post" action="loginProcess" autocomplete="off">
			<p>
				<label>���̵�</label> <input type="text" name="id" id="id">
			</p>
			<p>
				<label>��й�ȣ</label> <input type="password" name="pwd" id="pwd">
			</p>
			<p style="text-align: right;">
				<input type="submit" onclick="location.href='loginProcess?id=test'">
				<input type="button" value="�־ȵǳ� ��1�� " onclick="alert('�ε� �Ϸ�222');">
 			</p>
		</form>
	</fieldset>

</div>
</div>

<%@include file="footer.jsp" %>
