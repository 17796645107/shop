package com.mbp.service;

import com.mbp.dao.ModelMapper;
import com.mbp.entity.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "modeService")
public class ModelService {

    /**
     * 注入机型mapper
     */
    @Autowired
    ModelMapper modelMapper;

    public List<Model> selectModelByTime() {
        List<Model> models =  modelMapper.selectModelByTime();
        return models;
    }
}
