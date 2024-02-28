package com.zking.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.entity.Movie;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ICinemaMapper extends BaseMapper<Cinema> {
    public Page<Cinema> selectAll();

//    根据品牌查询
    List<Cinema> selectAllBrand();
}
