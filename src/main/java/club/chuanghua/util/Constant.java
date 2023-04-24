package club.chuanghua.util;

import java.util.HashMap;

public class Constant {

    //话题分类的常量
    public static final HashMap<String, String> TYPE_MAP;

    static {
        TYPE_MAP = new HashMap<String, String>();
        TYPE_MAP.put("科学", "science");
        TYPE_MAP.put("音乐", "music");
        TYPE_MAP.put("舞蹈", "dance");
        TYPE_MAP.put("卡通", "cartoon");
        TYPE_MAP.put("运动", "sport");
    }


}
