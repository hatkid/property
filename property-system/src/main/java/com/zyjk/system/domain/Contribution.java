package com.zyjk.system.domain;

import java.math.BigDecimal;
import com.zyjk.common.annotation.Excel;
import com.zyjk.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 出资情况对象 contribution
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public class Contribution extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增id */
    private Long id;

    /** 基本信息id */
    @Excel(name = "基本信息id")
    private Long infoId;

    /** 出资方名称 */
    @Excel(name = "出资方名称")
    private String investorName;

    /** 代码 */
    @Excel(name = "代码")
    private String investorCode;

    /** 统一社会信用代码/境外机构注册号/身份证号码 */
    @Excel(name = "统一社会信用代码/境外机构注册号/身份证号码")
    private String identificationCode;

    /** 类别 */
    @Excel(name = "类别")
    private String category;

    /** 实缴资本（元） */
    @Excel(name = "实缴资本", readConverterExp = "元=")
    private BigDecimal capitalPaid;

    /** 认缴资本（元） */
    @Excel(name = "认缴资本", readConverterExp = "元=")
    private BigDecimal capitalSubscribed;

    /** 股权比例 */
    @Excel(name = "股权比例")
    private BigDecimal equityRatio;

    /** 创建者id */
    @Excel(name = "创建者id")
    private Long createId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setInfoId(Long infoId) 
    {
        this.infoId = infoId;
    }

    public Long getInfoId() 
    {
        return infoId;
    }
    public void setInvestorName(String investorName) 
    {
        this.investorName = investorName;
    }

    public String getInvestorName() 
    {
        return investorName;
    }
    public void setInvestorCode(String investorCode) 
    {
        this.investorCode = investorCode;
    }

    public String getInvestorCode() 
    {
        return investorCode;
    }
    public void setIdentificationCode(String identificationCode) 
    {
        this.identificationCode = identificationCode;
    }

    public String getIdentificationCode() 
    {
        return identificationCode;
    }
    public void setCategory(String category) 
    {
        this.category = category;
    }

    public String getCategory() 
    {
        return category;
    }
    public void setCapitalPaid(BigDecimal capitalPaid) 
    {
        this.capitalPaid = capitalPaid;
    }

    public BigDecimal getCapitalPaid() 
    {
        return capitalPaid;
    }
    public void setCapitalSubscribed(BigDecimal capitalSubscribed) 
    {
        this.capitalSubscribed = capitalSubscribed;
    }

    public BigDecimal getCapitalSubscribed() 
    {
        return capitalSubscribed;
    }
    public void setEquityRatio(BigDecimal equityRatio) 
    {
        this.equityRatio = equityRatio;
    }

    public BigDecimal getEquityRatio() 
    {
        return equityRatio;
    }
    public void setCreateId(Long createId) 
    {
        this.createId = createId;
    }

    public Long getCreateId() 
    {
        return createId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("infoId", getInfoId())
            .append("investorName", getInvestorName())
            .append("investorCode", getInvestorCode())
            .append("identificationCode", getIdentificationCode())
            .append("category", getCategory())
            .append("capitalPaid", getCapitalPaid())
            .append("capitalSubscribed", getCapitalSubscribed())
            .append("equityRatio", getEquityRatio())
            .append("createTime", getCreateTime())
            .append("createId", getCreateId())
            .toString();
    }
}
