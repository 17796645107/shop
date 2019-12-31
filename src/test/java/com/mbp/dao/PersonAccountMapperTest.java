package com.mbp.dao;

import com.mbp.BaseTest;
import com.mbp.entity.PersonAccount;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import java.text.SimpleDateFormat;
import java.util.Date;

import static org.junit.Assert.*;

public class PersonAccountMapperTest extends BaseTest {
    @Autowired
    private PersonAccountMapper personAccountMapper;

    @Test
    public void insert() {

    }

    @Test
    public void insertSelective() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        PersonAccount personAccount = new PersonAccount();
        personAccount.setPersonId(5);
        personAccount.setTelephone("13333713719");
        personAccount.setPassword("123456");
        //personAccount.setCreateTime(new Date(simpleDateFormat.format(new Date())));
        assertEquals(1,personAccountMapper.insertSelective(personAccount));
    }

    @Test
    public void selectByPersonAccount() {
        PersonAccount account = new PersonAccount();
        account.setTelephone("13333713719");
        account.setPassword("123456");
        PersonAccount personAccount = personAccountMapper.selectByPersonAccount(account);
        System.out.println(personAccount.toString());
    }
}
