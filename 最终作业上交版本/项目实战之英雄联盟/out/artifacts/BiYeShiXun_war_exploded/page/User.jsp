<%@ page import="city.yasuo.sxsj.dao.Link" %>
<%@ page import="city.yasuo.sxsj.util.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lte IE 8]>
<h1 class="red">您的浏览器版本过低，IE8及以下版本不支持新样式，请更新浏览器</h1>
<![endif]-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人中心</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel='stylesheet' type='text/css' media='screen' href="/css/usermain.css">
    <link rel="icon" href="/image/20191213060328854_easyicon_net_256.ico" type="image/x-icon"/>
    <meta name="copyright" content="本页版权冰彦糖所有。All Rights Reserved">
    <meta name="keywords" content="英雄联盟,leagueoflegends,LOL,LOL资料库">
    <meta name="description" content="英雄联盟,leagueoflegends,LOL,LOL资料库">
    <!-- 优先以webkit内核渲染页面 -->
     <meta name="renderer" content="webkit" />
    <link href="/font/stylesheet.css">
    <link rel="stylesheet" type="text/css" href="/css/waifu.css"/>
    <script src="/js/jquery-3.4.1.min.js"></script>
    <script src="/js/autoload.js"></script>
</head>
<body>
    <!--首页通用头部-->
    <%
        Cookie cookie[] = request.getCookies();
        Link sql = new Link();                                                              //实例化对象Link
        List arry = new ArrayList();                                                        //声明集合
        sql.LinkDrive();                                                                    //加载驱动
        arry = sql.Link("148.70.17.87","1433","LOL");                                       //连接数据库
        search_user search_user = new search_user();
        String username = null;
        for (int i = 0;i < cookie.length;i++){
            Cookie temp = cookie[i];
            if(temp.getName().equals("username")){
                username = temp.getValue();
            }
        }
    %>
        <div class="head">
            <div class="head_button">
            <div class="head_left"></div>
            <span>LOL资料库</span>
            </div>
        </div>

        <div class="room"></div><!-- 空间 -->

    <form>
    <!-- 上一层 -->
    <div class="icon">
        <img src="/image/home.svg" alt="" class="icon-home">
        <a href="/index.html" class="icon-1">回首页</a>
        <img src="/image/right.svg" alt="" class="icon-arrow-1">
        <a href="/page/allHero.html" class="icon-2">全部英雄</a>
        <img src="/image/right.svg"alt="" class="icon-arrow-2">
        <span>用户名中心</span>
    </div>
    <div class="room"></div><!-- 空间 -->

        <!-- 上一层 -->
    <div class="tre">
        <div class="tre_btn">
            <ul>
                <li class="current" name="ck" ><span>用户信息</span></li>
                <li class="" name="ck" ><span>修改资料</span></li>
                <li class="" name="ck" ><span>注销账户</span></li>
            </ul>
        </div>
        <div class="tre_bun">
                <!-- 用户信息 -->
            <div class="xianshi" name="display" >
                <ul class="ul_enter1">
                    <li class="li_wid">姓名：</li>
                    <li>
                        <%
                            out.print(search_user.Search_user_name((Statement)arry.get(0),username));
                        %>
                    </li>
                </ul>
                <ul class="ul_enter2">
                    <li class="li_wid">性别：</li>
                    <li>
                        <%
                            out.print(search_user.Search_user_sex((Statement)arry.get(0),username));
                        %>
                    </li>
                </ul>
                <ul class="ul_enter3">
                    <li class="li_wid">年龄：</li>
                    <li>
                        <%
                            out.print(search_user.Search_user_age((Statement)arry.get(0),username));
                        %>
                    </li>
                </ul>
                <ul class="ul_enter4">
                    <li class="li_wid">家乡：</li>
                    <li>
                        <%
                            out.print(search_user.Search_user_from((Statement)arry.get(0),username));
                        %>
                    </li>
                </ul>
                <ul class="ul_enter5">
                    <li class="li_wid">兴趣爱好：</li>
                    <li>
                        <%
                            out.print(search_user.Search_user_live((Statement)arry.get(0),username));
                        %>
                    </li>
                </ul>
                <%
                    String tempp = search_user.Search_user_uid((Statement)arry.get(0),username);
                %>
                <p>你是第<%= tempp%>位注册用户</p>
                你的访问IP为:<span id="IP"></span>
                <br>
