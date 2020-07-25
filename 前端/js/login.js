/*
 * @Author: your name
 * @Date: 2019-11-26 15:08:54
 * @LastEditTime : 2019-12-17 21:27:03
 * @LastEditors  : 冰彦糖
 * @Description: In User Settings Edit
 * @FilePath: \前端\js\login.js
 */
window.onresize = function() {//窗口变化
    updatebgc();
}


// 表单验证
var a,b,c;
function isuser() {
    var name = $('.input_user')[0].value;
    //动画定格
    if(name != ""){
        $('.label_input_user')[0].style.transform = "translate3d(-0.8rem,-60%,0)";
        $('.label_input_user')[0].style.fontWeight = "bolder";
        $('.label_input_user')[0].style.fontSize = "1.2rem";
    }else{
        $('.label_input_user')[0].style.transform = "translate3d(0,0,0)";
        $('.label_input_user')[0].style.fontWeight = "normal";
        $('.label_input_user')[0].style.fontSize = "1.6rem";
    }
    var rex_pwd = /.{8,20}/;
    a = rex_pwd.test(name);
    if (a == false) {
        $("input")[0].style.border = "0.2rem solid red";
        $(".text")[0].style.display = "inline";
        $(".text")[0].innerText = "用户名格式不正确";
    }else{
        $("input")[0].style.border = "";
        $(".text")[0].style.display = "none";
    }
}
function ispwd() {
    var pwd = $('.input_pwd')[0].value;
    //动画定格
    if(pwd != ""){
        $('.pwd')[0].style.transform = "translate3d(0,-70%,0)";
        $('.pwd')[0].style.fontWeight = "bolder";
        $('.pwd')[0].style.fontSize = "1.2rem";
    }else{
        $('.pwd')[0].style.transform = "translate3d(0,0,0)";
        $('.pwd')[0].style.fontWeight = "normal";
        $('.pwd')[0].style.fontSize = "1.6rem";
    }
    var rex_user = /[a-zA-Z]+([0-9a-zA-Z]){5,11}/;
    b = rex_user.test(pwd);
    if (b == false) {
        $("input")[1].style.border = "0.2rem solid red";
        $(".text")[1].style.display = "inline";
        $(".text")[1].innerText = "密码格式不正确";
    }else{
        $("input")[1].style.border = "";
        $(".text")[1].style.display = "none";
    }
}
function ispwd2() {
    var pwd2 = $('.pwd2')[0].value;
    //动画定格
    if(pwd2 != ""){
        $('.pwd1')[0].style.transform = "translate3d(0,-80%,0)";
        $('.pwd1')[0].style.fontWeight = "bolder";
        $('.pwd1')[0].style.fontSize = "1.2rem";
    }else{
        $('.pwd1')[0].style.transform = "translate3d(0,0,0)";
        $('.pwd1')[0].style.fontWeight = "normal";
        $('.pwd1')[0].style.fontSize = "1.6rem";
    }
}
$('#mpanel3').codeVerify({
    type : 2,
    figure : 100,	//位数，仅在type=2时生效
    arith : 0,	//算法，支持加减乘，不填为随机，仅在type=2时生效
    width : '200px',
    height : '50px',
    fontSize : '30px',
    btnId : 'login',
    ready : function() {
    },
    success : function() {
        c = true;
    },
    error : function() {
        c = false;
    }
});
// onSubmit 表单提交事件
// $("form")[0].onSubmit =
function check() {
    if (a && b && c) {
        return true;
    } else {
        return false;
    }
}