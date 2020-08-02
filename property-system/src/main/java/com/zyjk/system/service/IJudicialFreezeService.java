package com.zyjk.system.service;

import java.util.List;
import com.zyjk.system.domain.JudicialFreeze;

/**
 * 司法冻结情况Service接口
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public interface IJudicialFreezeService 
{
    /**
     * 查询司法冻结情况
     * 
     * @param id 司法冻结情况ID
     * @return 司法冻结情况
     */
    public JudicialFreeze selectJudicialFreezeById(Long id);

    /**
     * 查询司法冻结情况列表
     * 
     * @param judicialFreeze 司法冻结情况
     * @return 司法冻结情况集合
     */
    public List<JudicialFreeze> selectJudicialFreezeList(JudicialFreeze judicialFreeze);

    /**
     * 新增司法冻结情况
     * 
     * @param judicialFreeze 司法冻结情况
     * @return 结果
     */
    public int insertJudicialFreeze(JudicialFreeze judicialFreeze);

    /**
     * 修改司法冻结情况
     * 
     * @param judicialFreeze 司法冻结情况
     * @return 结果
     */
    public int updateJudicialFreeze(JudicialFreeze judicialFreeze);

    /**
     * 批量删除司法冻结情况
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteJudicialFreezeByIds(String ids);

    /**
     * 删除司法冻结情况信息
     * 
     * @param id 司法冻结情况ID
     * @return 结果
     */
    public int deleteJudicialFreezeById(Long id);
}
