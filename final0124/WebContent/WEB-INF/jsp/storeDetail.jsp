<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%-- loginform.jsp --%>
<%@include file="header.jsp"%>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
var $modalnum;

function aa (){
       $modalnum.on('change',function(){
         console.log('zzzz');
         let num = $modalnum.find('#foodtotal').val();
         let num2 = $modalnum.find('#foodpay').attr('value');
         let num3 = $modalnum.find('#howdeli').val();
         let total_pay = num*num2;
         console.log(num);
         console.log(num2);
         console.log(num3);
         console.log('�� �ݾ� ' + total_pay);
         $modalnum.find('#totalpay2').attr('value',total_pay);
         $modalnum.find('#howdeli').attr('value');
         $modalnum.find('#howdeli2').attr('value',num3)
      });
    };
    
    function cart() { // ��ٱ��Ϸ� ���� �������� ���� �߰��ۼ�
    	$modalnum.on('change',function(){
    		console.log('cart');
    		let num4 = $modalnum.find('#foodtotal').val();
    		console.log(num4);
    		$modalnum.find('#foodtotal').attr('value');
    		$modalnum.find('#foodtotal2').attr('value',num4);
    	});
	};
    function showPopup(){window.open("/intoBasket","a","width=400, height=300, left=100, top=50");}
	
	
	
function modal_btn(ele){
   console.log($(ele).attr('id'));
   let divname = $(ele).attr('id');
   $modalnum = $('#' + divname);
   console.log($modalnum);
   aa();
   cart(); // ��ٱ��Ϸ� ���� �������� ���� �߰�
}

