xianshi();
 function xianshi() {
var dis = document.getElementsByName("display");
var name = document.getElementsByName("ck");
for (let i = 0; i < name.length; i++) {
    name[i].onclick = function () {
        //英雄职业选择样式改变
        var a = document.getElementsByClassName("current");
        a[0].setAttribute('class','');
        var cs = document.getElementsByName("ck");
        // console.log(cs[num].getAttribute("count"));
        cs[i].setAttribute('class','current'); 
        // console.log(cs[i]);
        //英雄职业选择样式改变

        var all =document.getElementsByClassName("xianshi");
        all[0].setAttribute('style','display:none');
        all[0].setAttribute('class','');
        dis[i].className += " xianshi";
        dis[i].setAttribute('Style','display: ');
    //    console.log(dis[i]);
    }
    // dis[num].setAttribute('class','all')
}
}

// function myFunction() {
//     var inpObj = document.getElementById("id1");
//     inpObj.setCustomValidity(''); // 取消自定义提示的方式
//     if (inpObj.checkValidity() == false) {
// 		if(inpObj.value==""){
// 			inpObj.setCustomValidity("不能为空！");
// 		}else if(inpObj.value<100 || inpObj.value>300){
// 			inpObj.setCustomValidity("请重新输入数值（100~300之间）!");
// 		}
//         document.getElementById("demo").innerHTML = inpObj.validationMessage;
//     } else {
//         document.getElementById("demo").innerHTML = "输入正确";
//     }
// }
function IP(){
    $("#IP")[0].innerHTML = "IP=" + returnCitySN['cip'];
    $("#IPv6")[0].innerHTML = "IPv6=" + data[1].myip;
}
window.onload = function () {
    IP();
 }