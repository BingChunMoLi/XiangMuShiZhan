window.onresize = function() {//窗口变化
    // console.log(this.screen.width);
    // console.log(this.screen.height);
}
function changeSpan(num){
    //技能图标样式的改变
    var a = document.getElementsByClassName("current");
    a[0].setAttribute('class','');
    var cs = document.getElementsByName("ck");
    // console.log(cs[num].getAttribute("count"));
    cs[num].setAttribute('class','current'); 
    // console.log(cs[num]);
    //技能图标样式的改变
    // console.log($(".three1")[0].css("display","none"));
    for (let i = 0; i < $(".three1").length; i++){
        $(".one1").css("display","none");
        $(".two1").css("display","none");
        $(".three1").css("display","none");
    }
    $(".one1")[num].setAttribute("Style","display: ");
    $(".two1")[num].setAttribute("Style","display: ");
    $(".three1")[num].setAttribute("Style","display: ");
}
function sleep(numberMillis){
    var now = new Date();
    var exitTime = now.getTime() + numberMillis;
    while (true) {
        now = new Date();
        if (now.getTime() > exitTime)
            return;
    }
}


(function($) {if(!document.defaultView || !document.defaultView.getComputedStyle){var oldCurCSS = $.curCSS;$.curCSS = function(elem, name, force){if(name === 'background-position'){name = 'backgroundPosition';}if(name !== 'backgroundPosition' || !elem.currentStyle || elem.currentStyle[ name ]){return oldCurCSS.apply(this, arguments);}var style = elem.style;if ( !force && style && style[ name ] ){return style[ name ];}return oldCurCSS(elem, 'backgroundPositionX', force) +' '+ oldCurCSS(elem, 'backgroundPositionY', force);};}var oldAnim = $.fn.animate;$.fn.animate = function(prop){if('background-position' in prop){prop.backgroundPosition = prop['background-position'];delete prop['background-position'];}if('backgroundPosition' in prop){prop.backgroundPosition = '('+ prop.backgroundPosition;}return oldAnim.apply(this, arguments);};function toArray(strg){strg = strg.replace(/left|top/g,'0px');strg = strg.replace(/right|bottom/g,'100%');strg = strg.replace(/([0-9\.]+)(\s|\)|$)/g,"$1px$2");var res = strg.match(/(-?[0-9\.]+)(px|\%|em|pt)\s(-?[0-9\.]+)(px|\%|em|pt)/);return [parseFloat(res[1],10),res[2],parseFloat(res[3],10),res[4]];}$.fx.step. backgroundPosition = function(fx) {if (!fx.bgPosReady) {var start = $.curCSS(fx.elem,'backgroundPosition');if(!start){start = '0px 0px';}start = toArray(start);fx.start = [start[0],start[2]];var end = toArray(fx.end);fx.end = [end[0],end[2]];fx.unit = [end[1],end[3]];fx.bgPosReady = true;}var nowPosX = [];nowPosX[0] = ((fx.end[0] - fx.start[0]) * fx.pos) + fx.start[0] + fx.unit[0];nowPosX[1] = ((fx.end[1] - fx.start[1]) * fx.pos) + fx.start[1] + fx.unit[1];fx.elem.style.backgroundPosition = nowPosX[0]+' '+nowPosX[1];};})(jQuery);

var x = 0;
var lunbo = function Lunbo(){
    var dsq;
    // window.clearInterval(dsq);
    x = x -1336;
    $(".class_two")[0].style.backgroundPosition = " " + x +" 0px";
    // console.log(x);
    var a = document.getElementById("class_two");
    // a.style.cssText += ""；
    // $(".class_two")[0].animate({"backgroundPositionX":"1335.6"},1000,"linear");
    // $(".class_two")[0].animate({"MsBackgroundPositionX":"-=1335.6"},1000,"linear");
    // $(".class_two")[0].animate({"backgroundPosition":" 1335.6px  0px"},1000,"linear");

    window.clearInterval(dsq);
}
dsq = setInterval(lunbo,4000);
// window.onload = function () {
//     sleep(2000);
//     lunbo();
// }
