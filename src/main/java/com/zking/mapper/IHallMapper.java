package com.zking.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zking.entity.Hall;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IHallMapper extends BaseMapper<Hall> {
    Hall selectSchedule(int cinemaId);
}
