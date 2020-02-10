<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Header연습</title>
<link href="resources/css/starter-template.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

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
<!-- <link href="resources/lib/bootstrap/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet"> -->

<!-- Libraries CSS Files -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
<!-- 티월드 -->
<link href="/poc/inc/css/common.css" rel="stylesheet" type="text/css">
<link href="/poc/inc/css/main.css" rel="stylesheet" type="text/css">
<!-- 티월드 -->

<!-- Main Stylesheet File -->
<link href="resources/css/style.css?v=<%=System.currentTimeMillis()%>"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<!-- 이미지 슬라이드쇼 -->
<!-- https://uicookies.com/css-slideshow/ -->


	<nav class="navbar navbar-expand-md navbar-dark bg-bright fixed-top">
		<a class="navbar-brand" href="main">The_Tasty</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
<!-- 				<li class="nav-item active"><a class="nav-link" href="main">Home -->
<!-- 						<span class="sr-only">(current)</span> -->
<!-- 				</a></li> -->
<!-- 				<li class="nav-item"><a class="nav-link" href="#">Menu</a></li> -->
<!-- 				<li class="nav-item"><a class="nav-link disabled" href="#" -->
<!-- 					tabindex="-1" aria-disabled="true">Disabled</a></li> -->
				<c:choose>
						<c:when test="${sessionScope.uid != null }">
							<li class="nav-item dropdown" id="inuse"><a
								class="nav-link dropdown-toggle" href="#" id="dropdown"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">${sessionScope.uname}</a>
								<div class="dropdown-menu" aria-labelledby="dropdown">
									<a class="dropdown-item" href="myPage">MyPage</a> <a
										class="dropdown-item" href="logout">Log-Out</a> <a
										class="dropdown-item" href="table1">Reservation</a>
								</div></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item dropdown" id="notinuse"><a
								class="nav-link dropdown-toggle" href="#" id="dropdown"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Member's</a>
								<div class="dropdown-menu" aria-labelledby="dropdown">
									<a class="dropdown-item" href="signin">Sign-In</a> <a
										class="dropdown-item" href="loginPage">Log-In</a>
								</div></li>

						</c:otherwise>
						
					</c:choose>
			</ul>
			<form class="form-inline my-2 my-lg-0">
<!-- 				<input class="form-control mr-sm-2" type="text" placeholder="Search" -->
<!-- 					aria-label="Search"> -->
<!-- 				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button> -->
			</form>
			
		</div>
	</nav>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
		<!-- 티월드 js -->

	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/gtm/js?id=GTM-P72TX35&amp;cid=1834591807.1581166572"></script>
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/gtm/js?id=GTM-WPXBHVG&amp;t=gtm6&amp;cid=1834591807.1581166572"></script>
	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/analytics.js"></script>
	<script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-T44GRLZ"></script>
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" src="/poc/inc/js/lib/jquery.min.js"></script>
	<script type="text/javascript" src="/poc/inc/js/lib/libs.js"></script>
	<script type="text/javascript" src="/poc/inc/js/common/common.js"></script>
	<script type="text/javascript"
		src="/poc/inc/js/lib/jquery.mousewheel.js"></script>
	<script type="text/javascript"
		src="/poc/inc/js/lib/jquery.jscrollpane.min.js"></script>
	<script type="text/javascript"
		src="/poc/inc/js/lib/wddo.selectbox-1.5.4.js"></script>
	<script type="text/javascript"
		src="https://xtr.tos.sktelecom.com/js/xtractor_script.js"></script>
	<!-- 티월드 js -->