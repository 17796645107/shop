package com.mbp.service;

import com.mbp.dao.ModelMapper;
import com.mbp.entity.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ModelServiceImpl implements ModelService {

    /**
     * 注入机型mapper
     */
    @Autowired
    ModelMapper modelMapper;

    @Override
    public List<Model> selectModelByTime() {

        List<Model> models =  modelMapper.selectModelByTime();

        return null;
    }
}
