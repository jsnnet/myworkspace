<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="doo_header2.jsp"%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.d {
	height: 10px;
	width: 10px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
/* .fade { */
/*   -webkit-animation-name: fade; */
/*   -webkit-animation-duration: 1.5s; */
/*   animation-name: fade; */
/*   animation-duration: 1.5s; */
/* } */
@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}
</style>


<body>

	<div class="w3-container">
		<!--   <h2>Animated Slides</h2> -->
		<!--   <p>Slide or fade in an element from the top, bottom, left or right of the screen with the w3-animate-* classes.</p> -->
	</div>

	<div class="slideshow-container">

		<div class="w3-content w3-section">
			<img class="mySlides w3-animate-left" src="resources/img/wide7.jpg"
				style="width: 1903px">
		</div>

		<div class="w3-content w3-section">
			<img class="mySlides w3-animate-left" src="resources/img/wide8.jpg"
				style="width: 1903px">
		</div>

		<div class="w3-content w3-section">
			<img class="mySlides w3-animate-left" src="resources/img/wide9.jpg"
				style="width: 1903px">
		</div>

	</div>


	<button class="w3-button w3-display-left w3-white"
		onclick="plusDivs(-1)">&#10094;</button>
	<button class="w3-button w3-display-right w3-white"
		onclick="plusDivs(1)">&#10095;</button>


	<br>

	<div style="text-align: center">
		<span class="d"></span> <span class="d"></span> <span class="d"></span>
	</div>


	<!-- 티월드 슬라이드 -->
	<div class="promotionSlide">
		<h2 class="hidden">프로모션</h2>
		<div class="slideBox fullSize">
			<!-- admin 등록 영역 -->
			<div class="slideNavi2 col2" style="text-align: start;">
				<button type="button" class="btnPause">일시정지</button>
				<button type="button" class="btnPlay" style="display: none">재생</button>
				<ul>

					<li data-type="I" class=""><a href="#">20년 2월 T Day</a></li>
					<li data-type="I" class="on"><a href="#">T안심홈보안 이벤트</a></li>
				</ul>
			</div>
			<!-- //admin 등록 영역 -->
			<div class="m_slideCon xtvid" id="_banner_1001_F" data-rolling="true"
				data-total="2" data-select="1" data-view="true">
				<!-- admin 등록 영역 -->
				<ul style="width: 3806px; margin-left: 0px;">
					<li data-type="I" class=""
						style="width: 1903px; visibility: visible;" aria-hidden="false"><div
							class="promotionCon"
							style="background-repeat: repeat-x; background: url(/uploads/poc/9352/7718/52CFB82DC4BD4B4EBADC5F2095D89BEE.jpg)">
							<span class="slideImg"></span>
							<div class="inner">
								<a href="http://www.tworld.co.kr/tglink.jsp?urlname=wTG_4004"
									target="_blank" class="prCont"><img
									src="resources/img/wide7.jpg"
									alt="졸업도 입학도 혜택 넘치게 설레는 새 학기를 위한 2월의 풍성한 혜택!"></a>
							</div>
						</div></li>
					<li data-type="I" style="width: 1903px; visibility: visible;"
						aria-hidden="true" class="on"><div class="promotionCon"
							style="background-repeat: repeat-x; background: url(/uploads/poc/22020/1924/F6FA760950D5423FAB0EE188D10B3388.jpg)">
							<span class="slideImg"></span>
							<div class="inner">
								<a
									href="https://shop.tworld.co.kr/exhibition/view?exhibitionId=P00000111#none=wTG_3999"
									target="_blank" class="prCont"><img
									src="resources/img/wide8.jpg"
									alt="ADT캡스가 지켜주는 우리집 캡스홈 도어가드 출시 기념 경품 이벤트! 소중한 우리 가족과 우리집 안전, 도어가드로 지키세요! 자세히 보기"></a>
							</div>
						</div></li>
				</ul>
			</div>
			<button type="button" class="btnPrev nodata">이전</button>
			<button type="button" class="btnNext">다음</button>
		</div>
	</div>

	<!-- 티월드 슬라이드 -->



	<script>
		var myIndex = 0;
		carousel();

		function plusDivs(n) {
			carousel(myIndex += n);
		}

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var d = document.getElementsByClassName("d");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			for (i = 0; i < d.length; i++) {
				d[i].className = d[i].className.replace(" active", "");
			}
			x[myIndex - 1].style.display = "block";
			d[myIndex - 1].className += " active";
			setTimeout(carousel, 5000);
		}
	</script>
	
	<script type="text/javascript">
