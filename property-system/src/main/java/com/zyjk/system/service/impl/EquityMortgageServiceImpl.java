package com.zyjk.system.service.impl;

import java.util.List;
import com.zyjk.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zyjk.system.mapper.EquityMortgageMapper;
import com.zyjk.system.domain.EquityMortgage;
import com.zyjk.system.service.IEquityMortgageService;
import com.zyjk.common.core.text.Convert;

/**
 * 股权抵押Service业务层处理
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Service
public class EquityMortgageServiceImpl implements IEquityMortgageService 
{
    @Autowired
    private EquityMortgageMapper equityMortgageMapper;

    /**
     * 查询股权抵押
     * 
     * @param id 股权抵押ID
     * @return 股权抵押
     */
    @Override
    public EquityMortgage selectEquityMortgageById(Long id)
    {
        return equityMortgageMapper.selectEquityMortgageById(id);
    }

    /**
     * 查询股权抵押列表
     * 
     * @param equityMortgage 股权抵押
     * @return 股权抵押
     */
    @Override
    public List<EquityMortgage> selectEquityMortgageList(EquityMortgage equityMortgage)
    {
        return equityMortgageMapper.selectEquityMortgageList(equityMortgage);
    }

    /**
     * 新增股权抵押
     * 
     * @param equityMortgage 股权抵押
     * @return 结果
     */
    @Override
    public int insertEquityMortgage(EquityMortgage equityMortgage)
    {
        equityMortgage.setCreateTime(DateUtils.getNowDate());
        return equityMortgageMapper.insertEquityMortgage(equityMortgage);
    }

    /**
     * 修改股权抵押
     * 
     * @param equityMortgage 股权抵押
     * @return 结果
     */
    @Override
    public int updateEquityMortgage(EquityMortgage equityMortgage)
    {
        return equityMortgageMapper.updateEquityMortgage(equityMortgage);
    }

    /**
     * 删除股权抵押对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteEquityMortgageByIds(String ids)
    {
        return equityMortgageMapper.deleteEquityMortgageByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除股权抵押信息
     * 
     * @param id 股权抵押ID
     * @return 结果
     */
    @Override
    public int deleteEquityMortgageById(Long id)
    {
        return equityMortgageMapper.deleteEquityMortgageById(id);
    }
}
