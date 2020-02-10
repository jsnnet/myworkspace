<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- loginform.jsp --%>
<%@include file="header.jsp"%>
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

#store_list th{
	text-align: center;
}
</style>
	<div id="list">
	
		<fieldset>
			<legend>��ī�� ���� ����Ʈ</legend>
			${searchValue }
			<p id="time">2019-11-22</p>
			<table class="table table-hover" id="store_list">
				<thead>
					<tr>
					<%--
					STNUM     NOT NULL NUMBER       
STSBNAME           VARCHAR2(20) 
STNAME             VARCHAR2(20) 
STID               VARCHAR2(20) 
STPWD              VARCHAR2(30) 
STADDRESS          VARCHAR2(50) 
STPHONE            VARCHAR2(50) 
STIMG              VARCHAR2(40)
					 --%>
						<th>��ȣ</th>
						<th>���� �̸�</th>
						<th>�ּ�</th>
						<th>��ȭ ��ȣ</th>
						<th>�̹���</th>
					</tr>
				</thead>
				<tbody>
				 <c:if test="${empty list }">
					<script>
					alert("�˻� ���� �����ϴ�");
					location.href = "storelistController?page=1";
					</script>
				</c:if>
					<c:forEach var="e" items="${list }">
						<tr>
							<td><a href="storeDetail?stnum=${e.stnum }">${e.stnum }</a></td>
							<td><a href="storeDetail?stnum=${e.stnum }">${e.stsbname }</a></td>
							<td><a href="storeDetail?stnum=${e.stnum }">${e.staddress }</a></td>
							<td><a href="storeDetail?stnum=${e.stnum }">${e.stphone }</a></td>
							<td><a href="storeDetail?stnum=${e.stnum }"><img
								src="${pageContext.request.contextPath }/resources/imgfile/${e.stimg }.jpg"
								style="width: 100px; border: 0px"></a></td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="6">
						<%@include file="page.jsp"%>
							<form method="post" action="storelistController" class="form-inline">
								<input type="hidden" name="page" value="${param.page }">
								<select name="searchType" class="form-control">
									<option value="1">��ȣ</option>
									<option value="2">�̸�</option>
									<option value="3">�ּ�</option>
								</select> &nbsp; <input class="form-control" name="searchValue" placeholder="��ȣ or �̸� or �ּҸ� �Է�" required> 
								<input class="btn btn-outline-dark" type="submit" value="�˻�"> 
							</form></th>
					</tr>
				</tfoot>
			</table>
		</fieldset>
	</div>
	<br>
<br>
<br>
</div>
<%@include file="footer.jsp"%>
