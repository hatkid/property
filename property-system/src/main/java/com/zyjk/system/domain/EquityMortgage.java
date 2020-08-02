package com.zyjk.system.domain;

import java.math.BigDecimal;
import com.zyjk.common.annotation.Excel;
import com.zyjk.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 股权抵押对象 equity_mortgage
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public class EquityMortgage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增id */
    private Long id;

    /** 基本信息id */
    @Excel(name = "基本信息id")
    private Long infoId;

    /** 抵质押机构名称 */
    @Excel(name = "抵质押机构名称")
    private String organizationName;

    /** 持股比例 */
    @Excel(name = "持股比例")
    private BigDecimal equityRatio;

    /** 抵质押权人 */
    @Excel(name = "抵质押权人")
    private String mortgagor;

    /** 账面值 */
    @Excel(name = "账面值")
    private BigDecimal bookValue;

    /** 评估值 */
    @Excel(name = "评估值")
    private BigDecimal evaluationValue;

    /** 抵质押股权比例（%） */
    @Excel(name = "抵质押股权比例", readConverterExp = "%=")
    private BigDecimal mortgageRatio;

    /** 备注 */
    @Excel(name = "备注")
    private String remarks;

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
    public void setOrganizationName(String organizationName) 
    {
        this.organizationName = organizationName;
    }

    public String getOrganizationName() 
    {
        return organizationName;
    }
    public void setEquityRatio(BigDecimal equityRatio) 
    {
        this.equityRatio = equityRatio;
    }

    public BigDecimal getEquityRatio() 
    {
        return equityRatio;
    }
    public void setMortgagor(String mortgagor) 
    {
        this.mortgagor = mortgagor;
    }

    public String getMortgagor() 
    {
        return mortgagor;
    }
    public void setBookValue(BigDecimal bookValue) 
    {
        this.bookValue = bookValue;
    }

    public BigDecimal getBookValue() 
    {
        return bookValue;
    }
    public void setEvaluationValue(BigDecimal evaluationValue) 
    {
        this.evaluationValue = evaluationValue;
    }

    public BigDecimal getEvaluationValue() 
    {
        return evaluationValue;
    }
    public void setMortgageRatio(BigDecimal mortgageRatio) 
    {
        this.mortgageRatio = mortgageRatio;
    }

    public BigDecimal getMortgageRatio() 
    {
        return mortgageRatio;
    }
    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
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
            .append("organizationName", getOrganizationName())
            .append("equityRatio", getEquityRatio())
            .append("mortgagor", getMortgagor())
            .append("bookValue", getBookValue())
            .append("evaluationValue", getEvaluationValue())
            .append("mortgageRatio", getMortgageRatio())
            .append("remarks", getRemarks())
            .append("createTime", getCreateTime())
            .append("createId", getCreateId())
            .toString();
    }
}
