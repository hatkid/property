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
import com.zyjk.system.domain.Contribution;
import com.zyjk.system.service.IContributionService;
import com.zyjk.common.core.controller.BaseController;
import com.zyjk.common.core.domain.AjaxResult;
import com.zyjk.common.utils.poi.ExcelUtil;
import com.zyjk.common.core.page.TableDataInfo;

/**
 * 出资情况Controller
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Controller
@RequestMapping("/system/contribution")
public class ContributionController extends BaseController
{
    private String prefix = "system/contribution";

    @Autowired
    private IContributionService contributionService;

    @RequiresPermissions("system:contribution:view")
    @GetMapping()
    public String contribution()
    {
        return prefix + "/contribution";
    }

    /**
     * 查询出资情况列表
     */
    @RequiresPermissions("system:contribution:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Contribution contribution)
    {
        startPage();
        List<Contribution> list = contributionService.selectContributionList(contribution);
        return getDataTable(list);
    }

    /**
     * 导出出资情况列表
     */
    @RequiresPermissions("system:contribution:export")
    @Log(title = "出资情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Contribution contribution)
    {
        List<Contribution> list = contributionService.selectContributionList(contribution);
        ExcelUtil<Contribution> util = new ExcelUtil<Contribution>(Contribution.class);
        return util.exportExcel(list, "contribution");
    }

    /**
     * 新增出资情况
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存出资情况
     */
    @RequiresPermissions("system:contribution:add")
    @Log(title = "出资情况", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Contribution contribution)
    {
        contribution.setCreateTime(new Date());
        contribution.setCreateId(ShiroUtils.getUserId());
        if (-1 == contributionService.insertContribution(contribution)) {
            return AjaxResult.error("出资方名称已经存在");
        } else {
            return AjaxResult.success();
        }
    }

    /**
     * 修改出资情况
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Contribution contribution = contributionService.selectContributionById(id);
        mmap.put("contribution", contribution);
        return prefix + "/edit";
    }

    /**
     * 修改保存出资情况
     */
    @RequiresPermissions("system:contribution:edit")
    @Log(title = "出资情况", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Contribution contribution)
    {
        if (-1 == contributionService.updateContribution(contribution)) {
            return AjaxResult.error("出资方名称已经存在");
        } else {
            return AjaxResult.success();
        }
    }

    /**
     * 删除出资情况
     */
    @RequiresPermissions("system:contribution:remove")
    @Log(title = "出资情况", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(contributionService.deleteContributionByIds(ids));
    }
}
