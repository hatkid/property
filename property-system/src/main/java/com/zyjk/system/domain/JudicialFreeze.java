package com.zyjk.system.domain;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.zyjk.common.annotation.Excel;
import com.zyjk.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 司法冻结情况对象 judicial_freeze
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public class JudicialFreeze extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增id */
    private Long id;

    /** 基本信息id */
    private Long infoId;

    @Excel(name = "所属公司")
    private String companyName;

    /** 司法执行机关 */
    @Excel(name = "司法执行机关")
    private String judicialOrgan;

    /** 司法冻结资产数额 */
    @Excel(name = "司法冻结资产数额")
    private BigDecimal frozenAmount;

    /** 司法冻结起始时间 */
    @Excel(name = "司法冻结起始时间", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date frozenStartDate;

    /** 司法冻结结束时间 */
    @Excel(name = "司法冻结结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date frozenEndDate;

    /** 司法冻结原因 */
    @Excel(name = "司法冻结原因")
    private String frozenReason;

    /** 备注 */
    @Excel(name = "备注")
    private String remarks;

    /** 创建者id */
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
    public void setJudicialOrgan(String judicialOrgan) 
    {
        this.judicialOrgan = judicialOrgan;
    }

    public String getJudicialOrgan() 
    {
        return judicialOrgan;
    }
    public void setFrozenAmount(BigDecimal frozenAmount) 
    {
        this.frozenAmount = frozenAmount;
    }

    public BigDecimal getFrozenAmount() 
    {
        return frozenAmount;
    }
    public void setFrozenStartDate(Date frozenStartDate) 
    {
        this.frozenStartDate = frozenStartDate;
    }

    public Date getFrozenStartDate() 
    {
        return frozenStartDate;
    }
    public void setFrozenEndDate(Date frozenEndDate) 
    {
        this.frozenEndDate = frozenEndDate;
    }

    public Date getFrozenEndDate() 
    {
        return frozenEndDate;
    }
    public void setFrozenReason(String frozenReason) 
    {
        this.frozenReason = frozenReason;
    }

    public String getFrozenReason() 
    {
        return frozenReason;
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

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("infoId", getInfoId())
            .append("judicialOrgan", getJudicialOrgan())
            .append("frozenAmount", getFrozenAmount())
            .append("frozenStartDate", getFrozenStartDate())
            .append("frozenEndDate", getFrozenEndDate())
            .append("frozenReason", getFrozenReason())
            .append("remarks", getRemarks())
            .append("createTime", getCreateTime())
            .append("createId", getCreateId())
            .toString();
    }
}
