package com.zyjk.web.controller.system;

import java.io.*;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zyjk.common.config.Global;
import com.zyjk.system.domain.Contribution;
import com.zyjk.system.domain.EssentialInformation;
import com.zyjk.system.domain.SeniorManagement;
import com.zyjk.system.service.IContributionService;
import com.zyjk.system.service.IEssentialInformationService;;
import com.zyjk.system.service.ISeniorManagementService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.jxls.expression.JexlExpressionEvaluator;
import org.jxls.transform.Transformer;
import org.jxls.util.JxlsHelper;
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

    @Autowired
    private ISeniorManagementService seniorManagementService;

    @Autowired
    private IContributionService contributionService;

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
        // 查询合规目录信息
        Catalog catalog = catalogService.selectCatalogById(id);
        // 查询基本信息
        EssentialInformation essentialInformation = essentialInformationService.selectEssentialInformationById(catalog.getInfoId());
        // 查询高管信息
        SeniorManagement seniorManagement = new SeniorManagement();
        seniorManagement.setInfoId(catalog.getInfoId());
        List<SeniorManagement> seniorManagementList = seniorManagementService.selectSeniorManagementList(seniorManagement);
        // 出资情况
        Contribution contribution = new Contribution();
        contribution.setInfoId(catalog.getInfoId());
        List<Contribution> contributionList = contributionService.selectContributionList(contribution);
        // 计算实缴资本总和
        BigDecimal capitalPaidTotal = new BigDecimal("0.00");
        for (Contribution con : contributionList) {
            capitalPaidTotal = capitalPaidTotal.add(con.getCapitalPaid());
        }
        // 计算认缴资本总和
        BigDecimal capitalSubscribedTotal = new BigDecimal("0.00");
        for (Contribution con : contributionList) {
            capitalSubscribedTotal = capitalSubscribedTotal.add(con.getCapitalSubscribed());
        }
        // 股权比例总和
        BigDecimal equityRatioTotal = new BigDecimal("0.00");
        for (Contribution con : contributionList) {
            equityRatioTotal = equityRatioTotal.add(con.getEquityRatio());
        }


        try {
//            InputStream in = this.getClass().getClassLoader().getResourceAsStream("/templates/exceltemplate/info.xls");   //得到文档的路径
            InputStream in = new FileInputStream("E:\\code\\property\\property-admin\\src\\main\\resources\\templates\\exceltemplate\\info.xls");
            FileOutputStream out = new FileOutputStream(Global.getDownloadPath() + "info.xls");
            org.jxls.common.Context context = new org.jxls.common.Context();
            //将列表参数放入context中
            // 基本信息
            context.putVar("essentialInformation", essentialInformation);
            // 合规目录信息
            context.putVar("catalog", catalog);
            // 高管信息
            context.putVar("seniorManagementList", seniorManagementList);
            // 出资信息
            context.putVar("contributionList", contributionList);
            // 实缴资本总和
            context.putVar("capitalPaidTotal", capitalPaidTotal);
            // 认缴资本总和
            context.putVar("capitalSubscribedTotal", capitalSubscribedTotal);
            // 股权比例总和
            context.putVar("equityRatioTotal", equityRatioTotal);
            JxlsHelper jxlsHelper = JxlsHelper.getInstance();
            Transformer transformer = jxlsHelper.createTransformer(in, out);
            JexlExpressionEvaluator evaluator = (JexlExpressionEvaluator) transformer.getTransformationConfig()
                    .getExpressionEvaluator();
//		evaluator.getJexlEngine().setFunctions(funcs);
            jxlsHelper.processTemplate(context, transformer);

        } catch (Exception e) {
            e.printStackTrace();
            return AjaxResult.error("异常，稍后再尝试.");
        } finally {

        }
        return AjaxResult.success("info.xls");
    }

}
