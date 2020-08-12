package com.zyjk.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.zyjk.common.annotation.Excel;
import com.zyjk.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 【请填写功能名称】对象 essential_information
 * 
 * @author lvzhi
 * @date 2020-07-31
 */
public class EssentialInformation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 公司名称 */
    @Excel(name = "公司名称")
    private String companyName;

    @Excel(name = "所属集团部门标识码")
    private String groupCode;

    @Excel(name = "所属集团单位名称")
    private String groupName;

    @Excel(name = "邮政编码")
    private String postcode;

    /** 是否工商注册 */
    @Excel(name = "是否工商注册")
    private Integer isRegistration;

    /** 统一社会信用代码 */
    @Excel(name = "统一社会信用代码")
    private String socialCode;

    /** 法人 */
    @Excel(name = "法人")
    private String legalPerson;

    /** 注册地 */
    @Excel(name = "注册地")
    private String placeRegistration;

    /** 住所 */
    @Excel(name = "住所")
    private String residence;

    /** 注册资本（元） */
    @Excel(name = "注册资本", readConverterExp = "元=")
    private BigDecimal registeredCapital;

    /** 成立日期 */
    @Excel(name = "成立日期", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date foundDate;

    /** 成立日期查询 */
    private Date beginFoundDate;

    /** 成立日期查询 */
    private Date endFoundDate;

    /** 组织形式 */
    @Excel(name = "组织形式")
    private String organizationalForm;

    /** 机构类别 */
    @Excel(name = "机构类别")
    private String organizationCategory;

    /** 国有类型（配合机构类别使用） */
    @Excel(name = "国有类型", readConverterExp = "配合机构类别使用")
    private Integer stateOwnedWay;

    /** 最大国有出资人代码 */
    @Excel(name = "最大国有出资人代码")
    private String investorCode;

    /** 最大国有出资人名称 */
    @Excel(name = "最大国有出资人名称")
    private String investorName;

    /** 产权登记机关标识码 */
    @Excel(name = "产权登记机关标识码")
    private String registrationAuthorityCode;

    /** 所属行业代码 */
    @Excel(name = "所属行业代码")
    private String industryCode;

    /** 隶属关系标识码 */
    @Excel(name = "隶属关系标识码")
    private String subjectionCode;

    /** 级次标识码 */
    @Excel(name = "级次标识码")
    private String gradeCode;

    /** 是否重点子公司 */
    @Excel(name = "是否重点子公司")
    private Integer isKeySubsidiary;

    /** 是否正常经营 */
    @Excel(name = "是否正常经营")
    private Integer isNormalOperation;

    /** 非正常经营说明 */
    @Excel(name = "非正常经营说明")
    private String operationDescription;

    /** 经营范围 */
    @Excel(name = "经营范围")
    private String businessScope;

    /** 出资情况备注 */
    @Excel(name = "出资情况备注")
    private String contributionRemarks;

    /** 创建者id */
    @Excel(name = "创建者id")
    private Long createId;

    @Override
    public void setParams(Map<String, Object> params) {
        Map<String, Object> map = new HashMap<>();
        map.put("idSearch", "");
        map.put("companyNameSearch", "");
        super.setParams(map);
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCompanyName(String companyName) 
    {
        this.companyName = companyName;
    }

    public String getCompanyName() 
    {
        return companyName;
    }
    public void setIsRegistration(Integer isRegistration) 
    {
        this.isRegistration = isRegistration;
    }

    public Integer getIsRegistration() 
    {
        return isRegistration;
    }
    public void setSocialCode(String socialCode) 
    {
        this.socialCode = socialCode;
    }

    public String getSocialCode() 
    {
        return socialCode;
    }
    public void setLegalPerson(String legalPerson) 
    {
        this.legalPerson = legalPerson;
    }

    public String getLegalPerson() 
    {
        return legalPerson;
    }
    public void setPlaceRegistration(String placeRegistration) 
    {
        this.placeRegistration = placeRegistration;
    }

    public String getPlaceRegistration() 
    {
        return placeRegistration;
    }
    public void setResidence(String residence) 
    {
        this.residence = residence;
    }

    public String getResidence() 
    {
        return residence;
    }
    public void setRegisteredCapital(BigDecimal registeredCapital) 
    {
        this.registeredCapital = registeredCapital;
    }

    public BigDecimal getRegisteredCapital() 
    {
        return registeredCapital;
    }
    public void setFoundDate(Date foundDate) 
    {
        this.foundDate = foundDate;
    }

    public Date getFoundDate() 
    {
        return foundDate;
    }
    public void setOrganizationalForm(String organizationalForm) 
    {
        this.organizationalForm = organizationalForm;
    }

    public String getOrganizationalForm() 
    {
        return organizationalForm;
    }
    public void setOrganizationCategory(String organizationCategory) 
    {
        this.organizationCategory = organizationCategory;
    }

    public String getOrganizationCategory() 
    {
        return organizationCategory;
    }
    public void setStateOwnedWay(Integer stateOwnedWay)
    {
        this.stateOwnedWay = stateOwnedWay;
    }

    public Integer getStateOwnedWay()
    {
        return stateOwnedWay;
    }

    public void setInvestorCode(String investorCode)
    {
        this.investorCode = investorCode;
    }

    public String getInvestorCode() 
    {
        return investorCode;
    }
    public void setInvestorName(String investorName) 
    {
        this.investorName = investorName;
    }

    public String getInvestorName() 
    {
        return investorName;
    }
    public void setRegistrationAuthorityCode(String registrationAuthorityCode) 
    {
        this.registrationAuthorityCode = registrationAuthorityCode;
    }

    public String getRegistrationAuthorityCode() 
    {
        return registrationAuthorityCode;
    }
    public void setIndustryCode(String industryCode) 
    {
        this.industryCode = industryCode;
    }

    public String getIndustryCode() 
    {
        return industryCode;
    }
    public void setSubjectionCode(String subjectionCode) 
    {
        this.subjectionCode = subjectionCode;
    }

    public String getSubjectionCode() 
    {
        return subjectionCode;
    }
    public void setGradeCode(String gradeCode) 
    {
        this.gradeCode = gradeCode;
    }

    public String getGradeCode() 
    {
        return gradeCode;
    }
    public void setIsKeySubsidiary(Integer isKeySubsidiary) 
    {
        this.isKeySubsidiary = isKeySubsidiary;
    }

    public Integer getIsKeySubsidiary() 
    {
        return isKeySubsidiary;
    }

    public void setIsNormalOperation(Integer isNormalOperation) 
    {
        this.isNormalOperation = isNormalOperation;
    }

    public Integer getIsNormalOperation() 
    {
        return isNormalOperation;
    }
    public void setOperationDescription(String operationDescription) 
    {
        this.operationDescription = operationDescription;
    }

    public String getOperationDescription() 
    {
        return operationDescription;
    }
    public void setBusinessScope(String businessScope) 
    {
        this.businessScope = businessScope;
    }

    public String getBusinessScope() 
    {
        return businessScope;
    }
    public void setContributionRemarks(String contributionRemarks) 
    {
        this.contributionRemarks = contributionRemarks;
    }

    public String getContributionRemarks() 
    {
        return contributionRemarks;
    }
    public void setCreateId(Long createId) 
    {
        this.createId = createId;
    }

    public Long getCreateId() 
    {
        return createId;
    }

    public Date getBeginFoundDate() {
        return beginFoundDate;
    }

    public void setBeginFoundDate(Date beginFoundDate) {
        this.beginFoundDate = beginFoundDate;
    }

    public Date getEndFoundDate() {
        return endFoundDate;
    }

    public void setEndFoundDate(Date endFoundDate) {
        this.endFoundDate = endFoundDate;
    }

    public String getGroupCode() {
        return groupCode;
    }

    public void setGroupCode(String groupCode) {
        this.groupCode = groupCode;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("companyName", getCompanyName())
            .append("isRegistration", getIsRegistration())
            .append("socialCode", getSocialCode())
            .append("legalPerson", getLegalPerson())
            .append("placeRegistration", getPlaceRegistration())
            .append("residence", getResidence())
            .append("registeredCapital", getRegisteredCapital())
            .append("foundDate", getFoundDate())
            .append("organizationalForm", getOrganizationalForm())
            .append("organizationCategory", getOrganizationCategory())
            .append("stateOwnedWay", getStateOwnedWay())
            .append("investorCode", getInvestorCode())
            .append("investorName", getInvestorName())
            .append("registrationAuthorityCode", getRegistrationAuthorityCode())
            .append("industryCode", getIndustryCode())
            .append("subjectionCode", getSubjectionCode())
            .append("gradeCode", getGradeCode())
            .append("isKeySubsidiary", getIsKeySubsidiary())
            .append("isNormalOperation", getIsNormalOperation())
            .append("operationDescription", getOperationDescription())
            .append("businessScope", getBusinessScope())
            .append("contributionRemarks", getContributionRemarks())
            .append("createTime", getCreateTime())
            .append("createId", getCreateId())
            .toString();
    }
}
