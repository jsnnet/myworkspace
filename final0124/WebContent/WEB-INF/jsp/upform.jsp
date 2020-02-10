<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="header.jsp"%>
<%-- loginform.jsp --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	// ���ڰ� �ƴ� ���Խ�
	var replaceNotInt = /[^0-9]/gi;

	$(document).ready(function() {

		$("#foodpay").on("focusout", function() {
			var x = $(this).val();
			if (x.length > 0) {
				if (x.match(replaceNotInt)) {
					x = x.replace(replaceNotInt, "");
				}
				$(this).val(x);
			}
		}).on("keyup", function() {
			$(this).val($(this).val().replace(replaceNotInt, ""));
		});

	});
</script>

<br>
<br>
<br>
<br>
<br>
<br>
<div class="content">

	<fieldset style="width: 300px; margin: auto; color: black;">
		<button class="btn btn-default" data-target="#layerpop" data-toggle="modal">�����¹�ư</button><br/>
	</fieldset>

	
<div class="modal fade" id="layerpop" >
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- header -->
      <div class="modal-header">
        <!-- �ݱ�(x) ��ư -->
        <button type="button" class="close" data-dismiss="modal">��</button>
        <!-- header title -->
        <h4 class="modal-title">Header</h4>
      </div>
      <!-- body -->
      <div class="modal-body">
      		<label>���� ���̵� : ${sessionScope.adminid }</label><br>
      		<label>���Թ�ȣ : ${sessionScope.stnum}</label>
            <legend>�޴� ��� ��</legend>
		<form method="post" action="upsave" autocomplete="off"
			enctype="multipart/form-data">
			<input type="hidden" name="stnum" id="stnum" value="${sessionScope.stnum}">
			<p>
				<label>�����̸�</label> <input type="text" name="foodname" id="foodname">
			</p>
			<p>
				<label>���� ����</label> <input type="text" name="foodpay" id="foodpay">
			</p>
			<p>
				<label>���� ����</label> <input type="file" name="upimg" id="upimg">
			</p>
			<p style="text-align: right;">
				<input type="submit" value="���">
				 <input type="button" value="����Ʈ" onclick="location='mypage'">
			</p>
		</form>
      </div>
      <!-- Footer -->
      <div class="modal-footer">
        Footer
        <button type="button" class="btn btn-default" data-dismiss="modal">�ݱ�</button>
      </div>
    </div>
  </div>
</div>
</div>
</div>

<%@include file="footer.jsp"%>
