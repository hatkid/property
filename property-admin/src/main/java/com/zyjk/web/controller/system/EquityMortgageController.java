package com.zyjk.web.controller.system;

import java.util.Date;
import java.util.List;

import com.zyjk.framework.util.ShiroUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.zyjk.common.annotation.Log;
import com.zyjk.common.enums.BusinessType;
import com.zyjk.system.domain.EquityMortgage;
import com.zyjk.system.service.IEquityMortgageService;
import com.zyjk.common.core.controller.BaseController;
import com.zyjk.common.core.domain.AjaxResult;
import com.zyjk.common.utils.poi.ExcelUtil;
import com.zyjk.common.core.page.TableDataInfo;

/**
 * 股权抵押Controller
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Controller
@RequestMapping("/system/mortgage")
public class EquityMortgageController extends BaseController
{
    private String prefix = "system/mortgage";

    @Autowired
    private IEquityMortgageService equityMortgageService;

    @RequiresPermissions("system:mortgage:view")
    @GetMapping()
    public String mortgage()
    {
        return prefix + "/mortgage";
    }

    /**
     * 查询股权抵押列表
     */
    @RequiresPermissions("system:mortgage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(EquityMortgage equityMortgage)
    {
        startPage();
        List<EquityMortgage> list = equityMortgageService.selectEquityMortgageList(equityMortgage);
        return getDataTable(list);
    }

    /**
     * 导出股权抵押列表
     */
    @RequiresPermissions("system:mortgage:export")
    @Log(title = "股权抵押", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(EquityMortgage equityMortgage)
    {
        List<EquityMortgage> list = equityMortgageService.selectEquityMortgageList(equityMortgage);
        ExcelUtil<EquityMortgage> util = new ExcelUtil<EquityMortgage>(EquityMortgage.class);
        return util.exportExcel(list, "mortgage");
    }

    /**
     * 新增股权抵押
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存股权抵押
     */
    @RequiresPermissions("system:mortgage:add")
    @Log(title = "股权抵押", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(EquityMortgage equityMortgage)
    {
        equityMortgage.setCreateId(ShiroUtils.getUserId());
        equityMortgage.setCreateTime(new Date());
        if (-1 == equityMortgageService.insertEquityMortgage(equityMortgage)) {
            return AjaxResult.error("抵质押机构名称已经存在");
        } else {
            return AjaxResult.success();
        }
    }

    /**
     * 修改股权抵押
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        EquityMortgage equityMortgage = equityMortgageService.selectEquityMortgageById(id);
        mmap.put("equityMortgage", equityMortgage);
        return prefix + "/edit";
    }

    /**
     * 修改保存股权抵押
     */
    @RequiresPermissions("system:mortgage:edit")
    @Log(title = "股权抵押", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(EquityMortgage equityMortgage)
    {
        if (-1 == equityMortgageService.updateEquityMortgage(equityMortgage)) {
            return AjaxResult.error("抵质押机构名称已经存在");
        } else {
            return AjaxResult.success();
        }
    }

    /**
     * 删除股权抵押
     */
    @RequiresPermissions("system:mortgage:remove")
    @Log(title = "股权抵押", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(equityMortgageService.deleteEquityMortgageByIds(ids));
    }
}
