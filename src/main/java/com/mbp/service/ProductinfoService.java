package com.mbp.service;

import com.mbp.dao.ProductInfoMapper;
import com.mbp.entity.ProductInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName ProductinfoService
 * @Description: TODO
 * @Author moon
 * @Date 2019/12/31
 * @Version V1.0
 **/
@Service
public class ProductinfoService {

    /**
     * 注入商品信息Mapper
     */
    @Autowired
    ProductInfoMapper productInfoMapper;

    /**
     * 查询热销商品信息
     * @return
     */
    public List<ProductInfo> selectProductInfoByProductSaleNum() {
        List<ProductInfo> productInfos = productInfoMapper.selectProductInfoByProductSaleNum();

        //输出结果
        System.out.println(productInfos.size());
        for (ProductInfo productInfo:productInfos){
            System.out.println(productInfo+"***"+productInfo.getModel()+"****"+productInfo.getStock());
        }
        return productInfos;
    }

    /**
     * 查询更多商品
     * @return
     */
    public List<ProductInfo> selectProductInfoBy0Go10() {
        List<ProductInfo> productInfoMores = productInfoMapper.selectProductInfoBy0Go10();
        //打印
        System.out.println(productInfoMores.size());
        return productInfoMores;
    }

    /**
     * 查询华为最新单品
     * @return
     */
    public List<ProductInfo> selectProductInfoByHuaWei() {
        List<ProductInfo> huaweis = productInfoMapper.selectProductInfoByHuaWei();
        return huaweis;
    }

    /**
     * 查询苹果最新单品
     * @return
     */
    public List<ProductInfo> selectProductInfoByIphone() {
        List<ProductInfo> iphones = productInfoMapper.selectProductInfoByIphone();
        return iphones;
    }

    /**
     * 查看小米专区最新产品
     * @return
     */
    public List<ProductInfo> selectProductInfoByMi() {
        List<ProductInfo> mis = productInfoMapper.selectProductInfoByMi();
        return mis;
    }
}
