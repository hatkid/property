package com.zyjk.system.mapper;

import java.util.List;
import com.zyjk.system.domain.Contribution;

/**
 * 出资情况Mapper接口
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public interface ContributionMapper 
{
    /**
     * 查询出资情况
     * 
     * @param id 出资情况ID
     * @return 出资情况
     */
    public Contribution selectContributionById(Long id);

    /**
     * 查询出资情况列表
     * 
     * @param contribution 出资情况
     * @return 出资情况集合
     */
    public List<Contribution> selectContributionList(Contribution contribution);

    /**
     * 新增出资情况
     * 
     * @param contribution 出资情况
     * @return 结果
     */
    public int insertContribution(Contribution contribution);

    /**
     * 修改出资情况
     * 
     * @param contribution 出资情况
     * @return 结果
     */
    public int updateContribution(Contribution contribution);

    /**
     * 删除出资情况
     * 
     * @param id 出资情况ID
     * @return 结果
     */
    public int deleteContributionById(Long id);

    /**
     * 批量删除出资情况
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteContributionByIds(String[] ids);
}
