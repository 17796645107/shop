function checkTelephone() {

}

function clearTelephoneMsg() {

}

function checkValidate() {

}

function sendCode() {

}

function checkPassword() {

}

function checkRepeatPassword() {

}

function checkRead() {

}

function userRegister() {
    let telephone = $("#telephone").val();
    let verificationCode = $("#verificationCode");
    let password = $("#password").val();
    $.ajax({
        //请求方式
        type : "POST",
        //请求的媒体类型
        // dataType : "json",
        contentType: "application/json",
        //请求地址
        url : "../user/register",
        //数据，json字符串
        data : JSON.stringify({"telephone":telephone,"password":password,"verificationCode":verificationCode}),
        /*//请求成功
        success : function(result) {
            console.log(result);
        },
        //请求失败，包含具体的错误信息
        error : function(e){
            console.log(e.status);
            console.log(e.responseText);
        }*/
    });
}