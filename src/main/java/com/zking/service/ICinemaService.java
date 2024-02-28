package com.zking.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


public interface ICinemaService {
//    查询影院所有信息
    Page<Cinema> findAll(int pageNum);

//    根据品牌查询
    Page<Cinema> findBybrand(String brand,int pageNum);

//   查询电影院所有品牌
    List<Cinema> findBrandAll();

//    根据影院ID查询
    Cinema findById(int id);

//    
}
