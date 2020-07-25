<%@ page import="city.yasuo.sxsj.dao.Link" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="city.yasuo.sxsj.util.*" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--[if lte IE 8]>
<h1 class="red">您的浏览器版本过低，IE8及以下版本不支持新样式，请更新浏览器</h1>
<![endif]-->
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>LOL资料库</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <meta name="copyright" content="本页版权冰彦糖所有。All Rights Reserved">
    <meta name="keywords" content="英雄联盟,leagueoflegends,LOL,LOL资料库">
    <meta name="description" content="英雄联盟,leagueoflegends,LOL,LOL资料库">
    <meta name="renderer" content="webkit" />
    <link rel="icon" href="/image/index/leagueoflegends.png" type="image/x-icon"/>
    <link href="/font/stylesheet.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel='stylesheet' type='text/css' media='screen' href="/css/main.css">
    <link rel="stylesheet" type="text/css" href="/css/waifu.css"/>
    <script src="/js/jquery-3.4.1.min.js"></script>
    <script src="/js/autoload.js"></script>
<%--    <link href="https://vjs.zencdn.net/7.5.5/video-js.css" rel="stylesheet" />--%>
    <!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
<%--    <script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>--%>
    <link rel="stylesheet" href="/css/video-js.min.css">
</head>
<body>
<script src="/js/video.min.js"></script>
<%
    Link sql = new Link();                                                              //实例化对象Link
    List arry = new ArrayList();                                                        //声明集合
    sql.LinkDrive();                                                                    //加载驱动
    arry = sql.Link("148.70.17.87","1433","LOL");                                       //连接数据库
    String Hero_title1 = request.getParameter("name");
    if (Hero_title1 == null){
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", "/page/erro.html");
    }
//    System.out.println("Herotitle"+Hero_title1);
    String Hero_title= URLDecoder.decode(Hero_title1,"utf-8");
%>
    <!--首页通用头部-->
    <div class="head">
        <div class="head_button">
        <div class="head_left"></div>
        <span> LOL资料库</span>
        </div>
    </div><div class="room"></div>
<form>
    <!-- 视频 -->
    <div class="class_one" style="margin: 0 auto">
        <%
            String video = Search_Hero.search_hero_video((Statement)arry.get(0),Hero_title);
        %>
<%--        <video controls>--%>
<%--            <source src="<%= video %>" type="video/mp4; codecs=HEVC"/>--%>
<%--        </video>--%>
        <video src="<%= video %>" controls="controls" autoplay="autoplay" loop="loop">

        </video>

<%--        <video src="/video/out.mp4" controls="controls"></video>--%>
    </div>

    <!--首页通用头部-->
<div class="room"></div><!-- 空间 -->
    <!-- 上一层 -->
<div class="icon">
    <img src="/image/home.svg" alt="" class="icon-home">
    <a href="/index.html" class="icon-1">回首页</a>
    <img src="/image/right.svg" alt="" class="icon-arrow-1">
    <a href="/page/allHero.html" class="icon-2">全部英雄</a>
    <img src="/image/right.svg"alt="" class="icon-arrow-2">
    <span>
        <%
            out.print(Hero_title);
        %>
    </span>
</div>
    <!-- 上一层 -->

<%
    String bgccode = Search_Hero.search_hero_img_code((Statement)arry.get(0),Hero_title);
    String bgc = "Style = \" background-image: url(" + bgccode + ")\"";
%>
<div class="room"></div><!-- 空间 -->
    <!-- 英雄图片 -->
    <div class="class_two" id="class_two"
            <%=bgc%>
    >
        <div class="head_left">
            <span class="one">
            <%
                out.print(Search_Hero.search_hero_title((Statement)arry.get(0),Hero_title));
            %>
            </span>
            <span class="two">
                <%
                    out.print(Search_Hero.search_hero_name((Statement)arry.get(0),Hero_title));
                %>
            </span>
            <span class="three">
                <%
                    out.print(Search_Hero.search_hero_type1((Statement)arry.get(0),Hero_title));
                %>
            </span>
            <span class="three2">
                <%
                    out.print(Search_Hero.search_hero_type2((Statement)arry.get(0),Hero_title));
                %>
            </span>
        </div>
    </div>
    <!-- 英雄图片 -->


<div class="room"></div><!-- 空间 -->


    <!--背景介绍-->
<div class="class_tue">
        <span>背景介绍</span>
