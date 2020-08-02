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
import com.zyjk.system.domain.JudicialFreeze;
import com.zyjk.system.service.IJudicialFreezeService;
import com.zyjk.common.core.controller.BaseController;
import com.zyjk.common.core.domain.AjaxResult;
import com.zyjk.common.utils.poi.ExcelUtil;
import com.zyjk.common.core.page.TableDataInfo;

/**
 * 司法冻结情况Controller
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Controller
@RequestMapping("/system/freeze")
public class JudicialFreezeController extends BaseController
{
    private String prefix = "system/freeze";

    @Autowired
    private IJudicialFreezeService judicialFreezeService;

    @RequiresPermissions("system:freeze:view")
    @GetMapping()
    public String freeze()
    {
        return prefix + "/freeze";
    }

    /**
     * 查询司法冻结情况列表
     */
    @RequiresPermissions("system:freeze:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JudicialFreeze judicialFreeze)
    {
        startPage();
        List<JudicialFreeze> list = judicialFreezeService.selectJudicialFreezeList(judicialFreeze);
        return getDataTable(list);
    }

    /**
     * 导出司法冻结情况列表
     */
    @RequiresPermissions("system:freeze:export")
    @Log(title = "司法冻结情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(JudicialFreeze judicialFreeze)
    {
        List<JudicialFreeze> list = judicialFreezeService.selectJudicialFreezeList(judicialFreeze);
        ExcelUtil<JudicialFreeze> util = new ExcelUtil<JudicialFreeze>(JudicialFreeze.class);
        return util.exportExcel(list, "freeze");
    }

    /**
     * 新增司法冻结情况
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存司法冻结情况
     */
    @RequiresPermissions("system:freeze:add")
    @Log(title = "司法冻结情况", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(JudicialFreeze judicialFreeze)
    {
        judicialFreeze.setCreateId(ShiroUtils.getUserId());
        judicialFreeze.setCreateTime(new Date());
        return toAjax(judicialFreezeService.insertJudicialFreeze(judicialFreeze));
    }

    /**
     * 修改司法冻结情况
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        JudicialFreeze judicialFreeze = judicialFreezeService.selectJudicialFreezeById(id);
        mmap.put("judicialFreeze", judicialFreeze);
        return prefix + "/edit";
    }

    /**
     * 修改保存司法冻结情况
     */
    @RequiresPermissions("system:freeze:edit")
    @Log(title = "司法冻结情况", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(JudicialFreeze judicialFreeze)
    {
        return toAjax(judicialFreezeService.updateJudicialFreeze(judicialFreeze));
    }

    /**
     * 删除司法冻结情况
     */
    @RequiresPermissions("system:freeze:remove")
    @Log(title = "司法冻结情况", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(judicialFreezeService.deleteJudicialFreezeByIds(ids));
    }
}
