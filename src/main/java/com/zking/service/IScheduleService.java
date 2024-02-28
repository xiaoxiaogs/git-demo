package com.zking.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.entity.Hall;
import com.zking.entity.Schedule;

import java.sql.Date;
import java.util.List;


public interface IScheduleService {
//      根据放映厅编号查询放映时间
    List<Schedule> findByHallId(List<Integer> hallId);
//    判断是否是当前还是明天
    boolean time(Date time);
    //    根据电影id和电影院id查询当天场次信息
    List<Schedule> findByMovieIdAndCinemaId(int cinemaId,int movieId);
    //    根据电影id和电影院id查询明天场次信息
    List<Schedule> findByMovieIdAndCinemaId1(int cinemaId,int movieId);
    //    根据场次ID查询该场次的数据
    Schedule findScheduleById(long scheduleId);

    List<Schedule> findAll(int pageNum);

    List<Schedule> find();
    int Max(int pageSize);


//    根据放映厅名称查询对应的数据
    List<Schedule> findByName(int pageNum,String hallName);
//    查询所有一号厅
    List<Schedule> find1(String hallName);
//    根据放映厅分页
    int Max1(int pageSize,String hallName);

    //    添加场次
    int insert(Schedule schedule);


//    根据ID删除
    int delete11(int id);
}
