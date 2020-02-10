<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@include file="doo_header2.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title> Simple table </title>
	<link rel="stylesheet" type="text/css" href="resources/css/table1.css">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/table1.js"></script>

</head>
<body>
	<div id="basliq"> <h2>Simple table reservation and payment</h2> </div>
	
	<div id="leftpanel">
		<div class="title"> Menu (<i>15</i>)</div>
		<div class="contain">
		<div class="qida"> Foods </div>
		<div class="yemek">
		<p id="pizza"> Pizza (<i>2 AZN</i>)</p>
		<p id="sushi"> Sushi (<i>4 AZN</i>)</p>
		<p id="shokolad"> Shokolad (<i>1 AZN</i>)</p>
		<p id="clubsandvich"> Club Sandvich (<i>1,50 AZN</i>)</p>
		<p id="burger"> Burger (<i>2 AZN</i>)</p>
		<p id="stake"> Stake (<i>12 AZN</i>)</p>
		<p id="chicken"> Chicken (<i>6 AZN</i>)</p>
		<p id="sezarsalad"> Sezar salad (<i>2 AZN</i>)</p>
		<p id="tunafish"> Tuna fish (<i>10.99 AZN</i>)</p>

		</div>

		<div class="qida"> Drinks </div>
		<div class="icki">
		<p id="cola"> Cola (<i>0.50 AZN</i>)</p>
		<p id="fanta"> Fanta (<i>0.50 AZN</i>)</p>
		<p id="hell"> Hell (<i>2 AZN</i>)</p>
		<p id="redbul"> Redbull (<i>4 AZN</i>)</p>
		<p id="vodka"> Vodka (<i>16.50 AZN</i>)</p>
		<p id="viski"> Viski-Chivas 12 (<i>33 AZN</i>)</p>


		</div>
		</div>

	</div>

	<div id="rightpanel">
		<div class="title"> Tables </div>
		<div class="contain">
		<div class="table" id="1"><span>Table 1</span><p>blabla</p></div>
		<div class="table" id="2"><span>Table 2</span><p></p></div>
		<div class="table" id="3"><span>Table 3</span><p></p></div>
		<div class="table" id="4"><span>Table 4</span><p></p></div>
		<div class="table" id="5"><span>Table 5</span><p></p></div>

		<div class="clear"></div>
		</div>

		<div class="table-result" id="table1"><span>Table 1:</span><p></p><br/><button class="hesab" id="sum">Calculate</button><button class="hesab" id="close">Close the order</button></div>
		<div class="table-result" id="table2"><span>Table 2:</span><p></p><br/><button class="hesab" id="sum">Calculate</button><button class="hesab" id="close">Close the order</button></div>
		<div class="table-result" id="table3"><span>Table 3:</span><p></p><br/><button class="hesab" id="sum">Calculate</button><button class="hesab" id="close">Close the order</button></div>
		<div class="table-result" id="table4"><span>Table 4:</span><p></p><br/><button class="hesab" id="sum">Calculate</button><button class="hesab" id="close">Close the order</button></div>
		<div class="table-result" id="table5"><span>Table 5:</span><p></p><br/><button class="hesab" id="sum">Calculate</button><button class="hesab" id="close">Close the order</button></div>
  <h5> Tip: Before adding a food or drink select the table. You can add any number of items. For deleting added item just click on it. Before closing order first calculate it, then close :) </h5>
	</div>

<div class="clear"></div>
</body>
</html>