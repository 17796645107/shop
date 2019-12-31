$(function () {
     //获取页面传递的参数
     $(".sec-mainNav li").each(function () {
         $(this).click(function () {
             findbrandId($(this));
         })
     })

})


function findbrandId(obj) {
   /* console.log($(".brandId").parent().next().children(".brandId").val());*/

    var arr = [];
    var textNum = $(".sec-mainNav li").find("input").length;
    for(var i=0;i<textNum;i++){
        var brandId = $(".sec-mainNav li").find("input").eq(i).val();
    }
    arr.push(brandId)

    


}
