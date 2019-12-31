package com.mbp.dao;

import com.mbp.BaseTest;

import com.mbp.entity.PersonAddress;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class PersonAddressMapperTest extends BaseTest {

    @Autowired
    private PersonAddressMapper personAddressMapper;

    @Test
    public void deleteByPrimaryKey() {
        assertEquals(1,personAddressMapper.deleteByPrimaryKey(4));
    }

    @Test
    public void insert() {
    }

    @Test
    public void insertSelective() {
        PersonAddress personAddress = new PersonAddress();
        personAddress.setName("李慢慢");
        personAddress.setTelephone("1777777777");
        personAddress.setPostCode(123456);
        personAddress.setProvince("河北省");
        personAddress.setCity("石家庄市");
        personAddress.setTown("包头");
        personAddress.setAddress("李慢慢一号");
        personAddress.setType(0);
        personAddress.setPersonId(1);
        assertEquals(1,personAddressMapper.insertSelective(personAddress));

    }

    @Test
    public void selectByPrimaryKey() {
        PersonAddress personAddress = personAddressMapper.selectByPrimaryKey(1);
        System.out.println(personAddress.getName());
        System.out.println(personAddress.getPersonId());
        System.out.println(personAddress.getTelephone());
        System.out.println(personAddress.getPostCode());
        System.out.println(personAddress.getProvince());
        System.out.println(personAddress.getCity());
        System.out.println(personAddress.getTown());
        System.out.println(personAddress.getAddress());
        System.out.println(personAddress.getType());

    }

    @Test
    public void updateByPrimaryKeySelective() {
        PersonAddress personAddress = new PersonAddress();
        personAddress.setName("李慢慢");
        personAddress.setTelephone("1777777777");
        personAddress.setPostCode(123456);
        personAddress.setProvince("河北省");
        personAddress.setCity("石家庄市");
        personAddress.setTown("包头");
        personAddress.setAddress("李慢慢二号");
        personAddress.setType(0);
        personAddress.setPersonId(1);
        personAddress.setId(4);
        assertEquals(1,personAddressMapper.updateByPrimaryKeySelective(personAddress));
    }

    @Test
    public void updateByPrimaryKey() {
    }
}
