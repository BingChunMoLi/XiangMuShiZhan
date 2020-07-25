package city.yasuo.sxsj.login;

import city.yasuo.sxsj.dao.Link;
import city.yasuo.sxsj.util.AddUser;
import city.yasuo.sxsj.util.If;
import city.yasuo.sxsj.util.search_user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @ProjectName: [${project_name}]
 * @Package: [${package_name}.${file_name}]
 * @ClassName: [${type_name}]
 * @Description: [一句话描述该类的功能]
 * @Author: [${user}]
 * @CreateDate: [${date} ${time}]
 * @UpdateUser: [${user}]
 * @UpdateDate: [${date} ${time}]
 * @UpdateRemark: [说明本次修改内容]
 */
@WebServlet(name = "zhuce",urlPatterns = "/zhuce")
public class zhuce extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        if (!user_rex){
            out.print("用户名不符合规范");
        }else{
            if (!pwd_rex){
                out.print("密码不符合规范");
            }else{
                out.println("密码符合规范进入");
                if (name == true) {
                    out.print("name!=true");
                    //没有同名账户，注册
                    //增加 该用户名及账户
                    System.out.println("添加开始");
                    String xiaoxi = AddUser.AddUser((Statement)arry.get(0),username,password);
//                    out.print(xiaoxi);
                    out.print("注册成功");
                } else {
                    out.println(username);
                    out.print("name:"+name);
                    out.print("用户名已存在");
                }
            }
        }
        sql.closs((Statement)arry.get(0), (Connection)arry.get(1));                         //关闭数据库连接
    }
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print("请重新提交注册");
    }
}