(function($){
	$(document).ready(function(){
		function setCookie(key, value, days) {//쿠키 설정
			var date, expires;
			if (days) {
				date = new Date();
				date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
				expires = "; expires=" + date.toGMTString();
			} else {
				expires = "";
			}
			document.cookie = key + "=" + value + expires + "; path=/";
		}
		function getCookie(key) {//쿠키 값 얻어오기
			var results = document.cookie.match('(^|;) ?' + key + '=([^;]*)(;|$)');
			if (results) {
				return ( unescape(results[2]) );
			} else {
				return undefined;
			}
		}
		function ieVerCheck() {// IE버젼체크
			var _ver = -1;
			var ua, re;
			if (navigator.appName == 'Microsoft Internet Explorer') {
				ua = navigator.userAgent;
				re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
				if (re.exec(ua) != null)
					_ver = parseFloat(RegExp.$1);
			} else if (navigator.appName == 'Netscape') {
				ua = navigator.userAgent;
				re = new RegExp("Trident/.*rv:([0-9]{1,}[\.0-9]{0,})");
				if (re.exec(ua) != null) {
					_ver = parseFloat(RegExp.$1);
				}
			}
			return _ver;
		}
		//-------------------------------------------------------------------------------------------------------------
		var _mainInit=function(){
			var IEVer=ieVerCheck();
			//--[#5026] [메인] Swing대응 국문용 메인 팝업 (요건추가)
			if(IEVer==7){
				if(getCookie('MAIN_IE7_POP')=="Y"){//방송통신위원회 시정명령에 따른 공표문
					$('#ie7_pop').hide();
				}else{
					//$('#ie7_pop').show();
					/* 2018.07.10 추가 - IE7에서 유틸메뉴 비정상 동작 수정. 배포는 미정.
                    $("#mask").remove();
                    $("#container").css({'z-index' : '', 'position' : 'relative'});
                    $('body').css({'overflow-y':'', 'z-index' : ''});
                    $("#header").css({'z-index' :'5000'});
                    */
                    $('#ie7_pop').attr('style','display:block;margin-left:-560px').find('#mask').hide();
					//$('#notice_pop').removeClass('w850').addClass('w550').attr('style','margin-left:10px');
				}
			}else{
				$('#ie7_pop').hide();
				$('#notice_pop').attr('style','display:block;margin-left:-275px');
			}
			$('#chk1').bind('change',function(evt){
				var day_off=$(this).is(':checked');
				if(day_off){
					setCookie('MAIN_IE7_POP','Y',1);
				}else{
					setCookie('MAIN_IE7_POP','N',1);
				}
			});

			$('#notice_pop button.btnBlack').bind('click',function(event){
				$('#notice_pop').hide();
			});
			if(getCookie('MAIN_LAYER_POP')=="Y"){//방송통신위원회 시정명령에 따른 공표문
				$('#notice_pop').hide();
			}else{
				$('#notice_pop').show();
			}

			$('#chk2').bind('change',function(evt){
				var day_off=$(this).is(':checked');
				if(day_off){
					setCookie('MAIN_LAYER_POP','Y',1);
				}else{
					setCookie('MAIN_LAYER_POP','N',1);
				}
			});

			//차세대 고객관리 시스템 교체에 따라 제한되는 업무 안내
			if(getCookie('MAIN_SPREAD_POP')=="Y"){
				$('.ma_notice').hide();
			}else{
				$('.ma_notice').show();
			}
			$('#day_off1').bind('change',function(evt){
				var day_off=$(this).is(':checked');
				if(day_off){
					setCookie('MAIN_SPREAD_POP','Y',1);
				}else{
					setCookie('MAIN_SPREAD_POP','N',1);
				}
			});

			// 2018.01.31 [#6041] [메인] 긴급장애관리 시스템 작업 (요건추가) 추가 START
			var timestamp = new Date().getTime();
			$.ajax({
				type: 'get',
				dataType: 'text',
				cache : false,
				url: '/uploads/common/notice/mainPopupData.js?v=' + timestamp,
				success: function(result) {
					// 결과값은  제목||내용||팝업닫기||공지사항번호||팝업시작일||팝업종료일||게시여부 값으로 리턴
					var data = result.split('||');
					var closeDay = parseInt(data[2], 10);
					var closeText = '';
					// 2018.05.31 [#6771] [어드민] 메인 긴급 장애 관리 어드민 추가 기능 개발 (요건추가) START
					if (closeDay === 100) {
						closeText = '다시 보지 않음';
						closeDay = 1000;
					} else if (closeDay === 1) {
						closeText = '하루동안 열지 않음';
					} else if (closeDay === 7) {
						closeText = '일주일동안 열지 않음';
					} else {
						closeDay = 0;
					}
					var dayStart = data[4];
					var dayEnd = data[5];
					var date = new Date();
					function pad0(n) { return n < 10 ? '0' + n : n }
					var dayToday = date.getFullYear().toString() + pad0(date.getMonth() + 1) + pad0(date.getDate()) + pad0(date.getHours()) + pad0(date.getMinutes()) + pad0(date.getSeconds());
					var isTime = false;
					(dayToday > dayStart && dayToday < dayEnd) && (isTime = true);
					// 2018.05.31 [#6771] [어드민] 메인 긴급 장애 관리 어드민 추가 기능 개발 (요건추가) END
					var layerId = 'notice_pop_' + parseInt(data[3], 10);
					var cookieId = 'MAIN_LAYER_POP_' + parseInt(data[3], 10);
					var checkboxId = 'chk_' + parseInt(data[3], 10);

					// 제목과 내용이 있을 경우만 레이어팝업 호출
					if ($.trim(data[0]) && $.trim(data[1]) && data[0] !== 'null' && data[1] !== 'null' && isTime && data[6] && data[6].replace('\n','') == 'Y') {	// 2018.05.31 [#6771] [어드민] 메인 긴급 장애 관리 어드민 추가 기능 개발 (요건추가)
						var popupDate = '' +
							'<div id="' + layerId + '" class="layerPop1 w550">\n' +
							'\t<button type="button" class="popClose btnBlack btnS">닫기</button>\n' +
							'\t<h2 class="popHead">' + data[0] + '</h2>\n' +
							'\t<div class="popCon" style="color:#333;letter-spacing:-1px;overflow-y:auto;max-height:100%">\n' +
							'\t\t<div class="inPop">' +
							'\t\t\t' + data[1] + '' +
							'\t\t\t<div class="btnBox">\n' +
							'\t\t\t\t<button type="button" class="btnS btnBlack " style="margin-left:8px"><span>닫기</span></button>\n' +
							'\t\t\t</div>' +
							'\t\t</div>\n' +
							'\t</div>\n' +
							'\t<div class="todayClose">\n' +
							'\t\t<span class="checkbox">\n' +
							'\t\t\t<input type="checkbox" id="' + checkboxId + '"><label for="' + checkboxId + '">' + closeText + '</label>\n' +
							'\t\t</span>\n' +
							'\t</div>\n' +
							'</div>\n';
						// 최상단에 팝업 삽입
						$('body').prepend(popupDate);
						// 2018.05.31 [#6771] [어드민] 메인 긴급 장애 관리 어드민 추가 기능 개발 (요건추가)
						(closeDay === 0) && $('#' + layerId).find('.todayClose').attr('style', 'display:none');

						if (getCookie(cookieId) === "Y") {
							$('#' + layerId).hide();
						} else {
							if (IEVer === 7) {
								$('#' + layerId).removeClass('w850').addClass('w550').attr('style','margin-left:10px').show();
							} else {
								$('#' + layerId).attr('style','display:block;margin-left:-275px').show();
							}

							// 닫기 버튼
							$('#' + layerId + ' button.btnBlack').bind('click', function () {
								$('#' + layerId).hide();
							});

							// 열지않음 체크박스
							$('#' + checkboxId).bind('change', function () {
								if ($(this).is(':checked')) {
									setCookie(cookieId,'Y', closeDay);
								} else {
									setCookie(cookieId,'N', closeDay);
								}
							});
						}
					}
				}
			});
			// 2018.01.31 [#6041] [메인] 긴급장애관리 시스템 작업 (요건추가) 추가 END
		};

		var _idx=0;
		var _limit=10;
		var _itv=setInterval(function(){
			_idx=_idx+1;
			if(_limit>=_idx){
				clearInterval(_itv);
				_itv=null;
			}
			_mainInit();
		},500);
		//------
	});
})($);
</script>