<div class="room"></div><!-- 空间 -->
    <div class="bun">
        <span class="one">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%
            out.print(Search_Hero.search_hero_introduce((Statement)arry.get(0),Hero_title));
        %>
        &nbsp;</span>
    </div>
</div>
    <!--背景介绍-->
   

<div class="room"></div><!-- 空间 -->

<%
    String Hero_ID = Search_Hero.search_hero_ID((Statement)arry.get(0),Hero_title);
    String imgcodeB = search_skill.search_skill_imgcode((Statement)arry.get(0),Hero_title,"被动");
    String imgcodeQ = search_skill.search_skill_imgcode((Statement)arry.get(0),Hero_title,"Q");
    String imgcodeW = search_skill.search_skill_imgcode((Statement)arry.get(0),Hero_title,"W");
    String imgcodeE= search_skill.search_skill_imgcode((Statement)arry.get(0),Hero_title,"E");
    String imgcodeR = search_skill.search_skill_imgcode((Statement)arry.get(0),Hero_title,"R");
%>
    <!--技能介绍-->
<div class="class_tre">
        <span>技能介绍</span>
<div class="room"></div><!-- 空间 -->
    <div class="btn">
        <ul>
            <li class="current" name="ck" onclick="changeSpan(0);"><img src="<%=imgcodeB%>" alt=""></li>
            <li class="" name="ck" onclick="changeSpan(1);"><img src="<%=imgcodeQ%>" alt=""></li>
            <li class="" name="ck" onclick="changeSpan(2);"><img src="<%=imgcodeW%>" alt=""></li>
            <li class="" name="ck" onclick="changeSpan(3);"><img src="<%=imgcodeE%>" alt=""></li>
            <li class="" name="ck" onclick="changeSpan(4);"><img src="<%=imgcodeR%>" alt=""></li>
        </ul>
    </div>
    <div class="bun">
        <span class="one1">
            <%
                out.print(search_skill.search_skill_name((Statement)arry.get(0),Hero_title,"被动"));
            %>
            </span>
            <span class="one1" style="display: none">
            <%
                out.print(search_skill.search_skill_name((Statement)arry.get(0),Hero_title,"Q"));
            %>
            </span>
            <span class="one1" style="display: none">
            <%
                out.print(search_skill.search_skill_name((Statement)arry.get(0),Hero_title,"W"));
            %>
            </span>
            <span class="one1" style="display: none">
            <%
                out.print(search_skill.search_skill_name((Statement)arry.get(0),Hero_title,"E"));
            %>
            </span>
            <span class="one1" style="display: none">
            <%
                out.print(search_skill.search_skill_name((Statement)arry.get(0),Hero_title,"R"));
            %>
        </span>
        <span class="two1">
            <%
                out.print(search_skill.search_skill_place((Statement)arry.get(0),Hero_title,"被动"));
            %>
            </span>
            <span class="two1" style="display: none">
            <%
                out.print(search_skill.search_skill_place((Statement)arry.get(0),Hero_title,"Q"));
            %>
            </span>
            <span class="two1" style="display: none">
            <%
                out.print(search_skill.search_skill_place((Statement)arry.get(0),Hero_title,"W"));
            %>
            </span>
            <span class="two1" style="display: none">
            <%
                out.print(search_skill.search_skill_place((Statement)arry.get(0),Hero_title,"E"));
            %>
            </span>
            <span class="two1" style="display: none">
            <%
                out.print(search_skill.search_skill_place((Statement)arry.get(0),Hero_title,"R"));
            %>
        </span>
        <br>
        <span class="three1">
        <%
            out.print(search_skill.search_skill_description((Statement)arry.get(0),Hero_title,"被动"));
        %>
        </span>
            <span class="three1" style="display: none">&nbsp;&nbsp;&nbsp;
        <%
            out.print(search_skill.search_skill_description((Statement)arry.get(0),Hero_title,"Q"));
        %>
        </span>
        <span class="three1" style="display: none">&nbsp;&nbsp;&nbsp;
        <%
            out.print(search_skill.search_skill_description((Statement)arry.get(0),Hero_title,"W"));
        %>
        </span>
        <span class="three1" style="display: none">&nbsp;&nbsp;&nbsp;
        <%
            out.print(search_skill.search_skill_description((Statement)arry.get(0),Hero_title,"E"));
        %>
        </span>
        <span class="three1" style="display: none">&nbsp;&nbsp;&nbsp;
        <%
            out.print(search_skill.search_skill_description((Statement)arry.get(0),Hero_title,"R"));
        %>
        </span>
    </div>
 </div>
    <!--技能介绍-->
    <div class="room"></div><!-- 空间 -->
    <!-- 评论区 -->
