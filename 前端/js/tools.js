/*
 * @Author: 冰彦糖
 * @Date: 2019-11-27 10:22:39
 * @LastEditTime: 2019-12-13 17:56:05
 * @LastEditors: Please set LastEditors
 * @Description: tools
 * @FilePath: \前端\js\tools.js
 */
function updatebgc() {
    if (Element.clientHeight < screen.height * 0.9) {
        $(".main")[0].style.height = screen.height/10 + "rem";
    } else {
        $(".main")[0].style.height = Element.clientHeight/10 + "rem";
    }
    // if (document.documentElement.clientWidth < screen.width * 0.9) {
    //     $(".main")[0].style.width = screen.width/10 + "rem";
    // } else {
    //     $(".main")[0].style.width = document.documentElement.clientWidth/10 + "rem";
    // }
}