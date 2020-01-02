package com.mbp.service;

import com.mbp.dao.OrderTableMapper;
import com.mbp.entity.OrderTable;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author 王攀
 * @date Created in 13:30 2019/12/30
 */
public class PayService {
    @Autowired
    OrderTableMapper orderTableMapper;

    //查询订单
    public OrderTable findOrder(String orderNumber){
        return orderTableMapper.selectByPrimaryKey(orderNumber);
    }

    //修改订单状态为支付成功
    public void paySuccess(OrderTable orderTable){
        orderTable.setOrderStatus(1);
        orderTableMapper.updateByPrimaryKeySelective(orderTable);
    }

    //根据订单号查询订单信息
    public OrderTable findOrderInfo(String orderNumber){
        return orderTableMapper.findOrderInfo(orderNumber);
    }
}
