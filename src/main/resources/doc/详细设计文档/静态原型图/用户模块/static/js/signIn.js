//手机号验证
function phoneCheck(input){
    if(input==""){
        alert("手机号码不能为空！")

    }

    if(input!=""){
        var p1=/^(13[0-9]\d{8}$|15[012356789]\d{8}$|18[0-9]\{8}$|14[57]\d{8}$/
        var b=false;
        if(p1.test(input)==b){
            alert("对不起，您输入的手机号码有错误。请输入正确的手机号码。");
            return false;
        }
        return true;
    }
}