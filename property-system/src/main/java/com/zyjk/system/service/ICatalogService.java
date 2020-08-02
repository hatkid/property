package com.zyjk.system.service;

import java.util.List;
import com.zyjk.system.domain.Catalog;

/**
 * 占有登记Service接口
 * 
 * @author lvzhi
 * @date 2020-08-02
 */
public interface ICatalogService 
{
    /**
     * 查询占有登记
     * 
     * @param id 占有登记ID
     * @return 占有登记
     */
    public Catalog selectCatalogById(Long id);

    /**
     * 查询占有登记列表
     * 
     * @param catalog 占有登记
     * @return 占有登记集合
     */
    public List<Catalog> selectCatalogList(Catalog catalog);

    /**
     * 新增占有登记
     * 
     * @param catalog 占有登记
     * @return 结果
     */
    public int insertCatalog(Catalog catalog);

    /**
     * 修改占有登记
     * 
     * @param catalog 占有登记
     * @return 结果
     */
    public int updateCatalog(Catalog catalog);

    /**
     * 批量删除占有登记
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteCatalogByIds(String ids);

    /**
     * 删除占有登记信息
     * 
     * @param id 占有登记ID
     * @return 结果
     */
    public int deleteCatalogById(Long id);
}
