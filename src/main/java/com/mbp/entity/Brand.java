package com.mbp.entity;

import java.io.Serializable;
import java.util.Date;

public class Brand implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column brand.brand_id
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    private Integer brandId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column brand.brand_name
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    private String brandName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column brand.create_time
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table brand
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column brand.brand_id
     *
     * @return the value of brand.brand_id
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    public Integer getBrandId() {
        return brandId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column brand.brand_id
     *
     * @param brandId the value for brand.brand_id
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column brand.brand_name
     *
     * @return the value of brand.brand_name
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    public String getBrandName() {
        return brandName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column brand.brand_name
     *
     * @param brandName the value for brand.brand_name
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    public void setBrandName(String brandName) {
        this.brandName = brandName == null ? null : brandName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column brand.create_time
     *
     * @return the value of brand.create_time
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column brand.create_time
     *
     * @param createTime the value for brand.create_time
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}