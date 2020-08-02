package com.zyjk.system.service.impl;

import java.util.List;
import com.zyjk.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zyjk.system.mapper.CatalogMapper;
import com.zyjk.system.domain.Catalog;
import com.zyjk.system.service.ICatalogService;
import com.zyjk.common.core.text.Convert;

/**
 * 占有登记Service业务层处理
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
@Service
public class CatalogServiceImpl implements ICatalogService 
{
    @Autowired
    private CatalogMapper catalogMapper;

    /**
     * 查询占有登记
     * 
     * @param id 占有登记ID
     * @return 占有登记
     */
    @Override
    public Catalog selectCatalogById(Long id)
    {
        return catalogMapper.selectCatalogById(id);
    }

    /**
     * 查询占有登记列表
     * 
     * @param catalog 占有登记
     * @return 占有登记
     */
    @Override
    public List<Catalog> selectCatalogList(Catalog catalog)
    {
        return catalogMapper.selectCatalogList(catalog);
    }

    /**
     * 新增占有登记
     * 
     * @param catalog 占有登记
     * @return 结果
     */
    @Override
    public int insertCatalog(Catalog catalog)
    {
        catalog.setCreateTime(DateUtils.getNowDate());
        return catalogMapper.insertCatalog(catalog);
    }

    /**
     * 修改占有登记
     * 
     * @param catalog 占有登记
     * @return 结果
     */
    @Override
    public int updateCatalog(Catalog catalog)
    {
        return catalogMapper.updateCatalog(catalog);
    }

    /**
     * 删除占有登记对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCatalogByIds(String ids)
    {
        return catalogMapper.deleteCatalogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除占有登记信息
     * 
     * @param id 占有登记ID
     * @return 结果
     */
    @Override
    public int deleteCatalogById(Long id)
    {
        return catalogMapper.deleteCatalogById(id);
    }
}
