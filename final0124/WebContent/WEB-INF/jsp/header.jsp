<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>�����ƾ�ī���</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="resources/img/favicon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700&subset=latin,cyrillic-ext"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="resources/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="resources/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="resources/lib/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link href="resources/lib/photostack/photostack.css" rel="stylesheet">
<link href="resources/lib/fullpage-menu/fullpage-menu.css"
	rel="stylesheet">
<link href="resources/lib/cubeportfolio/cubeportfolio.css"
	rel="stylesheet">
<link href="resources/lib/superslides/superslides.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="resources/css/style.css?v=<%=System.currentTimeMillis()%>"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- =======================================================
    Template Name: Polaroyd
    Template URL: https://templatemag.com/polaroyd-bootstrap-agency-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>
<script>
	function home() {
		var res = confirm("���� ȭ������ ����?");
		if (res == false)
			return;
		location.href = "main";
	}
	function memberJoin() {
		location.href = "member";
	}
</script>

<body>

	<!-- Custom navbar -->
	<div class="custom-navbar">
		<a class="fm-button" href="#">Menu</a>
	</div>
	<div class="sidemenu">
		<ul class="fm-first-level">
			<li><a href="#menu1">ȸ�� ������</a></li>
			<li><a href="#menu2">������ ������ </a></li>
			<li><a href="#" onClick="memberJoin()">ȸ�� ����</a></li>
			<li><a href="#" onClick="home()">Home</a></li>
		</ul>
		<nav id="menu1" class="active">
			<a href="logout"><span class="subtitle">�α׾ƿ� ��� </span>${sessionScope.uname }��
						�α׾ƿ�</a>
			<a href="index2.html"> <span class="subtitle"> </span> ���� ������
					</a>
			<a href="storelistController?page=1"> <span class="subtitle"></span> ��ī�ο� ���� �˻�
					</a>
			<a href="listBasket2?memnum=${sessionScope.unum }"> <span class="subtitle"></span>��ٱ���
					</a>
			<a href="services.html"> <span class="subtitle"></span> ����
					</a>
			<a href="contact.html"> <span class="subtitle"></span> Ŀ�´�Ƽ
					</a>
		</nav>
		<nav id="menu2">
			<c:choose>
				<c:when test="${sessionScope.adminid == null }">
					<a href="loginForm_admin"><span class="subtitle">������ �α��� ����̿�
					</span> ������ �α���</a>
				</c:when>
				<c:otherwise>
					<a href="logout_admin"><span class="subtitle"> ������ �α׾ƿ� ����ε� </span>${sessionScope.adminid }��
						�α׾ƿ�</a>
						a href="index2.html"> <span class="subtitle"> </span> ���� ������

					<a href="works.html"> <span class="subtitle"></span>�ֹ� Ȯ��
					</a>
					<a href="services.html"> <span class="subtitle"></span> ���� Ȯ��
					</a>
					<a href="upform"> <span class="subtitle"></span> �޴� ���
					</a>
					<!-- <li><a href="upform" class="page-scroll smoothie">�޴� ���</a></li> -->
					<a href="mypage"> <span class="subtitle"></span> ����Ʈ
					</a>
				</c:otherwise>
			</c:choose>
			<
		</nav>
		<nav id="menu3">
			<a href="blog.html"> <span class="subtitle">Main blog
					layout list.</span> Blog List
			</a> <a href="blog-post.html"> <span class="subtitle">First
					variation of blog posts.</span> Blog Post
			</a> <a href="blog-posts-2.html"> <span class="subtitle">Second
					variation of blog posts.</span> Blog Posts 2
			</a>
		</nav>
		<!-- 		<nav id="menu4">
		</nav> -->
	</div>
	<!-- /END CUSTOM NAVBAR -->