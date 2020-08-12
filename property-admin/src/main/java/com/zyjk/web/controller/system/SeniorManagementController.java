package com.zyjk.web.controller.system;

import java.time.LocalDateTime;
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
import com.zyjk.system.domain.SeniorManagement;
import com.zyjk.system.service.ISeniorManagementService;
import com.zyjk.common.core.controller.BaseController;
import com.zyjk.common.core.domain.AjaxResult;
import com.zyjk.common.utils.poi.ExcelUtil;
import com.zyjk.common.core.page.TableDataInfo;

/**
 * 管理人员Controller
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Controller
@RequestMapping("/system/management")
public class SeniorManagementController extends BaseController
{
    private String prefix = "system/management";

    @Autowired
    private ISeniorManagementService seniorManagementService;

    @RequiresPermissions("system:management:view")
    @GetMapping()
    public String management()
    {
        return prefix + "/management";
    }

    /**
     * 查询管理人员列表
     */
    @RequiresPermissions("system:management:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SeniorManagement seniorManagement)
    {
        startPage();
        seniorManagement.setCreateTime(new Date());
        seniorManagement.setCreateId(ShiroUtils.getUserId());
        List<SeniorManagement> list = seniorManagementService.selectSeniorManagementList(seniorManagement);
        return getDataTable(list);
    }

    /**
     * 导出管理人员列表
     */
    @RequiresPermissions("system:management:export")
    @Log(title = "管理人员", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SeniorManagement seniorManagement)
    {
        List<SeniorManagement> list = seniorManagementService.selectSeniorManagementList(seniorManagement);
        ExcelUtil<SeniorManagement> util = new ExcelUtil<SeniorManagement>(SeniorManagement.class);
        return util.exportExcel(list, "management");
    }

    /**
     * 新增管理人员
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存管理人员
     */
    @RequiresPermissions("system:management:add")
    @Log(title = "管理人员", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SeniorManagement seniorManagement)
    {
        if (-1 == seniorManagementService.insertSeniorManagement(seniorManagement)) {
            return AjaxResult.error("姓名已经存在");
        } else {
            return AjaxResult.success();
        }
    }

    /**
     * 修改管理人员
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SeniorManagement seniorManagement = seniorManagementService.selectSeniorManagementById(id);
        mmap.put("seniorManagement", seniorManagement);
        return prefix + "/edit";
    }

    /**
     * 修改保存管理人员
     */
    @RequiresPermissions("system:management:edit")
    @Log(title = "管理人员", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SeniorManagement seniorManagement)
    {
        if (-1 == seniorManagementService.updateSeniorManagement(seniorManagement)) {
            return AjaxResult.error("姓名已经存在");
        } else {
            return AjaxResult.success();
        }
    }

    /**
     * 删除管理人员
     */
    @RequiresPermissions("system:management:remove")
    @Log(title = "管理人员", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(seniorManagementService.deleteSeniorManagementByIds(ids));
    }
}
