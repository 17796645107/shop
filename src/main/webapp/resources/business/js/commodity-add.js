function product_name_is() {
    var name=   document.getElementById("product_name").value;
    if (name==null||name=="undefined"||name==""){
        var msg= document.getElementById("product_name_msg")
        msg.style.color="red";
        msg.innerText="名称不能为空";
        return false;
    }
    return true;
    console.log(name);
}
function Product_color_is() {
    var name=   document.getElementById("Product_color").value;
    var msg= document.getElementById("product_color_msg")
    if (name==null||name=="undefined"||name==""){

        msg.style.color="red";
        msg.innerText="名称不能为空";
        return false;
    }else {
        msg.style.color="#C6E2FF";
        msg.innerText="颜色OK";
        return true;
    }
    console.log(name);
}
function Product_color_arm_is() {
    var name=   document.getElementById("Product_color_arm").value;
    var msg= document.getElementById("Product_color_arm_msg")
    if (name==null||name=="undefined"||name==""){
        msg.style.color="red";
        msg.innerText="名称不能为空";
        return false;
    }else {
        msg.style.color="#C6E2FF";
        msg.innerText="颜色OK";
        return true;
    }
    console.log(name);
}
function Product_amount_is() {
    var name=   document.getElementById("Product_amount").value;
    var msg= document.getElementById("Product_amount_msg");
    var amount=/(^[1-9]\d*(\.\d{1,2})?)|(0(\.\d1,2)?)/;
    if (amount.test(name)){
        msg.style.color="#C6E2FF";
        msg.innerText="金额OK";
        return true;
    }else {
        msg.style.color="red";
        msg.innerText="金额格式不对";
        return false;

    }
    console.log(name);
}
function Product_amount_is() {
    var name=   document.getElementById("Product_Brand");
    var msg= document.getElementById("Product_Brand_msg");
    for (let i = 0; i <name.length ; i++) {
        if (name[i].checked==true){
            return true;
        }else {
            msg.style.color="red";
            msg.innerText="请选择品牌";
            return false;

        }
    }

    console.log(name);
}

function article_save_submit() {




}


function img() {

    const img= document.getElementById("img3")
    if(img.src!=null){
        var fileObj = document.getElementById("file").files[0]; // js 获取文件对象
        var formFile = new FormData();//新建formdata对象
        formFile.append("action", "UploadVMKImagePath");
        formFile.append("file", fileObj); //加入文件对象
        var data = formFile;


        $.ajax({
            type: 'POST',
            url: 'http://localhost:8080/shop/Commodity/img.do',
            data: data,
            processData: false,
            dataType: 'json',
            cache: false,
            contentType: false,
            success: function (data) {
                alert("al");
                console.log(data);
            }
        });
    }


}

function subi() {
  var form=  document.getElementById("form-article-add");
        form.submit();

}
