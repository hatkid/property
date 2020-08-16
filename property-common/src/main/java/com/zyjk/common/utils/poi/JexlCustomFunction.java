package com.zyjk.common.utils.poi;

import org.springframework.util.StringUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author: lvzhi
 * @Date: 2020-8-7 8:46
 * @Version: 1.0
 * @Description: jxls自定义函数
 */
public class JexlCustomFunction {

    // 用于jxls的foreach循环计数
    private Map<String,Integer> countMap = new HashMap<>();

    /**
     * @param var: 自定义参数
     * @return java.lang.Integer
     * @Description: foreach的时候使用，达到计数的功能
     */
    public Integer count(String var){

        if (var == null) {
            return 0;
        }
        if (countMap.containsKey(var)) {
            Integer t = countMap.get(var);
            t += 1;
            countMap.replace(var,t);
            return t;
        } else {
            countMap.put(var,1);
        }
        return 1;
    }

    /**
     * @param date:
     * @param fmt:
     * @return java.lang.String
     * @Description: 时间格式化
     */
    public String dateFmt(Date date, String fmt) {

        if (date == null) {
            return "";
        }
        try {
            SimpleDateFormat dateFmt = new SimpleDateFormat(fmt);
            return dateFmt.format(date);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    /**
     * @param desc:
     * @return java.lang.String
     * @Description: 根据传入的字段判断“有”“无”，根据需求描述，当有描述内容的时候，则为无；否则为有
     */
    public String exists(String desc) {
        if (StringUtils.isEmpty(desc)) {
            return "有";
        } else {
            return "无";
        }
    }

    /**
     * @param desc:
     * @return java.lang.String
     * @Description: 根据传入的字段判断“是”“否”，
     */
    public String yesOrNo(Integer desc) {
        if (0 == desc) {
            return "是";
        } else {
            return "否";
        }
    }

    /**
     * @param desc:
     * @return java.lang.String
     * @Description: 根据传入的字段判断“是”“否”，
     */
    public String sex(Integer desc) {
        if (0 == desc) {
            return "女";
        } else {
            return "男";
        }
    }

}