<script type="text/javascript">
	$( function () {
		data_load(getParameterByName("notiCd"));
	});
	
	//notiCd data
	function getParameterByName(name) {
	    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	        results = regex.exec(location.search);
	    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}
	
	//회선추가 페이지 notiCd = 01 : 신규회원	 02 : 기존회원 
	function data_load(notiCd){
		if("01"==notiCd || "02"==notiCd){
			var defaultHtml = '';
            defaultHtml += '<div class="layerPop1 w850" id="lineAddLayer" style="margin-top: -321px; z-index: 999999;"><iframe name="lineAddFrame" id="lineAddFrame" onload="resize(this);" src="/normal.do?serviceId=S_MSA_0001&viewId=V_MEMB7001&notiCd='+notiCd+'" frameborder="0" width="0" height="0" title="빈프레임" scrolling="no"></iframe></div>';
			//defaultHtml += '<div class="layerPop1 w850" id="lineAddLayer"></div>';
			$('#wrap').append(defaultHtml);
			/*$.ajax({
	        	type: "get",
	            url:  "/normal.do?serviceId=S_TEST0017&viewId=V_MEMB0027&notiCd="+notiCd, 
	            //data: dataString,
	            contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
	            dataType:"text", 
 	           	success:function(result){
 	           		$('#lineAddLayer').html(result);
	 	           	return;  
	           	 },
	          	 error:function(result){
					alert('죄송합니다. 다시 시도해주세요.');
	            	return;
	           	 }
	       	});*/
		}
	}
	
	//iframe size
	function resize(iframeObj){
		var element = $("#lineAddFrame").contents().find("#lineAddPopup");
		iframeObj.style.height = element.outerHeight()-4+"px";
		iframeObj.style.width = element.outerWidth()-2+"px";
	}
