package com.zking.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.entity.Hall;
import com.zking.mapper.ICinemaMapper;
import com.zking.mapper.IHallMapper;
import com.zking.service.ICinemaService;
import com.zking.service.IHallService;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class HallServiceImpl implements IHallService {
    private final IHallMapper hallMapper;
    @Override
    public List<Hall> findByHall(int cinema) {
        return hallMapper.selectList(new QueryWrapper<Hall>().eq("cinema_id",cinema));
    }
}
