package com.zking.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.entity.Hall;

import java.util.List;


public interface IHallService {


//    根据电影院名称查询 放映厅
    List<Hall> findByHall(int cinema);
}
