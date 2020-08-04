package com.zyjk.web.controller.system;

import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zyjk.common.config.Global;
import com.zyjk.system.domain.EssentialInformation;
import com.zyjk.system.service.IEssentialInformationService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.aspectj.weaver.loadtime.Aj;
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
import com.zyjk.system.domain.Catalog;
import com.zyjk.system.service.ICatalogService;
import com.zyjk.common.core.controller.BaseController;
import com.zyjk.common.core.domain.AjaxResult;
import com.zyjk.common.utils.poi.ExcelUtil;
import com.zyjk.common.core.page.TableDataInfo;

/**
 * 占有登记Controller
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Controller
@RequestMapping("/system/catalog")
public class CatalogController extends BaseController
{
    private String prefix = "system/catalog";

    @Autowired
    private ICatalogService catalogService;

    @Autowired
    private IEssentialInformationService essentialInformationService;

    @RequiresPermissions("system:catalog:view")
    @GetMapping()
    public String catalog()
    {
        return prefix + "/catalog";
    }

    /**
     * 查询占有登记列表
     */
    @RequiresPermissions("system:catalog:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Catalog catalog)
    {
        startPage();
        List<Catalog> list = catalogService.selectCatalogList(catalog);
        return getDataTable(list);
    }

    /**
     * 导出占有登记列表
     */
    @RequiresPermissions("system:catalog:export")
    @Log(title = "占有登记", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Catalog catalog)
    {
        List<Catalog> list = catalogService.selectCatalogList(catalog);
        ExcelUtil<Catalog> util = new ExcelUtil<Catalog>(Catalog.class);
        return util.exportExcel(list, "catalog");
    }

    /**
     * 新增占有登记
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存占有登记
     */
    @RequiresPermissions("system:catalog:add")
    @Log(title = "占有登记", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Catalog catalog)
    {
        return toAjax(catalogService.insertCatalog(catalog));
    }

    /**
     * 修改占有登记
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Catalog catalog = catalogService.selectCatalogById(id);
        mmap.put("catalog", catalog);
        return prefix + "/edit";
    }

    /**
     * 修改保存占有登记
     */
    @RequiresPermissions("system:catalog:edit")
    @Log(title = "占有登记", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Catalog catalog)
    {
        return toAjax(catalogService.updateCatalog(catalog));
    }

    /**
     * 删除占有登记
     */
    @RequiresPermissions("system:catalog:remove")
    @Log(title = "占有登记", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(catalogService.deleteCatalogByIds(ids));
    }

    /**
     * 按所需模板方式导出
     */
    @RequiresPermissions("system:catalog:export")
    @Log(title = "占有登记", businessType = BusinessType.EXPORT)
    @PostMapping("/exportTemplate")
    @ResponseBody
    public AjaxResult exportTemplate(Long id)
    {
        // 根据id查询信息
        Catalog catalog = catalogService.selectCatalogById(id);
        EssentialInformation essentialInformation = essentialInformationService.selectEssentialInformationById(catalog.getInfoId());
        try {
            Configuration configuration = new Configuration();
            configuration.setDefaultEncoding("utf-8");
            configuration.setClassForTemplateLoading(this.getClass(), "/templates/exceltemplate");
            Template template = configuration.getTemplate("info.ftl");
            Map<String, Object> dataMap = new HashMap<>();
            dataMap.put("essentialInformation", essentialInformation);
            dataMap.put("catalog", catalog);
            File outFile = new File(Global.getDownloadPath() + "/info.xls");
            FileWriter out = new FileWriter(outFile);
            template.process(dataMap,out);
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxResult.error("异常，稍后再尝试.");
        } finally {

        }
        return AjaxResult.success("info.xls");
    }

}