function menu_list() {
      if($("#menudiv").children().length == 0){
         console.log()
         $.ajax({
      url:"./store/menu?stnum=${storevo.stnum }",
      dataType : 'json',
      cache : false,
      success:function(data){
         //list -> �ݺ��� ó��
         let tag ="";
         let path = '${pageContext.request.contextPath }';
         // $. jquery �� ���� ��ü
         
         
         //�ݺ��� ó�� => �⼧�� forans => $.each(data,function(idx[�迭 ��ȣ], key[��]){ 
         $.each(data,function(idx, key){//key = storevo      
            $.each(key.menu,function(idx, key){ 
            tag += '<div class="col-xs-6" id='+key.stnum+'-'+key.foodnum+'>';
            tag += '<div class="product-image" style="border-style: solid; border-color: lightgray; border-width: 1px;">';
            tag += '<a href="#">';
            tag += "<img src="+path+"/resources/imgfile/"+key.foodimg+" width='100px' height='100px'>";
            tag += '<h3 style="text-align: center;">';
            tag += '<strong>'+key.foodname+'</strong>';
            tag += '</h3>';
            tag += '<p style="text-align: center;">'+key.foodpay+' ��'+'</p>';
            
             tag += "<button id='menu_modal"+key.foodnum+"'";
             tag += "class='btn btn-default' data-target='#layerpop"+key.foodnum+"'";
             tag += "data-toggle='modal'";
             tag += "onclick='modal_btn(layerpop"+key.foodnum+")'>�ֹ�</button>"; 
            tag += '</div></div>';
            
            /* ----------------------------------------------------------------------------------------------------------- */      
            tag += '<div class="modal fade" id="layerpop'+key.foodnum+'">';
            tag += '<div class="modal-dialog">';
            tag += '<div class="modal-content">';
            tag += '<div class="modal-header">';
            tag += '<button type="button" class="close" data-dismiss="modal">��</button>';
            tag += '<h4 class="modal-title">Header</h4></div>';
            tag += '<div class="modal-body">�ֹ� ����<hr>';
            tag += '<form method="post" action="pay" autocomplete="off" enctype="multipart/form-data">';
            tag += '<input type="hidden" id="foodname" name="foodname" value="'+key.foodname+'">';
            tag += '<p><label>���� �̸� : '+key.foodname+'</label></p>';
            tag += '<input type="hidden" id="foodpay" name="foodpay" value="'+key.foodpay+'">';
            tag += '<p><label>���� ���� : <a id="foodpay" value="'+key.foodpay+'">'+key.foodpay+'</a></label></p>';
            /* style="text-align: left;" */
            /* tag += '<p style="text-align: left;"><label>���� ����</label>'; */
            /* tag += '<input type="number" name="foodtotal" id="foodtotal'+key.foodnum+'" min="1" value="1" ></p>'; */
            tag += '<label>* 1ȸ �ֹ� �� �ִ� ������ 5�� �Դϴ�. *</label>';
            tag += '<p><label>���� ���� :</label><select name="foodtotal" id="foodtotal">'
               /* 1ȸ �ֹ� �� �ִ� ������ 5�� �Դϴ�. */
            tag += '<option value="">����</option>'
            tag += '<option value=1>1</option>'
            tag += '<option value=2>2</option>'
            tag += '<option value=3>3</option>'
            tag += '<option value=4>4</option>'
            tag += '<option value=5>5</option>'
            tag += '</select>'            
            tag += '<label>  ���� ��� :</label><select name="howdeli" id="dok">'
            tag += '<option value="">����</option>'
            tag += '<option value=0>1.����ũ �ƿ�</option>'
            tag += '<option value=1>2.��� </option>'
            tag += '</select></p>'
            tag += '<p><label>�� ���� </label><input type="text" readonly="readonly" id="totalpay2" name="pay_total" value="'+key.foodpay+'">';
            tag += '</p>';
            tag += '<hr>';
            tag += '<input type="hidden" name="stnum" value="${storevo.stnum}">';
            tag += '<input type="submit" class="btn btn-default" value="����">';
            /* ȸ�� ���� -> ȸ�� ��ȣ / : memnum -> ���ǰ����� �޾� ���� ��
            	�޴� ���� -> �̸� / ���� / ���� / �� ���� / ���Թ�ȣ : stnum */ //sysout("adaasa"+a+"adadas")
            //tag += '<input type="button" class="btn btn-default" value="��ٱ���" onclick=location="basket?foodname='+key.foodname+'&foodpay='+key.foodpay+'">';
            tag += '</form>';
            
            /*---------------------------------------------------------------------------------------------------------------------*/
            
            tag += '<form method="post" action="intoBasket" autocomplete="off" enctype="multipart/form-data">';
            /* ��ٱ��Ϸ� ������ ���� */
            
            // memnum,stnum,foodnum,basketpay,foodtotal �������� ��
            // 0. memnum ȸ����ȣ�� session(sesstion)���κ��� (o)
            
            // 0. ��ǰ��ȣ ; foodnum (o)
			tag +='<input type="hidden" id="foodnum" name="foodnum" value="'+key.foodnum+'">';        
            //tag += '<p><label> 0�� ��ǰ��ȣ : '+key.foodnum+'</label></p>'; // ���� �� 1
            // 1. ��ǰ�̸� ; foodname (o)
            tag += '<input type="hidden" id="foodname" name="foodname" value="'+key.foodname+'">';
            //tag += '<p><label> 1�� ���� �̸� : '+key.foodname+'</label></p>'; // ���� �� 2
            // 2. ��ǰ 1���� ���� (o)
            tag += '<input type="hidden" id="foodpay" name="foodpay" value="'+key.foodpay+'">';
            //tag += '<p><label> 2�� ���� ���� : <a id="foodpay" value="'+key.foodpay+'">'+key.foodpay+'</a></label></p>'; // ���� �� 3
            // 3.���ɹ�� �������� ����� �𸣰��� (o) - ���� ���̺��� 
            //tag += '<p><label>���ɹ��:<a name="howdeli" id="dok"></a></label></p>';
            //tag += '<p><label> 3�� ���ɹ�� �������� ��� ���� �𸣰��� : <input type="text" readonly="readonly" id="howdeli2" name="howdeli"></label></p>';
            // 4.�޴� ������ ���� �Ѿ� ��� ��� ; basketpay (o)
            tag += '<input type="hidden" id="totalpay2" name="basketpay" value="'+key.foodpay+'">'; // Ȯ�� �Ϸ� �׸��� �� ��������
            //tag += '<p><label> 4�� �Ѿ� : </label> <input type="text" readonly="readonly" id="totalpay2" name="basketpay" value="'+key.foodpay+'"></p>'; // ���� �� 4
            // 5.���Թ�ȣ ; stnum (o)
            tag += '<input type="hidden" name="stnum" value="${storevo.stnum}">'; // ������ �� Ȯ�� �Ϸ� �׸��� �� ��������
            //tag += '<p><label> 5�� ������ȣ : <a name="stnum" value="${storevo.stnum}">${storevo.stnum}</a></label></p>'; // ���� �� 5
            // 6.���� ; foodtotal (o)
            tag += '<input type="hidden" id="foodtotal2" name="foodtotal" value="'+key.foodtotal+'">';
            //tag += '<p><label> 6�� ���� : </label><input type="text" readonly="readonly" id="foodtotal2" name="foodtotal" value="'+key.foodtotal+'"></p>'; // ���� �� 6
            /*-------------------*/
            tag += '<hr>';
            tag += '<input type="submit" class="btn btn-default" value="��ٱ��� �߰�">';
            tag += '</form>';
            
            /*--------------------------------------------------------------------------------------------------------------------*/
            
            tag += '</div>';
            tag += '</div></div></div></div>';   
            
//             tag += '<div id="dialog" title = "Message">'
//             tag += '�ش�κ��� ���̾� �˾��� �����̴�. br�±׾��� �˾Ƽ� �ڵ����� �ٹٲ� ó����'
//             tag += '</div>'
            
//             	$(function(){
//             		$("#popupBtn").button();
//             	})
            	
//             	$('#dialog').dialog({
//             		autoOpen:false,
//             		width: 400,
//             		modal: true,
//             		buttons:[
//             			{text:"��",
//             				click:function(){
//             					$(this).dialog("close");
//             				}
            			
//             		}
//             			{
//             				text: "�ƴϿ�",
//             				click:function(){
//             					$(this).dialog("close");
//             				}
            				
//             			}
//             	]
            	
//             	});
            	
//             	$("#popupBtn").click(function(){
//             		$("#dialog").dialog("open");
//             	});
                        
            $('#menubtn').attr("value"," �޴� �ݱ�");
               });
            });
            $("#menudiv").html(tag);
            console.log($("#menudiv").children().attr('id'));
            console.log($("#menudiv").children().attr('id'));
         }
      });
      }else if($("#menudiv").children().length > 0){
         console.log($("#menudiv").children().length);
         console.log($('#menudiv').attr("style"));
         if($('#menudiv').attr("style") == 'display: none;'){
            $('#menudiv').css("display", "block");  
            $('#menubtn').attr("value"," �޴� �ݱ�");
         }else{
            $('#menudiv').css("display", "none");
            $('#menubtn').attr("value"," �޴� ����Ʈ");
         }
      }
          
   }   