<%--<div>--%>
<%--    <div class="room"></div><!-- 空间 -->--%>
<%--    <textarea class="text-a" name="" id="" cols="30" rows="10"></textarea>--%>
<%--    <div class="room"></div><!-- 空间 -->--%>
<%--    <div class="text">--%>
<%--        --%>
<%--        <input type="text" class="input">--%>
<%--        <input type="submit" value="发送" class="submit">--%>
<%--    </div>--%>
<%--</div>--%>
    <!-- 评论区 -->

    <div class="waifu">
        <div class="waifu-tips"></div>
        <canvas id="live2d" class="live2d"></canvas>
        <div class="waifu-tool">
            <span class="fui-home"></span>
            <span class="fui-chat"></span>
            <span class="fui-eye"></span>
            <span class="fui-user"></span>
            <span class="fui-photo"></span>
            <span class="fui-info-circle"></span>
            <span class="fui-cross"></span>
        </div>
    </div>
    <div class="room"></div><!-- 空间 -->
<%
    sql.closs((Statement)arry.get(0), (Connection)arry.get(1));                         //关闭数据库连接
%>
</form>
    <!-- 底部标签 -->
    <div class="button">
        <a href="http://beian.miit.gov.cn/">豫ICP备18045222号</a>|<a href="http://www.miit.gov.cn/">中华人民共和国工业与信息化部</a>|
    </div>
    <!-- 底部标签 -->


<script>(function($) {if(!document.defaultView || !document.defaultView.getComputedStyle){var oldCurCSS = $.css;$.css = function(elem, name, force){if(name === 'background-position'){name = 'backgroundPosition';}if(name !== 'backgroundPosition' || !elem.currentStyle || elem.currentStyle[ name ]){return oldCurCSS.apply(this, arguments);}var style = elem.style;if ( !force && style && style[ name ] ){return style[ name ];}return oldCurCSS(elem, 'backgroundPositionX', force) +' '+ oldCurCSS(elem, 'backgroundPositionY', force);};}var oldAnim = $.fn.animate;$.fn.animate = function(prop){if('background-position' in prop){prop.backgroundPosition = prop['background-position'];delete prop['background-position'];}if('backgroundPosition' in prop){prop.backgroundPosition = '('+ prop.backgroundPosition;}return oldAnim.apply(this, arguments);};function toArray(strg){strg = strg.replace(/left|top/g,'0px');strg = strg.replace(/right|bottom/g,'100%');strg = strg.replace(/([0-9\.]+)(\s|\)|$)/g,"$1px$2");var res = strg.match(/(-?[0-9\.]+)(px|\%|em|pt)\s(-?[0-9\.]+)(px|\%|em|pt)/);return [parseFloat(res[1],10),res[2],parseFloat(res[3],10),res[4]];}$.fx.step. backgroundPosition = function(fx) {if (!fx.bgPosReady) {var start = $.css(fx.elem,'backgroundPosition');if(!start){start = '0px 0px';}start = toArray(start);fx.start = [start[0],start[2]];var end = toArray(fx.end);fx.end = [end[0],end[2]];fx.unit = [end[1],end[3]];fx.bgPosReady = true;}var nowPosX = [];nowPosX[0] = ((fx.end[0] - fx.start[0]) * fx.pos) + fx.start[0] + fx.unit[0];nowPosX[1] = ((fx.end[1] - fx.start[1]) * fx.pos) + fx.start[1] + fx.unit[1];fx.elem.style.backgroundPosition = nowPosX[0]+' '+nowPosX[1];};})(jQuery);
</script>>
<script src='/js/main.js'></script>
<script type="text/javascript" src="/js/verify.js" ></script>
<script src="/js/live2d.js"></script>
<script src="/js/waifu-tips.js"></script>
<script type="text/javascript">
    live2d_settings['modelId'] = 1;
    live2d_settings['modelTexturesId'] = 87;
    initModel("/json/waifu-tips.json")
</script>
<script>
    //安装代码的页面在任意平台（浏览器、微信、微博）被加载时，页面链接会被第一时间推送给百度，从而提高站点新内容的发现速度。
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
</body>
</html>
