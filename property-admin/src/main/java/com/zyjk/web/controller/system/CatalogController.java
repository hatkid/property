package com.zyjk.web.controller.system;

import java.io.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zyjk.common.config.Global;
import com.zyjk.common.utils.poi.JexlCustomFunction;
import com.zyjk.framework.util.ShiroUtils;
import com.zyjk.system.domain.*;
import com.zyjk.system.service.*;
;
import org.apache.commons.jexl3.JexlBuilder;
import org.apache.commons.jexl3.JexlEngine;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.jxls.expression.JexlExpressionEvaluator;
import org.jxls.transform.Transformer;
import org.jxls.util.JxlsHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ResourceUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.zyjk.common.annotation.Log;
import com.zyjk.common.enums.BusinessType;
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

    @Autowired
    private IEquityMortgageService equityMortgageService;

    @Autowired
    private IJudicialFreezeService judicialFreezeService;

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
        catalog.setCreateTime(new Date());
        catalog.setCreateId(ShiroUtils.getUserId());
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
        // 第一个sheet页信息
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

        // 计算国家资本总和
        BigDecimal stateCapitalTotal = new BigDecimal("0.00");
        for (Contribution con : contributionList) {
            if (con.getCategory().equals("国家资本出资人"))
                stateCapitalTotal = stateCapitalTotal.add(con.getCapitalSubscribed());
        }

        // 计算国家出资总和
        BigDecimal stateInvestmentTotal = new BigDecimal("0.00");
        for (Contribution con : contributionList) {
            if (con.getCategory().equals("国有出资人"))
                stateInvestmentTotal = stateInvestmentTotal.add(con.getCapitalSubscribed());
        }

        // 计算国有绝对控股出资总和
        BigDecimal absoluteStateHoldingTotal = new BigDecimal("0.00");
        for (Contribution con : contributionList) {
            if (con.getCategory().equals("国有绝对控股出资人"))
                absoluteStateHoldingTotal = absoluteStateHoldingTotal.add(con.getCapitalSubscribed());
        }

        // 计算国有实际控制出资总和
        BigDecimal actualControlInvestmentTotal = new BigDecimal("0.00");
        for (Contribution con : contributionList) {
            if (con.getCategory().equals("国有实际控股出资人"))
                actualControlInvestmentTotal = actualControlInvestmentTotal.add(con.getCapitalSubscribed());
        }

        // 计算其他出资总和
        BigDecimal otherTotal = new BigDecimal("0.00");
        for (Contribution con : contributionList) {
            if (con.getCategory().equals("其他") || con.getCategory().equals("国有参股出资人"))
                otherTotal = otherTotal.add(con.getCapitalSubscribed());
        }

        // 股权比例总和
        BigDecimal equityRatioTotal = new BigDecimal("0.00");
        for (Contribution con : contributionList) {
            equityRatioTotal = equityRatioTotal.add(con.getEquityRatio());
        }

        // 第二个sheet页信息
        // 股权比例信息
        EquityMortgage equityMortgage = new EquityMortgage();
        equityMortgage.setInfoId(catalog.getInfoId());
        List<EquityMortgage> equityMortgageList = equityMortgageService.selectEquityMortgageList(equityMortgage);

        // 第三个sheet页信息
        // 冻结信息
        JudicialFreeze judicialFreeze = new JudicialFreeze();
        judicialFreeze.setInfoId(catalog.getInfoId());
        List<JudicialFreeze> judicialFreezeList = judicialFreezeService.selectJudicialFreezeList(judicialFreeze);
        // 司法冻结资产数额总和
        BigDecimal frozenAmountTotal = new BigDecimal("0.00");
        for (JudicialFreeze jf : judicialFreezeList) {
            frozenAmountTotal = frozenAmountTotal.add(jf.getFrozenAmount());
        }

        // 第四个sheet信息
        // 国有金融资本产权占有登记合规性资料目录, 已经查询过了
        // 以下值选项都是：“有”和“无”，在第四个sheet页的[B6:B32]区域
        Map<String, String> valueMap = new HashMap<>();
        // 判断国资管理文
        valueMap.put("ownAseetSummary", StringUtils.isEmpty(catalog.getOwnedAssetsDescription())?"有":"无");
        // 判断行业监管部门文件
        valueMap.put("industrySummary", StringUtils.isEmpty(catalog.getIndustryDescription())?"有":"无");
        // 判断机构内部文件
        valueMap.put("orgSummary", StringUtils.isEmpty(catalog.getOrgDescription())?"有":"无");
        // 判断出资证明文件
        valueMap.put("contributionSummary", StringUtils.isEmpty(catalog.getContributionDescription())?"有":"无");
        // 判断产权交易描述
        valueMap.put("receiptSummary", StringUtils.isEmpty(catalog.getReceiptDescription())?"有":"无");
        // 判断转让协议
        valueMap.put("agreementSummary", StringUtils.isEmpty(catalog.getAgreementDescription())?"有":"无");
        // 判断核准文件
        valueMap.put("agencySummary", StringUtils.isEmpty(catalog.getAgreementDescription())?"有":"无");

        // 返回下载文件的名字
        String fileName = null;
        try {
            InputStream in = this.getClass().getResourceAsStream("/templates/exceltemplate/info.xls");   //得到文档的路径
            String strDate = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy年MM月dd日")).toString();
            fileName = "金融司产权_" + essentialInformation.getCompanyName() + "_" + strDate + ".xls";
            FileOutputStream out = new FileOutputStream(Global.getDownloadPath() + fileName);
            org.jxls.common.Context context = new org.jxls.common.Context();
            //将列表参数放入context中
            // 以下为第一个信息
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
            // 国家资本出资人
            context.putVar("stateCapitalTotal", stateCapitalTotal);
            // 国有出资人
            context.putVar("stateInvestmentTotal", stateInvestmentTotal);
            // 国有绝对控股出资
            context.putVar("absoluteStateHoldingTotal", absoluteStateHoldingTotal);
            // 国有实际控制出资
            context.putVar("actualControlInvestmentTotal", actualControlInvestmentTotal);
            // 其他出资
            context.putVar("otherTotal", otherTotal);

            // 以下为第二个sheet页信息
            // 股权比例信息
            context.putVar("equityMortgageList", equityMortgageList);

            // 以下为第三个sheet页信息
            // 冻结信息
            context.putVar("judicialFreezeList", judicialFreezeList);
            // 司法冻结资产数额总和
            context.putVar("frozenAmountTotal", frozenAmountTotal);

            // 以下为第四个sheet页的信息
            // 国有金融资本产权占有登记合规性资料目录, 已经查询过了
            // 以下值选项都是：“有”和“无”，在第四个sheet页的[B6:B32]区域
            context.putVar("exist", valueMap);

            JxlsHelper jxlsHelper = JxlsHelper.getInstance();
            Transformer transformer = jxlsHelper.createTransformer(in, out);
            JexlExpressionEvaluator evaluator = (JexlExpressionEvaluator) transformer.getTransformationConfig()
                    .getExpressionEvaluator();
            Map<String, Object> functionMap = new HashMap<>();
            functionMap.put("jexlUtils", new JexlCustomFunction());
            JexlBuilder jb = new JexlBuilder();
            jb.namespaces(functionMap);
            JexlEngine je = jb.create();
            evaluator.setJexlEngine(je);
            jxlsHelper.processTemplate(context, transformer);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxResult.error("异常，稍后再尝试.");
        } finally {

        }
        return AjaxResult.success(fileName);
    }

}
