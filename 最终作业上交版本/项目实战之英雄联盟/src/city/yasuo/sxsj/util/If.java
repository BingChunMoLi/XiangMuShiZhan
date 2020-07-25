package city.yasuo.sxsj.util;

import java.util.regex.Pattern;

/**
 * @ProjectName: [BiYeSheJi]
 * @Package: [city.yasuo.sxsj.util]
 * @ClassName: [冰彦糖]
 * @Description: [正则判断]
 * @Author: [冰彦糖]
 * @CreateDate: [2019.12.13 22.52]
 * @UpdateUser: [冰彦糖]
 * @UpdateDate: [2019.12.13 22.52]
 * @UpdateRemark: [说明本次修改内容]
 */
public class If {
    /**
     * @param regex 正则表达是字符串
     * @param Str   验证字符串
     * @return  相同为turn
     */
    public static boolean check(String regex,String Str) {
        return Pattern.matches(regex, Str);
    }
}