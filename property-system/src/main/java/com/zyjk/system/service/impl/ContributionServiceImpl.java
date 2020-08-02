package com.zyjk.system.service.impl;

import java.util.List;
import com.zyjk.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zyjk.system.mapper.ContributionMapper;
import com.zyjk.system.domain.Contribution;
import com.zyjk.system.service.IContributionService;
import com.zyjk.common.core.text.Convert;

/**
 * 出资情况Service业务层处理
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Service
public class ContributionServiceImpl implements IContributionService 
{
    @Autowired
    private ContributionMapper contributionMapper;

    /**
     * 查询出资情况
     * 
     * @param id 出资情况ID
     * @return 出资情况
     */
    @Override
    public Contribution selectContributionById(Long id)
    {
        return contributionMapper.selectContributionById(id);
    }

    /**
     * 查询出资情况列表
     * 
     * @param contribution 出资情况
     * @return 出资情况
     */
    @Override
    public List<Contribution> selectContributionList(Contribution contribution)
    {
        return contributionMapper.selectContributionList(contribution);
    }

    /**
     * 新增出资情况
     * 
     * @param contribution 出资情况
     * @return 结果
     */
    @Override
    public int insertContribution(Contribution contribution)
    {
        contribution.setCreateTime(DateUtils.getNowDate());
        return contributionMapper.insertContribution(contribution);
    }

    /**
     * 修改出资情况
     * 
     * @param contribution 出资情况
     * @return 结果
     */
    @Override
    public int updateContribution(Contribution contribution)
    {
        return contributionMapper.updateContribution(contribution);
    }

    /**
     * 删除出资情况对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteContributionByIds(String ids)
    {
        return contributionMapper.deleteContributionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除出资情况信息
     * 
     * @param id 出资情况ID
     * @return 结果
     */
    @Override
    public int deleteContributionById(Long id)
    {
        return contributionMapper.deleteContributionById(id);
    }
}