<%--                上次访问IPv6为:<span id="IPv6">--%>
            </span>
            </div>
            <!-- 用户信息 -->
            <!-- 修改信息 -->
            <div  class="" name="display" style="display: none;">
                <form action="/updateuser" method="post">
                    <ul class="ul_enter1">
                        <li class="li_wid">姓名：</li>
                        <input class="li_hei" name="name" type="text">
                    </ul>
                    <ul class="ul_enter2">
                        <li class="li_wid">性别：</li>
                        <li class="li_hei1"><input class="li_hei1" type="radio"name="sex" value="男"><span class="nan">男</span></li>
                        <li class="li_hei2"><input class="li_hei2" type="radio"name="sex" value="女"><span class="girl">女</span></li>
                    </ul>
                    <ul class="ul_enter3">
                        <li class="li_wid">年龄：</li>
                        <input class="li_hei" name="age" list="data_age" type="text">
                            <datalist style="width: 50px;" id = "data_age">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                                <option>13</option>
                                <option>14</option>
                                <option>15</option>
                                <option>16</option>
                                <option>17</option>
                                <option>18</option>
                                <option>19</option>
                                <option>20</option>
                                <option>21</option>
                                <option>22</option>
                                <option>23</option>
                                <option>24</option>
                                <option>25</option>
                                <option>26</option>
                                <option>27</option>
                                <option>28</option>
                                <option>29</option>
                                <option>30</option>
                                <option>31</option>
                                <option>32</option>
                                <option>33</option>
                                <option>34</option>
                                <option>35</option>
                                <option>36</option>
                                <option>37</option>
                                <option>38</option>
                                <option>39</option>
                                <option>40</option>
                                <option>41</option>
                                <option>42</option>
                                <option>43</option>
                                <option>44</option>
                                <option>45</option>
                                <option>46</option>
                                <option>47</option>
                                <option>48</option>
                                <option>49</option>
                                <option>50</option>
                                <option>51</option>
                                <option>52</option>
                                <option>53</option>
                                <option>54</option>
                                <option>55</option>
                                <option>56</option>
                                <option>57</option>
                                <option>58</option>
                                <option>59</option>
                                <option>60</option>
                                <option>61</option>
                                <option>62</option>
                                <option>63</option>
                                <option>64</option>
                                <option>65</option>
                                <option>66</option>
                                <option>67</option>
                                <option>68</option>
                                <option>69</option>
                                <option>70</option>
                                <option>71</option>
                                <option>72</option>
                                <option>73</option>
                                <option>74</option>
                                <option>75</option>
                                <option>76</option>
                                <option>77</option>
                                <option>78</option>
                                <option>79</option>
                                <option>80</option>
                                <option>81</option>
                                <option>82</option>
                                <option>83</option>
                                <option>84</option>
                                <option>85</option>
                                <option>86</option>
                                <option>87</option>
                                <option>88</option>
                                <option>89</option>
                                <option>90</option>
                                <option>91</option>
                                <option>92</option>
                                <option>93</option>
                                <option>94</option>
                                <option>95</option>
                                <option>96</option>
                                <option>97</option>
                                <option>98</option>
                                <option>99</option>
                                <option>100</option>
                            </datalist>
                    </ul>
                    <ul class="ul_enter4">
                        <li class="li_wid">家乡：</li>
                        <input class="li_hei" name="from" type="text">
                    </ul>
                    <ul class="ul_enter5">
                        <li class="li_wid">兴趣爱好：</li>
                        <input class="li_hei" name="live" type="text">
                    </ul>
                    <ul class="ul_enter6">
                        <li class="li_wid"></li>
                        <input class="li_hei"  type="submit">
                    </ul>
                </form>
            </div>
            <!-- 修改信息 -->

            <!-- 注销用户 -->
            <div  class="" name="display" style="display: none;">
                <p><input type="submit" value="注销"></p>
            </div>
        </div>
    </div>
    </form>
        <!-- 底部标签 -->
        <div class="button">
            <a href="http://beian.miit.gov.cn/">豫ICP备18045222号</a>|<a href="http://www.miit.gov.cn/">中华人民共和国工业与信息化部</a>|
        </div>
        <!-- 底部标签 -->
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
    <script src="https://pv.sohu.com/cityjson?ie=utf-8"></script>
    <script src="http://ip.gae.zxinc.org/info.php?type=json"></script>
    <script src="/js/userjs.js"></script>
    <script src="/js/live2d.js"></script>
    <script src="/js/waifu-tips.js"></script>
    <script type="text/javascript">
        live2d_settings['modelId'] = 1;
        live2d_settings['modelTexturesId'] = 87;
        initModel("/json/waifu-tips.json")
    </script>
</body>
</html>