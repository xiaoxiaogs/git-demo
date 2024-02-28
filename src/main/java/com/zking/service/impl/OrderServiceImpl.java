package com.zking.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Order;
import com.zking.entity.User;
import com.zking.mapper.IOrderMapper;
import com.zking.mapper.IUserMapper;
import com.zking.service.IOrderService;
import com.zking.service.IUserService;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class OrderServiceImpl implements IOrderService {
    private final IOrderMapper orderMapper;

    //     根据场次id查询哪些座位被购买
    @Override
    public List<Order> findAlloposition(int scheduleId) {
        return orderMapper.selectAllposition(scheduleId);
    }

    @Override
    public int insert(Order order) {
        return orderMapper.insert(order);
    }

    @Override
    public Page<Order> findAll(int pageNum) {
        Page<Order> orderPage = new Page<>(pageNum, 6);
        return orderMapper.selectPage(orderPage,null);
    }

    @Override
    public Page<Order> findByUserId(int pageNum,int id) {
        Page<Order> page = new Page<>(pageNum,10);
        QueryWrapper<Order> orderQueryWrapper = new QueryWrapper<>();
        return orderMapper.selectPage(page,orderQueryWrapper.like("user_id",id));
    }
}
