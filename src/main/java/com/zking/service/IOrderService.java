package com.zking.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Order;

import java.util.List;

public interface IOrderService {
//    根据场次id查询哪些座位被购买
    List<Order> findAlloposition(int scheduleId);
//    根据用户ID、场次ID、价格、座位号插入数据
    int insert(Order order);
    Page<Order> findAll(int pageNum);


//    根据用户Id查询
    Page<Order> findByUserId(int pageNum,int id);
}
