package city.yasuo.sxsj.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @ProjectName: [BiYeShiXun]
 * @Package: [city.yasuo.sxsj.util]
 * @ClassName: [冰彦糖]
 * @Description: [查询英雄]
 * @Author: [冰彦糖]
 * @CreateDate: [12.17 16:38]
 * @UpdateUser: [冰彦糖]
 * @UpdateDate: [12.17 16:38]
 * @UpdateRemark: [说明本次修改内容]
 */
public class Search_Hero {
    public static String search_hero_ID(Statement stmt,String Hero_title){
        ResultSet rs = null;
        String Hero_ID = null;
        try {
            rs = stmt.executeQuery("select * from Hero where title = '" + Hero_title +"'");
            while(rs.next()) {
                Hero_ID = rs.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Hero_ID;
    }
    public static String search_hero_name(Statement stmt,String Hero_title){
        ResultSet rs = null;
        String Hero_name = null;
        try {
            rs = stmt.executeQuery("select * from Hero where title = '" + Hero_title +"'");
            while(rs.next()) {
                Hero_name = rs.getString(2);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Hero_name;
    }
    public static String search_hero_title(Statement stmt,String Hero_title){
        ResultSet rs = null;
        String Hero_title1 = null;
        try {
            rs = stmt.executeQuery("select * from Hero where title = '" + Hero_title +"'");
            while(rs.next()) {
                Hero_title1 = rs.getString(3);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Hero_title1;
    }
    public static String search_hero_type1(Statement stmt,String Hero_title){
        ResultSet rs = null;
        String Hero_type1 = null;
        try {
            rs = stmt.executeQuery("select * from Hero where title = '" + Hero_title +"'");
            while(rs.next()) {
                Hero_type1 = rs.getString(4);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Hero_type1;
    }
    public static String search_hero_type2(Statement stmt,String Hero_title){
        ResultSet rs = null;
        String Hero_type2 = null;
        try {
            rs = stmt.executeQuery("select * from Hero where title = '" + Hero_title +"'");
            while(rs.next()) {
                Hero_type2 = rs.getString(5);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Hero_type2;
    }

    /**
     * @param stmt
     * @param Hero_title
     * @return 难易程度
     */
    public static String search_hero_difficulty(Statement stmt,String Hero_title){
        ResultSet rs = null;
        String difficulty = null;
        try {
            rs = stmt.executeQuery("select * from Hero where title = '" + Hero_title +"'");
            while(rs.next()) {
                difficulty = rs.getString(6);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return difficulty;
    }

    /**
     * @param stmt
     * @param Hero_title
     * @return 图片路径
     */
    public static String search_hero_img_code(Statement stmt,String Hero_title){
        ResultSet rs = null;
        String img_code = null;
        try {
            rs = stmt.executeQuery("select * from Hero where title = '" + Hero_title +"'");
            while(rs.next()) {
                img_code = rs.getString(7);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return img_code;
    }

    /**
     * @param stmt
     * @param Hero_title
     * @return 英雄介绍
     */
    public static String search_hero_introduce(Statement stmt,String Hero_title){
        ResultSet rs = null;
        String introduce = null;
        try {
            rs = stmt.executeQuery("select * from Hero where title = '" + Hero_title +"'");
            while(rs.next()) {
                introduce = rs.getString(8);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return introduce;
    }
    public static String search_hero_video(Statement stmt,String Hero_title){
        ResultSet rs = null;
        String video = null;
        try {
            rs = stmt.executeQuery("select * from Hero where title = '" + Hero_title +"'");
            while(rs.next()) {
                video = rs.getString(9);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return video;
    }
}
