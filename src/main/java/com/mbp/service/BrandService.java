package com.mbp.service;

import com.mbp.entity.Brand;

import java.util.List;

public interface BrandService {

    /*
     * 查询商品品牌
     *
     * */
    List<Brand> selectAll();

}
