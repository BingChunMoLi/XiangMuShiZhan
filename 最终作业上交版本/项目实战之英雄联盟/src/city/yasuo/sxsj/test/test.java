package city.yasuo.sxsj.test;

import city.yasuo.sxsj.util.SHA1;
import city.yasuo.sxsj.util.search_user;

/**
 * @ProjectName: [BiYeShiXun]
 * @Package: [city.yasuo.sxsj.test.test.java]
 * @ClassName: [test]
 * @Description: [一句话描述该类的功能]
 * @Author: [Bingyantang]
 * @CreateDate: [2019.12.8;09:09 ]
 * @UpdateUser: [Bingyantang]
 * @UpdateDate: [2019.12.8;09:09 ]
 * @UpdateRemark: [说明本次修改内容]
 */
public class test {
    public static void main(String[] args) {
        System.out.println(SHA1.encodePassword("password"));
    }
}
