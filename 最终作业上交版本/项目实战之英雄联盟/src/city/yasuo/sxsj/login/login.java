package city.yasuo.sxsj.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import city.yasuo.sxsj.dao.Link;
import city.yasuo.sxsj.util.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;

//@javax.servlet.annotation.WebServlet(name = "login",urlPatterns = "/login")
@WebServlet(name = "login",urlPatterns = "/login")
public class login extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        boolean name,pwd,user_rex,pwd_rex;
        String username = (String) request.getParameter("username");                    //拿到输入用户名
        String password = (String) request.getParameter("password");                    //拿到输入密码
        user_rex = If.check(".{8,20}",username);                                          //正则判断用户名// 规范
        pwd_rex = If.check("[a-zA-Z]+([0-9a-zA-Z]){5,11}",password);                      //正则判断密码规范
        Link sql = new Link();                                                              //实例化对象Link
        List arry = new ArrayList();                                                        //声明集合
        sql.LinkDrive();                                                                    //加载驱动
        arry = sql.Link("148.70.17.87","1433","LOL");                   //连接数据库
        search_user User = new search_user();                                               //实例化User对象
        name = User.search_user_ifnull((Statement)arry.get(0),username);                    //user是否为空
        pwd = User.Search_user_password((Statement)arry.get(0),username,password);          //判断密码
        sql.closs((Statement)arry.get(0), (Connection)arry.get(1));                         //关闭数据库连接
        if (!user_rex){
            out.print("用户名不符合规范");
        }else{
            if (!pwd_rex){
                out.print("密码不符合规范");
            }else{
                if (name != true) {
                    out.print("<br>");
                    if (pwd == true) {
                        String password_hax = SHA1.encodePassword(password);
                        Cookie cookie_username = new Cookie("username",username);
                        Cookie cookie_password = new Cookie("password",password_hax);
                        cookie_username.setMaxAge(60*60);
                        cookie_password.setMaxAge(60*60);
                        cookie_username.setPath("/");
                        cookie_password.setPath("/");
                        response.addCookie(cookie_username);
                        response.addCookie(cookie_password);
                        request.getRequestDispatcher("/page/User.jsp").forward(request,response);
                    } else {
                        out.print("密码错误");
                    }
                } else {
                    out.print("用户名不存在");
                }
            }
        }
    }
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print("请重新提交登陆");
    }
}
