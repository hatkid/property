package com.zyjk.system.service.impl;

import java.util.List;
import com.zyjk.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zyjk.system.mapper.JudicialFreezeMapper;
import com.zyjk.system.domain.JudicialFreeze;
import com.zyjk.system.service.IJudicialFreezeService;
import com.zyjk.common.core.text.Convert;

/**
 * 司法冻结情况Service业务层处理
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Service
public class JudicialFreezeServiceImpl implements IJudicialFreezeService 
{
    @Autowired
    private JudicialFreezeMapper judicialFreezeMapper;

    /**
     * 查询司法冻结情况
     * 
     * @param id 司法冻结情况ID
     * @return 司法冻结情况
     */
    @Override
    public JudicialFreeze selectJudicialFreezeById(Long id)
    {
        return judicialFreezeMapper.selectJudicialFreezeById(id);
    }

    /**
     * 查询司法冻结情况列表
     * 
     * @param judicialFreeze 司法冻结情况
     * @return 司法冻结情况
     */
    @Override
    public List<JudicialFreeze> selectJudicialFreezeList(JudicialFreeze judicialFreeze)
    {
        return judicialFreezeMapper.selectJudicialFreezeList(judicialFreeze);
    }

    /**
     * 新增司法冻结情况
     * 
     * @param judicialFreeze 司法冻结情况
     * @return 结果
     */
    @Override
    public int insertJudicialFreeze(JudicialFreeze judicialFreeze)
    {
        judicialFreeze.setCreateTime(DateUtils.getNowDate());
        return judicialFreezeMapper.insertJudicialFreeze(judicialFreeze);
    }

    /**
     * 修改司法冻结情况
     * 
     * @param judicialFreeze 司法冻结情况
     * @return 结果
     */
    @Override
    public int updateJudicialFreeze(JudicialFreeze judicialFreeze)
    {
        return judicialFreezeMapper.updateJudicialFreeze(judicialFreeze);
    }

    /**
     * 删除司法冻结情况对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteJudicialFreezeByIds(String ids)
    {
        return judicialFreezeMapper.deleteJudicialFreezeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除司法冻结情况信息
     * 
     * @param id 司法冻结情况ID
     * @return 结果
     */
    @Override
    public int deleteJudicialFreezeById(Long id)
    {
        return judicialFreezeMapper.deleteJudicialFreezeById(id);
    }
}
