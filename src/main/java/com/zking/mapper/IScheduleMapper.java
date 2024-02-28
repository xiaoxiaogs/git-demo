package com.zking.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.entity.Schedule;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;

@Mapper
public interface IScheduleMapper extends BaseMapper<Schedule> {
//      根据放映厅编号 查询多个场次
    List<Schedule> selectScheduleAll(List<Integer> hallId);
//    根据电影id和电影院id查询当天场次信息
    List<Schedule> selectByMovieIdAndCinemaId(@Param("cinemaId") int cinemaId, @Param("movieId") int movieId);
    //    根据电影id和电影院id查询明天场次信息
    List<Schedule> selectByMovieIdAndCinemaId1(@Param("cinemaId") int cinemaId, @Param("movieId") int movieId);
    //    判断是否是当前还是明天
    boolean time(Date time);



//    查询所有的场次
    List<Schedule> selectAll(@Param("pageNum") int pageNum);


    List<Schedule> select1();


    //    根据放映厅名称查询对应的数据
    List<Schedule> selectByName(@Param("pageNum") int pageNum,@Param("hallName") String hallName);
//    根据放映厅名称查询
    List<Schedule> find1(String hallName);

}
