package com.zking.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.entity.Hall;
import com.zking.entity.Schedule;
import com.zking.mapper.ICinemaMapper;
import com.zking.mapper.IHallMapper;
import com.zking.mapper.IScheduleMapper;
import com.zking.service.ICinemaService;
import com.zking.service.IScheduleService;
import lombok.RequiredArgsConstructor;

import java.sql.Date;
import java.util.List;

@RequiredArgsConstructor
public class ScheduleServiceImpl implements IScheduleService {
    private final IScheduleMapper scheduleMapper;
    private final IHallMapper hallMapper;
    private final ICinemaMapper cinemaMapper;
    @Override
    public List<Schedule> findByHallId(List<Integer> hallId) {
        return scheduleMapper.selectScheduleAll(hallId);
    }

    @Override
    public boolean time(Date time) {
        return scheduleMapper.time(time);
    }

    @Override
    public List<Schedule> findByMovieIdAndCinemaId(int cinemaId, int movieId) {
        return scheduleMapper.selectByMovieIdAndCinemaId(cinemaId,movieId);
    }
    @Override
    public List<Schedule> findByMovieIdAndCinemaId1(int cinemaId, int movieId) {
        return scheduleMapper.selectByMovieIdAndCinemaId1(cinemaId,movieId);
    }

    @Override
    public Schedule findScheduleById(long scheduleId) {
        QueryWrapper<Schedule> wrapper = new QueryWrapper<>();
        Schedule scheduleId1 = scheduleMapper.selectOne(wrapper.eq("schedule_id", scheduleId));
//        根据场次的放映厅的ID查询放映厅的对象
        Hall hall = hallMapper.selectOne(new QueryWrapper<Hall>().eq("hall_id", scheduleId1.getHallId()));
//        根据影院编号找到哪个电影院
        Cinema cinema = cinemaMapper.selectOne(new QueryWrapper<Cinema>().eq("cinema_id", hall.getCinemaId()));

//        根据场次id查询订单列表
        return null;

    }

    @Override
    public List<Schedule> findAll(int pageNum) {
        return scheduleMapper.selectAll(pageNum);
    }
    @Override
    public List<Schedule> find() {
        return scheduleMapper.select1();
    }
    @Override
    public int Max(int pageSize) {
        List<Schedule> list = find();
        int total = list.size();
        int maxPage = total/pageSize;
        if(total%pageSize!=0){
            maxPage++;
        }
        return maxPage;
    }

    @Override
    public List<Schedule> findByName(int pageNum,String hallName) {
        return scheduleMapper.selectByName(pageNum,hallName);
    }

    @Override
    public List<Schedule> find1(String hallName) {
        return scheduleMapper.find1(hallName);
    }


    @Override
    public int Max1(int pageSize,String hallName) {
        List<Schedule> list = find1(hallName);
        int total = list.size();
        int maxPage = total/pageSize;
        if(total%pageSize!=0){
            maxPage++;
        }
        return maxPage;
    }

    @Override
    public int insert(Schedule schedule) {
        return scheduleMapper.insert(
              new Schedule(  null,
                      schedule.getHallId(),
                      schedule.getMovieId(),
                      schedule.getScheduleStartTime(),
                      schedule.getSchedulePrice(),null,
                      schedule.getScheduleState(),null,null)
        );
    }

    @Override
    public int delete11(int id) {
        return scheduleMapper.deleteById(id);
    }


}
