package city.yasuo.sxsj.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @ProjectName: [BingYeShiXun]
 * @Package: [city.yasuo.bysx.util.search_skill]
 * @ClassName: [冰彦糖]
 * @Description: [查询技能]
 * @Author: [冰彦糖]
 * @CreateDate: [2019.12.17 23：38]
 * @UpdateUser: [冰彦糖]
 * @UpdateDate: [2019.12.17 23：38]
 * @UpdateRemark: [说明本次修改内容]
 */
public class search_skill {
    public static String search_skill_name(Statement stmt, String Hero_title,String QWER){
        ResultSet rs = null;
        String kill_name = null;
        try {
            rs = stmt.executeQuery("select Skill.name from Skill INNER JOIN Hero ON Skill.hero_id=Hero.hero_id where Skill.hero_id=(select hero_id from Hero where title='"+ Hero_title +"') AND Skill.place like '" + QWER + "'" );
            while(rs.next()) {
                kill_name = rs.getString("name");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return kill_name;
    }
    public static String search_skill_place(Statement stmt, String Hero_title,String QWER){
        ResultSet rs = null;
        String kill_place = null;
        try {
            rs = stmt.executeQuery("select Skill.place from Skill INNER JOIN Hero ON Skill.hero_id=Hero.hero_id where Skill.hero_id=(select hero_id from Hero where title='"+ Hero_title +"') AND Skill.place like '" + QWER + "'" );
            while(rs.next()) {
                kill_place = rs.getString("place");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return kill_place;
    }
    public static String search_skill_description(Statement stmt, String Hero_title,String QWER){
        ResultSet rs = null;
        String kill_description = null;
        try {
            rs = stmt.executeQuery("select Skill.description from Skill INNER JOIN Hero ON Skill.hero_id=Hero.hero_id where Skill.hero_id=(select hero_id from Hero where title='"+ Hero_title +"') AND Skill.place like '" + QWER + "'" );
           while(rs.next()) {
                kill_description = rs.getString("description");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return kill_description;
    }
    public static String search_skill_imgcode(Statement stmt, String Hero_title,String QWER){
        ResultSet rs = null;
        String skill_imgcode = null;
        try {
            rs = stmt.executeQuery("select Skill.img_code from Skill INNER JOIN Hero ON Skill.hero_id=Hero.hero_id where Skill.hero_id=(select hero_id from Hero where title='"+ Hero_title +"') AND Skill.place like '" + QWER + "'" );
            while(rs.next()) {
                skill_imgcode = rs.getString("img_code");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return skill_imgcode;
    }
}
