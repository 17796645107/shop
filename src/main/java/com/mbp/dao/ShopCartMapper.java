package com.mbp.dao;

import com.mbp.entity.ShopCart;

public interface ShopCartMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_cart
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    int deleteByPrimaryKey(Integer shopCartId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_cart
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    int insert(ShopCart record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_cart
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    int insertSelective(ShopCart record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_cart
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    ShopCart selectByPrimaryKey(Integer shopCartId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_cart
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    int updateByPrimaryKeySelective(ShopCart record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shop_cart
     *
     * @mbg.generated Wed Dec 25 17:55:57 CST 2019
     */
    int updateByPrimaryKey(ShopCart record);
}