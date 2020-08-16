package com.zyjk.system.domain;

/**
 * @Author: lvzhi
 * @Date: 2020-8-11 9:48
 * @Version: 1.0
 * @Description:
 */

import java.util.ArrayList;
import java.util.List;

public class BusinessData
{
    private static final long serialVersionUID = 1L;


    private Integer id;

    private String name;

    private boolean open = false;

    List<BusinessData> children = new ArrayList<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isOpen() {
        return open;
    }

    public void setOpen(boolean open) {
        this.open = open;
    }

    public List<BusinessData> getChildren() {
        return children;
    }

    public void setChildren(List<BusinessData> children) {
        this.children = children;
    }
}