package city.yasuo.sxsj.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @ProjectName: [BiYeShiXun]
 * @Package: [city.yasuo.util.adduser.AddUser]
 * @ClassName: [冰彦糖]
 * @Description: [一句话描述该类的功能]
 * @Author: [冰彦糖]
 * @CreateDate: [12.17 09:46]
 * @UpdateUser: [冰彦糖]
 * @UpdateDate: [12.17 09:46]
 * @UpdateRemark: [说明本次修改内容]
 */
public class AddUser {
    public static String AddUser(Statement stmt, String username, String password){
        password = SHA1.encodePassword(password);
        String add = "INSERT INTO users VALUES('"+ username +"','"+ password +"')";
        try {
            stmt.executeQuery(add);
            return  "添加成功";
        } catch (SQLException e) {
            e.printStackTrace();
            return  "添加失败";
        }
    }
}
// 创建表
//            System.out.println("开始创建表");
//            String query = "create table TABLE1(ID NCHAR(2),NAME NCHAR(10))";// 创建表SQL语句
//            stmt.executeUpdate(query);// 执行SQL命令对象
//            System.out.println("表创建成功");

// 输入数据
//            System.out.println("开始插入数据");
//            String a1 = "INSERT INTO users VALUES('12','233')";// 插入数据SQL语句
//            stmt.executeUpdate(a1);// 执行SQL命令对象
//            stmt.executeUpdate(a2);
//            stmt.executeUpdate(a3);
//        System.out.println("插入数据成功");