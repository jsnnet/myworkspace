<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	width: 800px;
	/* 	margin-left: 350px; */
	margin: auto;
}

#store_list {
	/* 	border: 10px solid transparent; */
	text-align: center;
	table-layout: fixed;
	/* border: 1px solid; */
}

#td_menu {
	vertical-align: bottom;
}
</style>
	<div id="list">

		<fieldset style="border: 1px solid rgba(255, 255, 255, .5);"
			id="container">
			<legend>���� ������</legend>

			<table class="table table-hover" id="store_list">
				<thead>
					<p id="time">��¥</p>
				</thead>
				<tbody>
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
						<td>���� ���</td>
						<td></td>
					</tr>
					<tr>
						<td>���� �ݾ�</td>
						<td></td>
					</tr>
					<tr>
						<td>���� ���</td>
						<td>1.�Ϲ� ���� 2.��ġ����</td>
					</tr>
					<tr>
						<td>���� ����</td>
						<td></td>
					</tr>
					<tr>
						<td>���� ����</td>
						<td><img
							src="${pageContext.request.contextPath }/resources/imgfile/${storevo.stimg }.jpg"
							style="width: 100px; border: 0px"></td>
					</tr>
					<tr>
						<td>���� �ּ�</td>
						<td>${storevo.staddress }</td>
					</tr>
					<tr>
						<td id="td_menu"><a href="#menudiv"> <input
								class="btn btn-outline-dark" id="menubtn" type="button"
								value="�޴� ����Ʈ" onclick="menu_list()">
						</a></td>
						<td style="text-align: center;">
							<div id="map"
								style="width: 320px; height: 250px; display: inline-block;"></div>
						</td>
					</tr>
				</tbody>
				<tfoot>
				</tfoot>
			</table>
		</fieldset>
		<div class="row" id="menudiv"></div>
	</div>



	<%@include file="footer.jsp"%>