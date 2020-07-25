<%@ page import="city.yasuo.sxsj.dao.Link" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="city.yasuo.sxsj.util.*" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>LOL资料库</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="/css/style.css">
    <link rel='stylesheet' type='text/css' media='screen' href="/css/main.css">
</head>
<body>
<%
    Link sql = new Link();                                                              //实例化对象Link
    List arry = new ArrayList();                                                        //声明集合
    sql.LinkDrive();                                                                    //加载驱动
    arry = sql.Link("148.70.17.87","1433","LOL");                                       //连接数据库
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
        <video src=""></video>
    </div>
    <!--首页通用头部-->
<div class="room"></div><!-- 空间 -->
    <!-- 上一层 -->
<div class="icon">
    <img src="/image/home.svg" alt="" class="icon-home">
    <a href="/index.html" class="icon-1">回首页</a>
    <img src="/image/right.svg" alt="" class="icon-arrow-1">
    <a href="" class="icon-2">全部英雄</a>
    <img src="/image/right.svg"alt="" class="icon-arrow-2">
    <span>
        <%

        %>
    </span>
</div>
    <!-- 上一层 -->


<div class="room"></div><!-- 空间 -->
    <!-- 英雄图片 -->
    <div class="class_two">
        <div class="head_left">
            <span class="one">
            <%
                out.print(Search_Hero.search_hero_title((Statement)arry.get(0),"疾风剑豪"));
            %>
            </span>
            <span class="two">yasuo</span>
            <span class="three">
                <%
                    out.print(Search_Hero.search_hero_type1((Statement)arry.get(0),"疾风剑豪"));
                %>
            </span>
            <span class="three2">
                <%
                    out.print(Search_Hero.search_hero_type2((Statement)arry.get(0),"疾风剑豪"));
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
            out.print(Search_Hero.search_hero_introduce((Statement)arry.get(0),"疾风剑豪"));
        %>
        &nbsp;</span>
    </div>
</div>
    <!--背景介绍-->
   

<div class="room"></div><!-- 空间 -->


    <!--技能介绍-->
<div class="class_tre">
        <span>技能介绍</span>
<div class="room"></div><!-- 空间 -->
    <div class="btn">
        <ul>
            <li class="current" name="ck" onclick="changeSpan(0);"><img src="/image/index/1.jpg" alt=""></li>
            <li class="" name="ck" onclick="changeSpan(1);"><img src="/image/index/1.jpg" alt=""></li>
            <li class="" name="ck" onclick="changeSpan(2);"><img src="/image/index/1.jpg" alt=""></li>
            <li class="" name="ck" onclick="changeSpan(3);"><img src="/image/index/1.jpg" alt=""></li>
            <li class="" name="ck" onclick="changeSpan(4);"><img src="/image/index/1.jpg" alt=""></li>
        </ul>
    </div>
    <div class="bun">
        <span class="one">游击队军备</span>
        <span class="two">被动技能</span>
        <span class="three">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果提莫在短时间内静止站立且不受任何伤害，就会进入无定期的隐形状态。如果提莫在草丛中，他就能在移动的同时进入并保持隐形状态。离开隐形状态后，提莫会获得“出奇制胜”的增益效果，提升攻击速度，持续3秒。</span>
    </div>
 </div>
    <!--技能介绍-->


<div class="room"></div><!-- 空间 -->


    <!-- 评论区 -->
<div>
    <div class="room"></div><!-- 空间 -->
    <textarea class="text-a" name="" id="" cols="30" rows="10"></textarea>
    <div class="room"></div><!-- 空间 -->
    <div class="text">
        
        <input type="text" class="input">
        <input type="submit" value="发送" class="submit">
    </div>
</div>
    <!-- 评论区 -->


    <div class="room"></div><!-- 空间 -->
<%
    sql.closs((Statement)arry.get(0), (Connection)arry.get(1));                         //关闭数据库连接
%>
</form>
    <!-- 底部标签 -->
    <div class="button">
        <p>版权所有&nbsp;&nbsp;2019&nbsp;-&nbsp;2020&nbsp;&nbsp;</p>
    </div>
    <!-- 底部标签 -->
<script src='/js/main.js'></script> 
</body>
</html>
