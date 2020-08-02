package com.zyjk.system.mapper;

import java.util.List;
import com.zyjk.system.domain.SeniorManagement;

/**
 * 管理人员Mapper接口
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public interface SeniorManagementMapper 
{
    /**
     * 查询管理人员
     * 
     * @param id 管理人员ID
     * @return 管理人员
     */
    public SeniorManagement selectSeniorManagementById(Long id);

    /**
     * 查询管理人员列表
     * 
     * @param seniorManagement 管理人员
     * @return 管理人员集合
     */
    public List<SeniorManagement> selectSeniorManagementList(SeniorManagement seniorManagement);

    /**
     * 新增管理人员
     * 
     * @param seniorManagement 管理人员
     * @return 结果
     */
    public int insertSeniorManagement(SeniorManagement seniorManagement);

    /**
     * 修改管理人员
     * 
     * @param seniorManagement 管理人员
     * @return 结果
     */
    public int updateSeniorManagement(SeniorManagement seniorManagement);

    /**
     * 删除管理人员
     * 
     * @param id 管理人员ID
     * @return 结果
     */
    public int deleteSeniorManagementById(Long id);

    /**
     * 批量删除管理人员
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSeniorManagementByIds(String[] ids);
}
