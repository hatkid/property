package com.zyjk.system.service.impl;

import java.sql.ParameterMetaData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zyjk.common.utils.DateUtils;
import com.zyjk.system.domain.BusinessData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zyjk.system.mapper.EssentialInformationMapper;
import com.zyjk.system.domain.EssentialInformation;
import com.zyjk.system.service.IEssentialInformationService;
import com.zyjk.common.core.text.Convert;
import org.springframework.util.CollectionUtils;

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
        // 判断公司名字是否重复
        EssentialInformation param = new EssentialInformation();
        Map<String, Object> map = new HashMap<>();
        map.put("companyNameSearch", essentialInformation.getCompanyName());
        param.setParams(map);
        List<EssentialInformation> essentialInformationList = this.selectEssentialInformationList(param);
        if (CollectionUtils.isEmpty(essentialInformationList)) {
            return essentialInformationMapper.insertEssentialInformation(essentialInformation);
        } else {
            return -1;
        }

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
        // 判断公司名字是否重复
        EssentialInformation param = new EssentialInformation();
        Map<String, Object> map = new HashMap<>();
        map.put("companyNameSearch", essentialInformation.getCompanyName());
        map.put("idSearch", essentialInformation.getId());
        param.setParams(map);
        List<EssentialInformation> essentialInformationList = this.selectEssentialInformationList(param);
        if (CollectionUtils.isEmpty(essentialInformationList)) {
            return essentialInformationMapper.updateEssentialInformation(essentialInformation);
        } else {
            return -1;
        }
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

    /**
     * 获取企业组织形式树
     *
     * @param id
     * @return
     */
    @Override
    public List<BusinessData> getBusinessDateLevel(Integer id, Integer level) {
        List<BusinessData> root = essentialInformationMapper.getBusinessDateLevel(id);;
        if (2 == level) {
            for (BusinessData businessData : root) {
                businessData.setChildren(essentialInformationMapper.getBusinessDateLevel(businessData.getId()));
            }
        } else if (3 == level) {
            for (BusinessData businessData : root) {
                List<BusinessData> second = essentialInformationMapper.getBusinessDateLevel(businessData.getId());
                for (BusinessData data : second) {
                    data.setChildren(essentialInformationMapper.getBusinessDateLevel(data.getId()));
                }
                businessData.setChildren(second);
            }
        }
        return root;
    }
}
