package com.zyjk.system.service;

import java.util.List;
import com.zyjk.system.domain.EquityMortgage;

/**
 * 股权抵押Service接口
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public interface IEquityMortgageService 
{
    /**
     * 查询股权抵押
     * 
     * @param id 股权抵押ID
     * @return 股权抵押
     */
    public EquityMortgage selectEquityMortgageById(Long id);

    /**
     * 查询股权抵押列表
     * 
     * @param equityMortgage 股权抵押
     * @return 股权抵押集合
     */
    public List<EquityMortgage> selectEquityMortgageList(EquityMortgage equityMortgage);

    /**
     * 新增股权抵押
     * 
     * @param equityMortgage 股权抵押
     * @return 结果
     */
    public int insertEquityMortgage(EquityMortgage equityMortgage);

    /**
     * 修改股权抵押
     * 
     * @param equityMortgage 股权抵押
     * @return 结果
     */
    public int updateEquityMortgage(EquityMortgage equityMortgage);

    /**
     * 批量删除股权抵押
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteEquityMortgageByIds(String ids);

    /**
     * 删除股权抵押信息
     * 
     * @param id 股权抵押ID
     * @return 结果
     */
    public int deleteEquityMortgageById(Long id);
}
