package com.zyjk.system.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.zyjk.common.annotation.Excel;
import com.zyjk.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 管理人员对象 senior_management
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public class SeniorManagement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增id */
    private Long id;

    /** 基本信息id */
    private Long infoId;

    @Excel(name = "所属公司")
    private String companyName;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 性别：1-男；0-女； */
    @Excel(name = "性别",readConverterExp="0=女,1=男")
    private Integer sex;

    /** 职务 */
    @Excel(name = "职务")
    private String job;

    /** 上任时间 */
    @Excel(name = "上任时间", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date appointmentDate;

    /** 离任时间 */
    @Excel(name = "离任时间", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date departureDate;

    /** 级别 */
    @Excel(name = "级别")
    private String level;

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
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setSex(Integer sex) 
    {
        this.sex = sex;
    }

    public Integer getSex() 
    {
        return sex;
    }
    public void setJob(String job) 
    {
        this.job = job;
    }

    public String getJob() 
    {
        return job;
    }
    public void setAppointmentDate(Date appointmentDate) 
    {
        this.appointmentDate = appointmentDate;
    }

    public Date getAppointmentDate() 
    {
        return appointmentDate;
    }
    public void setDepartureDate(Date departureDate) 
    {
        this.departureDate = departureDate;
    }

    public Date getDepartureDate() 
    {
        return departureDate;
    }
    public void setLevel(String level) 
    {
        this.level = level;
    }

    public String getLevel() 
    {
        return level;
    }
    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
    }

    public Long getCreateId() {
        return createId;
    }

    public void setCreateId(Long createId) {
        this.createId = createId;
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
            .append("name", getName())
            .append("sex", getSex())
            .append("job", getJob())
            .append("appointmentDate", getAppointmentDate())
            .append("departureDate", getDepartureDate())
            .append("level", getLevel())
            .append("remarks", getRemarks())
            .toString();
    }
}
