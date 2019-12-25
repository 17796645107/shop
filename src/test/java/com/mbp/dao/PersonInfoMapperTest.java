package com.mbp.dao;

import com.mbp.BaseTest;

import com.mbp.entity.PersonInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class PersonInfoMapperTest extends BaseTest {

    @Autowired
    private PersonInfoMapper personInfoMapper;

    @Test
    public void deleteByPrimaryKey() {
    }

    @Test
    public void insert() {
    }

    @Test
    public void insertSelective() {
    }

    @Test
    public void selectByPrimaryKey() {
        PersonInfo personInfo = personInfoMapper.selectByPrimaryKey(2);
        System.out.println(personInfo.getUsername());
        System.out.println(personInfo.getSex());
        System.out.println(personInfo.getBirthday());
        System.out.println(personInfo.getCreateTime());
        System.out.println(personInfo.getEmail());
        System.out.println(personInfo.getTelephone());
    }

    @Test
    public void updateByPrimaryKeySelective() {
    }

    @Test
    public void updateByPrimaryKey() {
    }
}
