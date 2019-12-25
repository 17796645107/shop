function addSecret() {
	var table = document.getElementById("secretTable");
	var tableLength = table.rows.length;
	console.log(tableLength);
	console.log(table);
	for (var i = tableLength + 10; i >= tableLength; i--) {
		var tr = table.insertRow(tableLength);
		var checkbox = document.createElement("input");
		checkbox.type = "checkbox";
		checkbox.name = "che"
		console.log(i);
		var td1 = tr.insertCell(0);
		td1.innerHTML = '<input onclick="isCheckAll()" style="width: 50px; height: 50px;" type="checkbox" name="che" class="checkcon" id="che" value="' + i + '" />';
		var td2 = tr.insertCell(1);
		td2.innerHTML = '<img src="img/tupian.png" />'
		var td3 = tr.insertCell(2);
		td3.setAttribute("colspan", 2);
		td3.innerHTML = "图片名称" + i;
	}
}

function deleteSecret() {
	var checkbox = $('input:checkbox:checked');
	var len = checkbox.length;
	console.log(len);
	console.log(checkbox[1].checked);
	for (var i = len - 1; i >= 0; i--) {
		if (checkbox[i].checked) {
			var tableTrTd = checkbox[i].parentNode.parentNode;
			tableTrTd.parentNode.removeChild(tableTrTd);
		}
	}
	var checkbox1 = $('input:checkbox').length;
	if(checkbox1 == 0){
		$('#checkNotAll').hide();
		$('#checkAll').css("display","inline");
	}
}

function checkAll(){
	var checkbox = $('input:checkbox');
	if(checkbox.length == 0){
		return;
	}
	for(var i = 0;i < checkbox.length; i++){
		checkbox[i].checked = true;
	}
	$('#checkAll').hide();
	$('#checkNotAll').css("display","inline");
}
function checkNotAll(){
	var checkbox = $('input:checkbox');
	for(var i = 0;i < checkbox.length; i++){
		checkbox[i].checked = false;
	}
	$('#checkNotAll').hide();
	$('#checkAll').css("display","inline");
}
function isCheckAll(){
	var checkbox1 = $('input:checkbox').length;
	var checkbox2 = $('input:checkbox:checked').length;
	if(checkbox1 == checkbox2){
		$('#checkAll').hide();
		$('#checkNotAll').css("display","inline");
	}
	if(checkbox1 != checkbox2){
		$('#checkNotAll').hide();
		$('#checkAll').css("display","inline");
	}
}

$(function(){
            calc(); //计算方法
            //全选\反选
            $("#selectAll").click(function(){
                var $obj =$(this).attr("checked");
                if($obj){
                    $("input[name='ck1']").attr("checked",true);
                }else{
                    $("input[name='ck1']").attr("checked",false);
                }
            });
 
            //删除所选
            $("#deleteSelete").click(function(){
                $("input[name='che']:checked").each(function(){
                    $(this).parent().parent().remove();
                });
                calc();
            });
            //单击删除
            $("#mytable .delete").click(function(){
                $(this).parent().parent().remove();
                calc()
            });
            //单机商品数量+
            $("#mytable .add").click(function(){
                //获得单前数量
                var $goodsCount= parseInt($(this).prev().val());
                $(this).prev().val($goodsCount+1);
                calc();
            });
            //单机商品数量-
            $("#mytable .cut").click(function(){
                //获得单前数量
                var $goodsCount= parseInt($(this).next().val());
                $(this).next().val($goodsCount<=1?1:$goodsCount-1);
                calc();
            });
 
            //计算价格
            function calc(){
                //找到共有对象
                var $obj = $("input[name='deleteGoods']");
                //var $obj = $("#mytable .delete");//也可以获得对象
                var sum =0;
                //循环共有对象，让它循环获得我们想要的对象的值
                $obj.each(function(){
                    //获得商品价格
                    var $price = parseInt($(this).parent().prev().prev().prev().html());
                    //获得商品数量
                    var $count = parseFloat($(this).parent().prev().prev().find("input").val());
                    var timSum =$count*$price;
                    $(this).parent().prev().html("￥"+timSum);//给商品小计赋值
                    sum +=timSum;  //累加计算总价
                });
                $("#sum").html(sum);
            };
            //绑定所有输入数量输入框的事件,输入值后自动计算
            $("input[name='inputCount']").each(function(){
                $(this).keyup(function(){
                    var num = $(this).val();
                    if(num!=""){
                        calc();
                    }else{
                        $("#mytable .cut").next().val(1);  //赋一个默认数量1
                        calc();
                    }
                });
            });
        });
        function settlement(){
        	var sum = document.getElementById("sum").innerHTML;
        	alert("支付￥"+sum+"元");
        }
        