</script>

<script type="text/javascript" id="">GASendEvent=function(b,a,e,d,c){1==arguments.length?c=d=e=a="":2==arguments.length?c=d=e="":3==arguments.length?c=d="":4==arguments.length&&(c="");"undefined"!==typeof this.dataLayer&&this.dataLayer.push({event:b,TrackingScrollEvent_Category:a,TrackingScrollEvent_Action:e,TrackingScrollEvent_Label:d,TrackingScrollEvent_Value:c,eventNonInteraction:!0})};var PreScrollPercent=0;
window.onscroll=function(){var b=document.documentElement.scrollTop|document.body.scrollTop,a=document.documentElement.scrollHeight|document.body.scrollHeight;b=b/(a-window.innerHeight-10)*100;a=document.title+"_Scroll";25<b&25>PreScrollPercent?(PreScrollPercent=25,GASendEvent("ScrollDistance2","OTW_common",a,PreScrollPercent+"%")):50<b&50>PreScrollPercent?(PreScrollPercent=50,GASendEvent("ScrollDistance2","OTW_common",a,PreScrollPercent+"%")):75<b&75>PreScrollPercent?(PreScrollPercent=75,GASendEvent("ScrollDistance2",
"OTW_common",a,PreScrollPercent+"%")):100<b&100>PreScrollPercent&&(PreScrollPercent=100,GASendEvent("ScrollDistance2","OTW_common",a,PreScrollPercent+"%"))};</script>

<script type="text/javascript" id="">(function(a,e,f,g,b,c,d){a.GoogleAnalyticsObject=b;a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};a[b].l=1*new Date;c=e.createElement(f);d=e.getElementsByTagName(f)[0];c.async=1;c.src=g;d.parentNode.insertBefore(c,d)})(window,document,"script","https://www.google-analytics.com/analytics.js","ga");ga("create","UA-44615111-2","auto");ga("require","GTM-P72TX35");</script>



</body>
</html>
