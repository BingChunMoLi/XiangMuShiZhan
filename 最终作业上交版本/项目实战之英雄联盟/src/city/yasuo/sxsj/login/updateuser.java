package city.yasuo.sxsj.login;

import city.yasuo.sxsj.dao.Link;
import city.yasuo.sxsj.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
 * @Description: [updateuser]
 * @Author: [${user}]
 * @CreateDate: [${date} ${time}]
 * @UpdateUser: [${user}]
 * @UpdateDate: [${date} ${time}]
 * @UpdateRemark: [说明本次修改内容]
 */
@WebServlet(name = "updateuser",urlPatterns = "/updateuser")
public class updateuser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Link sql = new Link();                                                              //实例化对象Link
        List arry = new ArrayList();                                                        //声明集合
        sql.LinkDrive();                                                                    //加载驱动
        arry = sql.Link("148.70.17.87","1433","LOL");                   //连接数据库
        String name = (String) request.getParameter("name");
        String sex = (String) request.getParameter("sex");
        String age = (String) request.getParameter("age");
        String from = (String) request.getParameter("from");
        String live = (String) request.getParameter("live");
        search_user search_user = new search_user();
        Cookie cookie[] = request.getCookies();
        String username = null;
        for (int i = 0;i < cookie.length;i++){
            Cookie temp = cookie[i];
            if(temp.getName().equals("username")){
                username = temp.getValue();
            }
        }
        search_user.chick_user_name((Statement)arry.get(0),name,username);

        sql.closs((Statement)arry.get(0), (Connection)arry.get(1));                         //关闭数据库连接
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print("erro");
    }
}
