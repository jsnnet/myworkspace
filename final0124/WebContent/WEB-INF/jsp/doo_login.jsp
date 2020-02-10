<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@include file="doo_header2.jsp" %>
<script>
	window.onload = function() {
		$("#nav").children().css('background-color', 'black');
		if($("#footer_c").css("display") == "block"){
			$("#footer_c").css("display","none");
			$('#footer').css("display", "block");   
		}else{
			$("#footer").css("display","none");
			$('#footer_c').css("display", "block");
		}
	}
</script>
<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
    <font color="red">
        <p>Your login attempt was not successful due to <br/>
            ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
        <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
    </font>
</c:if>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인</title>
 
<!--     Bootstrap -->
<!--     <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<!--     font awesome -->
<!--     <link href="css/font-awesome.min.css" rel="stylesheet"> -->
<!--     Custom Style -->
<!--     <link href="css/style.css" rel="stylesheet"> -->
 
  </head>
  <body>
  <fieldset style="width: 300px; margin: auto; color: black;">
    <div class="container">
      <div class="row">
        <div class="page-header">
        </div>
        <div class="col-md-3">
          <div class="login-box well">
			<form method="post" action="loginProcess" autocomplete="off"> <legend>로그인</legend>
               <p> <label> 아이디</label>
                <input type="text" name="memid" id="memid" placeholder=" Username"  />
                </p>
               	<p> <label for="password">비밀번호</label>
                <input type="password" name="mempwd" id="mempwd" placeholder="Password"/>
                </p>
                 <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>

	            <div class="form-group">
                <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="Login" />
            </div>
            <span class='text-center'><a href="pas" class="text-sm">비밀번호 찾기</a></span>
            <hr />
            <div class="form-group">
                <a href="member" class="btn btn-default btn-block m-t-md"> 회원가입</a>
            </div>
        </form>
        </fieldset>
          </div>
        </div>
      </div>
    </div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  </body>
  </html>
</div>

