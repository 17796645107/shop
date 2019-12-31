package com.mbp.service;

import com.mbp.dao.PersonAccountMapper;
import com.mbp.entity.PersonAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 邓宁
 * @date Created in 15:56 2019/12/25
 */
@Service
public class UserService {

    @Autowired
    private PersonAccountMapper personAccountMapper;

    public PersonAccount userLogin(PersonAccount personAccount) {
        return personAccountMapper.selectByPersonAccount(personAccount);
    }

    public int userRegister(PersonAccount personAccount) {
        return personAccountMapper.insert(personAccount);
    }
}
