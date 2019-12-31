package com.mbp.entity;

import com.sun.org.apache.bcel.internal.classfile.Code;

/**
 * @author 邓宁
 * @date Created in 13:56 2019/12/30
 */
public class Register {
    private PersonAccount personAccount;
    private String verificationCode;

    public PersonAccount getPersonAccount() {
        return personAccount;
    }

    public void setPersonAccount(PersonAccount personAccount) {
        this.personAccount = personAccount;
    }

    public String getVerificationCode() {
        return verificationCode;
    }

    public void setVerificationCode(String verificationCode) {
        this.verificationCode = verificationCode;
    }
}
