package com.zyjk.common.utils.poi;

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

}
