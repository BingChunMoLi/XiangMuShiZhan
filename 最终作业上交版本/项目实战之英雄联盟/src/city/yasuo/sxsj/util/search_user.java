package city.yasuo.sxsj.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;

/**
 * @ProjectName: [BiYeShiXun]
 * @Package: [city.yasuo.sxsj.util]
 * @ClassName: [Bingyantang]
 * @Description: [查询用户名称及密码]
 * @Author: [Bingyantang]
 * @CreateDate: [2019.12.8 11.36]
 * @UpdateUser: [Bingyantang]
 * @UpdateDate: [2019.12.8 11.36]
 * @UpdateRemark: [说明本次修改内容]
 */
public class search_user {
    /**
     * @param stmt  Statement
     * @param username  用户名
     * @return  用户名为空true
     */
    public boolean search_user_ifnull(Statement stmt,String username){
        // 读取数据
        System.out.println("开始读取数据");
        boolean bool = false;
        try {
            ResultSet rs = null;
            String temp = null;
            rs = stmt.executeQuery("select * from users where name = '" + username +"'");
            while (rs.next()){
                temp = rs.getString(3);
            }
            if (temp == null){
                bool = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bool;
    }

    /**
     *
     * @param stmt  Statement
     * @param username 用户名
     * @param password  密码
     * @return  密码正确ture
     */
    public boolean Search_user_password(Statement stmt,String username,String password){
        boolean bool = false;
        boolean user = false;
        try {
            ResultSet rs = null;
            String pwd = null;
            rs = stmt.executeQuery("select * from users where name = '" + username +"'");
            while(rs.next()){
                 pwd = rs.getString(3);
            }
            if ((SHA1.encodePassword(password)).equals(pwd)){
                System.out.println("登陆成功");
                bool = true;
            }else{
                System.out.println("密码错误");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bool;
    }
    public String Search_user_name(Statement stmt,String username){
        ResultSet rs = null;
        String user_name = null;
        try {
            rs = stmt.executeQuery("select * from users,usert where name = '" + username +"' and usert.num=users.num");
            while(rs.next()){
               user_name  = rs.getString(5);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user_name;
    }
    public String Search_user_sex(Statement stmt,String username){
        ResultSet rs = null;
        String user_sex = null;
        try {
            rs = stmt.executeQuery("select * from users,usert where name = '" + username +"' and usert.num=users.num");
            while(rs.next()){
                user_sex  = rs.getString(6);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user_sex;
    }
    public String Search_user_age(Statement stmt,String username){
        ResultSet rs = null;
        String user_age = null;
        try {
            rs = stmt.executeQuery("select * from users,usert where name = '" + username +"' and usert.num=users.num");
            while(rs.next()){
                user_age = rs.getString(7);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user_age;
    }
    public String Search_user_from(Statement stmt,String username){
        ResultSet rs = null;
        String user_from = null;
        try {
            rs = stmt.executeQuery("select * from users,usert where name = '" + username +"' and usert.num=users.num");
            while(rs.next()){
                user_from = rs.getString(8);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user_from;
    }
    public String Search_user_live(Statement stmt,String username){
        ResultSet rs = null;
        String user_live = null;
        try {
            rs = stmt.executeQuery("select * from users,usert where name = '" + username +"' and usert.num=users.num");
            while(rs.next()){
                user_live = rs.getString(9);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user_live;
    }
    public String Search_user_uid(Statement stmt,String username){
        ResultSet rs = null;
        String user_uid = null;
        try {
            rs = stmt.executeQuery("select * from users,usert where name = '" + username +"' and usert.num=users.num ");
            while(rs.next()){
                user_uid = rs.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user_uid;
    }
    public void chick_user_name(Statement stmt,String username,String new_name){
        ResultSet rs = null;
        try {
            rs = stmt.executeQuery("update user1 set people_name='" + new_name +"' where name = '" + username +"'");
//            while(rs.next()){
//                chick_user_name = rs.getString(4);
//            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void chick_user_(Statement stmt,String username,String new_name){
        ResultSet rs = null;
        try {
            rs = stmt.executeQuery("update usert set people_name='" + new_name +"' where (select num from Users where name = " + username + "  )=usert.num and people_name = 'darker'");
//            while(rs.next()){
//                chick_user_name = rs.getString(4);
//            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void del_user(Statement stmt,String username){
        try {
            int rs = stmt.executeUpdate("delete from Users where name='" + username +"'");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

