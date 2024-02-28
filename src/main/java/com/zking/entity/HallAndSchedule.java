package com.zking.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data@AllArgsConstructor@NoArgsConstructor
public class HallAndSchedule {
    private long hallId;
    private String hallName;  //放映厅名称
    private int hallCapacity; //放映厅容量
    private long cinemaId;  //所属影院编号
//    private List<Schedule> ScheduleList; //所有的电影场次集合
}
