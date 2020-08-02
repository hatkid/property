package com.zyjk.system.service.impl;

import java.util.List;
import com.zyjk.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zyjk.system.mapper.EssentialInformationMapper;
import com.zyjk.system.domain.EssentialInformation;
import com.zyjk.system.service.IEssentialInformationService;
import com.zyjk.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author lvzhi
 * @date 2020-07-31
 */
@Service
public class EssentialInformationServiceImpl implements IEssentialInformationService 
{
    @Autowired
    private EssentialInformationMapper essentialInformationMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public EssentialInformation selectEssentialInformationById(Long id)
    {
        return essentialInformationMapper.selectEssentialInformationById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param essentialInformation 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<EssentialInformation> selectEssentialInformationList(EssentialInformation essentialInformation)
    {
        return essentialInformationMapper.selectEssentialInformationList(essentialInformation);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param essentialInformation 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertEssentialInformation(EssentialInformation essentialInformation)
    {
        essentialInformation.setCreateTime(DateUtils.getNowDate());
        return essentialInformationMapper.insertEssentialInformation(essentialInformation);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param essentialInformation 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateEssentialInformation(EssentialInformation essentialInformation)
    {
        return essentialInformationMapper.updateEssentialInformation(essentialInformation);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteEssentialInformationByIds(String ids)
    {
        return essentialInformationMapper.deleteEssentialInformationByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteEssentialInformationById(Long id)
    {
        return essentialInformationMapper.deleteEssentialInformationById(id);
    }
}
