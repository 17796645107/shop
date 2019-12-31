package com.mbp.service;

import com.mbp.entity.Model;

import java.util.List;

public interface ModelService {

    /**
     * 查询新品
     * @return
     */
    List<Model> selectModelByTime();
}
