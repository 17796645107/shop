package com.mbp.service;

import com.mbp.dao.BrandMapper;
import com.mbp.entity.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BrandService {

    /*注入mapper*/
    @Autowired
    BrandMapper brandMapper;

    public List<Brand> selectAll() {
        //调取方法
        List<Brand> brands = brandMapper.selectAll();
        return brands;
    }
}
