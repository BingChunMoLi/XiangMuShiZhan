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
function getQueryVariable(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}
function getInnerText(element) {
    if (typeof element.textContent == "undefined") {
        return element.innerText;
    } else {
        return element.textContent;
    }
}
// function u(){
    var temp = new Array;
    var encodeStr= new Array;
    var url= new Array;
    // for (let i = 0; i < $(".a").length - 1; i++) {
    //     temp[i] = $(".pa")[i].textContent;
    //     encodeStr[i] = encodeURI(temp[i]);
    //     url[i] = "/page/index.jsp?Hero_name=" + encodeStr[i];
    //     // $(".a")[i].href = url[i];
    //     $(".a")[i].setAttribute("href",url[i]);
    // }
     for (let i = 0; i < $(".a").length; i++) {
        temp[i] = $(".a")[i].href;
        encodeStr[i] = encodeURI(temp[i]);
        $(".a")[i].setAttribute("href",encodeStr[i]);
    }
// }
// function search_search() {
//     console.log(search.value);
// }
// search.blur(search_search());
//shiqu jiaodian


var Hero_name = $(".pa");
var Hero_li = $(".li");
function f() {
    var search_input = $(".search_input")[0];
    var search_input_value = search_input.value;
    if (search_input_value != null || search_input_value != ""){
        for (let i = 0;i < Hero_li.length;i++){
            Hero_li[i].style.display = "none";
        }
        for (let i = 0;i < Hero_name.length;i++){
            if (getInnerText(Hero_name[i]).search(search_input_value) != -1){
                Hero_li[i].style.display = "";
            }
        }
    }else{
        for (let i = 0;i < Hero_li.length;i++){
            Hero_li[i].style.display = "";
        }
    }
}
$("search_onclick").onclick = function () {
    var search_onclick = getQueryVariable("text");
    console.log(search_onclick);
    if (search_onclick != "" || search_onclick != null){
        for (let i = 0;i < Hero_li.length;i++){
            Hero_li[i].style.display = "none";
        }
        for (let i = 0;i < Hero_name.length;i++){
            if (getInnerText(Hero_name[i]).search(search_onclick) != -1){
                Hero_li[i].style.display = "";
            }
        }
    }else{
        for (let i = 0;i < Hero_li.length;i++){
            Hero_li[i].style.display = "";
        }
    }
}
