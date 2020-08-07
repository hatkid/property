package com.zyjk.system.domain;

import java.util.Date;
import com.zyjk.common.annotation.Excel;
import com.zyjk.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 占有登记对象 catalog
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public class Catalog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 基本信息id */
    private Long infoId;

    @Excel(name = "所属公司")
    private String companyName;

    /** 经济行为发生时间 */
    @Excel(name = "经济行为发生时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date economicBehaviorDate;

    /** 经济行为决策或者批复单位 */
    @Excel(name = "经济行为决策或者批复单位")
    private String economicBehaviorName;

    /** 决策或批复日期 */
    @Excel(name = "决策或批复日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date policyDecisionDate;

    /** 决策或批复文件名称 */
    @Excel(name = "决策或批复文件名称")
    private String policyDecisionFile;

    /** 产权登记机关标识码 */
    @Excel(name = "产权登记机关标识码")
    private String registrationAuthorityCode;

    /** 产权登记情形 */
    @Excel(name = "产权登记情形")
    private String propertyRightRegistration;

    /** 决策或批复单位名称-国资管理文件 */
    @Excel(name = "决策或批复单位名称-国资管理文件")
    private String ownedAssetsName;

    /** 决策或批复单位类型-国资管理文件 */
    @Excel(name = "决策或批复单位类型-国资管理文件")
    private String ownedAssetsType;

    /** 决策或批复文件名称-国资管理文件 */
    @Excel(name = "决策或批复文件名称-国资管理文件")
    private String ownedAssetsFileName;

    /** 决策或批复文件号-国资管理文件 */
    @Excel(name = "决策或批复文件号-国资管理文件")
    private String ownedAssetsFileCode;

    /** 理由描述-国资管理文件 */
    @Excel(name = "理由描述-国资管理文件")
    private String ownedAssetsDescription;

    /** 决策或批复单位名称-行业监管部门文件 */
    @Excel(name = "决策或批复单位名称-行业监管部门文件")
    private String industryName;

    /** 决策或批复单位类型-行业监管部门文件 */
    @Excel(name = "决策或批复单位类型-行业监管部门文件")
    private String industryType;

    /** 决策或批复文件名称-行业监管部门文件 */
    @Excel(name = "决策或批复文件名称-行业监管部门文件")
    private String industryFileName;

    /** 决策或批复文件号-行业监管部门文件 */
    @Excel(name = "决策或批复文件号-行业监管部门文件")
    private String industryFileCode;

    /** 理由描述-行业监管部门文件 */
    @Excel(name = "理由描述-行业监管部门文件")
    private String industryDescription;

    /** 决策或批复单位名称-机构内部文件 */
    @Excel(name = "决策或批复单位名称-机构内部文件")
    private String orgName;

    /** 决策或批复文件名称-机构内部文件 */
    @Excel(name = "决策或批复文件名称-机构内部文件")
    private String orgFileName;

    /** 决策或批复文件号-机构内部文件 */
    @Excel(name = "决策或批复文件号-机构内部文件")
    private String orgFileCode;

    /** 理由描述-机构内部文件 */
    @Excel(name = "理由描述-机构内部文件")
    private String orgDescription;

    /** 出资证明文件内容 */
    @Excel(name = "出资证明文件内容")
    private String contributionContent;

    /** 出资证明文件理由描述 */
    @Excel(name = "出资证明文件理由描述")
    private String contributionDescription;

    /** 交易凭证内容 */
    @Excel(name = "交易凭证内容")
    private String receiptContent;

    /** 交易凭证理由描述 */
    @Excel(name = "交易凭证理由描述")
    private String receiptDescription;

    /** 转让协议内容 */
    @Excel(name = "转让协议内容")
    private String agreementContent;

    /** 转让协议理由描述 */
    @Excel(name = "转让协议理由描述")
    private String agreementDescription;

    /** 中介机构名称-评估备案表或核准文件 */
    @Excel(name = "中介机构名称-评估备案表或核准文件")
    private String agencyName;

    /** 评估报告号-评估备案表或核准文件 */
    @Excel(name = "评估报告号-评估备案表或核准文件")
    private String reportNo;

    /** 备案或核准单位名称-评估备案表或核准文件 */
    @Excel(name = "备案或核准单位名称-评估备案表或核准文件")
    private String approvalName;

    /** 备案号或核准文件号-评估备案表或核准文件 */
    @Excel(name = "备案号或核准文件号-评估备案表或核准文件")
    private String approvalNo;

    /** 理由描述-评估备案表或核准文件 */
    @Excel(name = "理由描述-评估备案表或核准文件")
    private String approvalDescription;

    /** 创建者id */
    private Long createId;

    // 导出excel模板的辅助字段
    //

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
    public void setEconomicBehaviorDate(Date economicBehaviorDate) 
    {
        this.economicBehaviorDate = economicBehaviorDate;
    }

    public Date getEconomicBehaviorDate() 
    {
        return economicBehaviorDate;
    }
    public void setEconomicBehaviorName(String economicBehaviorName) 
    {
        this.economicBehaviorName = economicBehaviorName;
    }

    public String getEconomicBehaviorName() 
    {
        return economicBehaviorName;
    }
    public void setPolicyDecisionDate(Date policyDecisionDate) 
    {
        this.policyDecisionDate = policyDecisionDate;
    }

    public Date getPolicyDecisionDate() 
    {
        return policyDecisionDate;
    }
    public void setPolicyDecisionFile(String policyDecisionFile) 
    {
        this.policyDecisionFile = policyDecisionFile;
    }

    public String getPolicyDecisionFile() 
    {
        return policyDecisionFile;
    }
    public void setRegistrationAuthorityCode(String registrationAuthorityCode) 
    {
        this.registrationAuthorityCode = registrationAuthorityCode;
    }

    public String getRegistrationAuthorityCode() 
    {
        return registrationAuthorityCode;
    }
    public void setPropertyRightRegistration(String propertyRightRegistration) 
    {
        this.propertyRightRegistration = propertyRightRegistration;
    }

    public String getPropertyRightRegistration() 
    {
        return propertyRightRegistration;
    }
    public void setOwnedAssetsName(String ownedAssetsName) 
    {
        this.ownedAssetsName = ownedAssetsName;
    }

    public String getOwnedAssetsName() 
    {
        return ownedAssetsName;
    }
    public void setOwnedAssetsFileName(String ownedAssetsFileName) 
    {
        this.ownedAssetsFileName = ownedAssetsFileName;
    }

    public String getOwnedAssetsFileName() 
    {
        return ownedAssetsFileName;
    }
    public void setOwnedAssetsFileCode(String ownedAssetsFileCode) 
    {
        this.ownedAssetsFileCode = ownedAssetsFileCode;
    }

    public String getOwnedAssetsFileCode() 
    {
        return ownedAssetsFileCode;
    }
    public void setOwnedAssetsDescription(String ownedAssetsDescription) 
    {
        this.ownedAssetsDescription = ownedAssetsDescription;
    }

    public String getOwnedAssetsDescription() 
    {
        return ownedAssetsDescription;
    }
    public void setIndustryName(String industryName) 
    {
        this.industryName = industryName;
    }

    public String getIndustryName() 
    {
        return industryName;
    }
    public void setIndustryFileName(String industryFileName) 
    {
        this.industryFileName = industryFileName;
    }

    public String getIndustryFileName() 
    {
        return industryFileName;
    }
    public void setIndustryFileCode(String industryFileCode) 
    {
        this.industryFileCode = industryFileCode;
    }

    public String getIndustryFileCode() 
    {
        return industryFileCode;
    }
    public void setIndustryDescription(String industryDescription) 
    {
        this.industryDescription = industryDescription;
    }

    public String getIndustryDescription() 
    {
        return industryDescription;
    }
    public void setOrgName(String orgName) 
    {
        this.orgName = orgName;
    }

    public String getOrgName() 
    {
        return orgName;
    }
    public void setOrgFileName(String orgFileName) 
    {
        this.orgFileName = orgFileName;
    }

    public String getOrgFileName() 
    {
        return orgFileName;
    }
    public void setOrgFileCode(String orgFileCode) 
    {
        this.orgFileCode = orgFileCode;
    }

    public String getOrgFileCode() 
    {
        return orgFileCode;
    }
    public void setOrgDescription(String orgDescription) 
    {
        this.orgDescription = orgDescription;
    }

    public String getOrgDescription() 
    {
        return orgDescription;
    }
    public void setContributionContent(String contributionContent) 
    {
        this.contributionContent = contributionContent;
    }

    public String getContributionContent() 
    {
        return contributionContent;
    }
    public void setContributionDescription(String contributionDescription) 
    {
        this.contributionDescription = contributionDescription;
    }

    public String getContributionDescription() 
    {
        return contributionDescription;
    }
    public void setReceiptContent(String receiptContent) 
    {
        this.receiptContent = receiptContent;
    }

    public String getReceiptContent() 
    {
        return receiptContent;
    }
    public void setReceiptDescription(String receiptDescription) 
    {
        this.receiptDescription = receiptDescription;
    }

    public String getReceiptDescription() 
    {
        return receiptDescription;
    }
    public void setAgreementContent(String agreementContent) 
    {
        this.agreementContent = agreementContent;
    }

    public String getAgreementContent() 
    {
        return agreementContent;
    }
    public void setAgreementDescription(String agreementDescription) 
    {
        this.agreementDescription = agreementDescription;
    }

    public String getAgreementDescription() 
    {
        return agreementDescription;
    }
    public void setAgencyName(String agencyName) 
    {
        this.agencyName = agencyName;
    }

    public String getAgencyName() 
    {
        return agencyName;
    }
    public void setReportNo(String reportNo) 
    {
        this.reportNo = reportNo;
    }

    public String getReportNo() 
    {
        return reportNo;
    }
    public void setApprovalName(String approvalName) 
    {
        this.approvalName = approvalName;
    }

    public String getApprovalName() 
    {
        return approvalName;
    }
    public void setApprovalNo(String approvalNo) 
    {
        this.approvalNo = approvalNo;
    }

    public String getApprovalNo() 
    {
        return approvalNo;
    }
    public void setApprovalDescription(String approvalDescription) 
    {
        this.approvalDescription = approvalDescription;
    }

    public String getApprovalDescription() 
    {
        return approvalDescription;
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

    public String getOwnedAssetsType() {
        return ownedAssetsType;
    }

    public void setOwnedAssetsType(String ownedAssetsType) {
        this.ownedAssetsType = ownedAssetsType;
    }

    public String getIndustryType() {
        return industryType;
    }

    public void setIndustryType(String industryType) {
        this.industryType = industryType;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("infoId", getInfoId())
            .append("economicBehaviorDate", getEconomicBehaviorDate())
            .append("economicBehaviorName", getEconomicBehaviorName())
            .append("policyDecisionDate", getPolicyDecisionDate())
            .append("policyDecisionFile", getPolicyDecisionFile())
            .append("registrationAuthorityCode", getRegistrationAuthorityCode())
            .append("propertyRightRegistration", getPropertyRightRegistration())
            .append("ownedAssetsName", getOwnedAssetsName())
            .append("ownedAssetsFileName", getOwnedAssetsFileName())
            .append("ownedAssetsFileCode", getOwnedAssetsFileCode())
            .append("ownedAssetsDescription", getOwnedAssetsDescription())
            .append("industryName", getIndustryName())
            .append("industryFileName", getIndustryFileName())
            .append("industryFileCode", getIndustryFileCode())
            .append("industryDescription", getIndustryDescription())
            .append("orgName", getOrgName())
            .append("orgFileName", getOrgFileName())
            .append("orgFileCode", getOrgFileCode())
            .append("orgDescription", getOrgDescription())
            .append("contributionContent", getContributionContent())
            .append("contributionDescription", getContributionDescription())
            .append("receiptContent", getReceiptContent())
            .append("receiptDescription", getReceiptDescription())
            .append("agreementContent", getAgreementContent())
            .append("agreementDescription", getAgreementDescription())
            .append("agencyName", getAgencyName())
            .append("reportNo", getReportNo())
            .append("approvalName", getApprovalName())
            .append("approvalNo", getApprovalNo())
            .append("approvalDescription", getApprovalDescription())
            .append("createTime", getCreateTime())
            .append("createId", getCreateId())
            .toString();
    }
}
