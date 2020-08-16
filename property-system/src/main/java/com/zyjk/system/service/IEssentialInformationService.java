package com.zyjk.system.service;

import java.util.List;

import com.zyjk.system.domain.BusinessData;
import com.zyjk.system.domain.EssentialInformation;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author lvzhi
 * @date 2020-07-31
 */
public interface IEssentialInformationService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public EssentialInformation selectEssentialInformationById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param essentialInformation 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<EssentialInformation> selectEssentialInformationList(EssentialInformation essentialInformation);

    /**
     * 新增【请填写功能名称】
     * 
     * @param essentialInformation 【请填写功能名称】
     * @return 结果
     */
    public int insertEssentialInformation(EssentialInformation essentialInformation);

    /**
     * 修改【请填写功能名称】
     * 
     * @param essentialInformation 【请填写功能名称】
     * @return 结果
     */
    public int updateEssentialInformation(EssentialInformation essentialInformation);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteEssentialInformationByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteEssentialInformationById(Long id);

    /**
     * 获取企业组织形式树
     * @param id
     * @return
     */
    List<BusinessData> getBusinessDateLevel(Integer id, Integer level);
}
