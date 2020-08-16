package com.zyjk.system.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zyjk.system.mapper.SeniorManagementMapper;
import com.zyjk.system.domain.SeniorManagement;
import com.zyjk.system.service.ISeniorManagementService;
import com.zyjk.common.core.text.Convert;
import org.springframework.util.CollectionUtils;

/**
 * 管理人员Service业务层处理
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Service
public class SeniorManagementServiceImpl implements ISeniorManagementService 
{
    @Autowired
    private SeniorManagementMapper seniorManagementMapper;

    /**
     * 查询管理人员
     * 
     * @param id 管理人员ID
     * @return 管理人员
     */
    @Override
    public SeniorManagement selectSeniorManagementById(Long id)
    {
        return seniorManagementMapper.selectSeniorManagementById(id);
    }

    /**
     * 查询管理人员列表
     * 
     * @param seniorManagement 管理人员
     * @return 管理人员
     */
    @Override
    public List<SeniorManagement> selectSeniorManagementList(SeniorManagement seniorManagement)
    {
        return seniorManagementMapper.selectSeniorManagementList(seniorManagement);
    }

    /**
     * 新增管理人员
     * 
     * @param seniorManagement 管理人员
     * @return 结果
     */
    @Override
    public int insertSeniorManagement(SeniorManagement seniorManagement)
    {
        SeniorManagement param = new SeniorManagement();
        Map<String, Object> map = new HashMap<>();
        map.put("nameSearch", seniorManagement.getName());
        map.put("infoIdSearch", seniorManagement.getInfoId());
        param.setParams(map);
        if (CollectionUtils.isEmpty(this.selectSeniorManagementList(param))) {
            return seniorManagementMapper.insertSeniorManagement(seniorManagement);
        } else {
            return -1;
        }

    }

    /**
     * 修改管理人员
     * 
     * @param seniorManagement 管理人员
     * @return 结果
     */
    @Override
    public int updateSeniorManagement(SeniorManagement seniorManagement)
    {
        SeniorManagement param = new SeniorManagement();
        Map<String, Object> map = new HashMap<>();
        map.put("nameSearch", seniorManagement.getName());
        map.put("infoIdSearch", seniorManagement.getInfoId());
        map.put("idSearch", seniorManagement.getId());
        param.setParams(map);
        if (CollectionUtils.isEmpty(this.selectSeniorManagementList(param))) {
            return seniorManagementMapper.updateSeniorManagement(seniorManagement);
        } else {
            return -1;
        }
    }

    /**
     * 删除管理人员对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSeniorManagementByIds(String ids)
    {
        return seniorManagementMapper.deleteSeniorManagementByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除管理人员信息
     * 
     * @param id 管理人员ID
     * @return 结果
     */
    @Override
    public int deleteSeniorManagementById(Long id)
    {
        return seniorManagementMapper.deleteSeniorManagementById(id);
    }
}
