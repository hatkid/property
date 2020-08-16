package com.zyjk.web.controller.property;

import java.util.List;

import com.zyjk.common.utils.DateUtils;
import com.zyjk.framework.util.ShiroUtils;
import com.zyjk.system.domain.BusinessData;
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
import com.zyjk.system.domain.EssentialInformation;
import com.zyjk.system.service.IEssentialInformationService;
import com.zyjk.common.core.controller.BaseController;
import com.zyjk.common.core.domain.AjaxResult;
import com.zyjk.common.utils.poi.ExcelUtil;
import com.zyjk.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author lvzhi
 * @date 2020-07-31
 */
@Controller
@RequestMapping("/system/information")
public class EssentialInformationController extends BaseController
{
    private String prefix = "system/information";

    @Autowired
    private IEssentialInformationService essentialInformationService;

    @RequiresPermissions("system:information:view")
    @GetMapping()
    public String information()
    {
        return prefix + "/information";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:information:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(EssentialInformation essentialInformation)
    {
        startPage();
        List<EssentialInformation> list = essentialInformationService.selectEssentialInformationList(essentialInformation);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:information:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(EssentialInformation essentialInformation)
    {
        List<EssentialInformation> list = essentialInformationService.selectEssentialInformationList(essentialInformation);
        ExcelUtil<EssentialInformation> util = new ExcelUtil<EssentialInformation>(EssentialInformation.class);
        return util.exportExcel(list, "information");
    }

    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存【请填写功能名称】
     */
    @RequiresPermissions("system:information:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(EssentialInformation essentialInformation)
    {
        essentialInformation.setCreateId(ShiroUtils.getUserId());
        essentialInformation.setCreateTime(DateUtils.getNowDate());
        if (-1 == essentialInformationService.insertEssentialInformation(essentialInformation)) {
            return AjaxResult.error("公司名称已经存在");
        } else {
            return AjaxResult.success();
        }
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        EssentialInformation essentialInformation = essentialInformationService.selectEssentialInformationById(id);
        mmap.put("essentialInformation", essentialInformation);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:information:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(EssentialInformation essentialInformation)
    {
        if (-1 == essentialInformationService.updateEssentialInformation(essentialInformation)) {
            return AjaxResult.error("公司名称已经存在");
        } else {
            return AjaxResult.success();
        }
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:information:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(essentialInformationService.deleteEssentialInformationByIds(ids));
    }

    /**
     * 删除【请填写功能名称】
     */
    @GetMapping( "/getBusinessDateLevel/{level}/{id}")
    @ResponseBody
    public List<BusinessData> getBusinessDateLevel(@PathVariable("level") Integer level, @PathVariable("id") Integer id)
    {
        return essentialInformationService.getBusinessDateLevel(id, level);
    }

}