</script>
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
/*    margin-left: 350px; */
   margin: auto;
}

#store_list {
/*    border: 10px solid transparent; */
    text-align: center;
    table-layout: fixed;
   /* border: 1px solid; */ 
}
#td_menu {
    vertical-align: bottom;
  }
  
</style>
   <div id="list">
   
      <fieldset style="border: 1px solid rgba(255, 255, 255, .5);" id="container">
         <legend>${storevo.stsbname} �� ������</legend>
         
         <table class="table table-hover" id="store_list">
            <thead>
               <p id="time">2019-11-22</p>
            </thead>
            <tbody>
               <tr>
                   <td>
                      ���� ��ȣ 
                   </td>
                   <td>
                      ${storevo.stnum }
                   </td>
               </tr>
               <tr>
                  <td>
                     ���� �̸� 
                  </td>
                  <td>
                     ${storevo.stsbname }
                  </td>
               </tr>
               <tr>
                  <td>
                     ����� �̸�  
                  </td>
                  <td>
                     ${storevo.stname }
                  </td>
               </tr>
               <tr>
                  <td>
                     ���� ��ȭ ��ȣ
                  </td>
                  <td>
                     ${storevo.stphone }
                  </td>
               </tr>
               <tr>
                  <td>
                     ���� ����
                  </td>
                  <td>
                  <img   src="${pageContext.request.contextPath }/resources/imgfile/${storevo.stimg }.jpg"
                        style="width: 100px; border: 0px">
                  </td>
               </tr>
               <tr>
                  <td>
                     ���� �ּ�
                  </td>
                  <td>
                     ${storevo.staddress }
                  </td>
               </tr>
               <tr>
                  <td id="td_menu"><a href="#menudiv">
                     <input class="btn btn-outline-dark" id="menubtn" type="button" value="�޴� ����Ʈ" onclick="menu_list()"> </a>
                  </td>
                  <td style="text-align: center;">
                     <div id="map" style="width:320px; height:250px; display:inline-block;"></div>
                  </td>   
               </tr>
            </tbody>
            <tfoot>
            </tfoot>
         </table>
      </fieldset>
      <div class="row" id="menudiv">
      </div>
   </div>
   

   
   
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e90cdeec53794118950db07f3e598779&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };  

// ������ �����մϴ�    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
var geocoder = new kakao.maps.services.Geocoder();

// �ּҷ� ��ǥ�� �˻��մϴ�
geocoder.addressSearch('${storevo.staddress }', function(result, status) {

    // ���������� �˻��� �Ϸ������ 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // ����������� ��ҿ� ���� ������ ǥ���մϴ�
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${storevo.stsbname }</div>'
        });
        infowindow.open(map, marker);

        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
        map.setCenter(coords);
    } 
});    
</script>
   <br>
<br>
<br>
</div>
<%@include file="footer.jsp"%>