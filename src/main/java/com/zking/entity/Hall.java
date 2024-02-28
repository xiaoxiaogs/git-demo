package com.zking.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 放映厅表实体对象
 */
@TableName("hall")
@Data@AllArgsConstructor@NoArgsConstructor
public class Hall {
	@TableId(type = IdType.AUTO)
	@TableField("hall_id")
	private long hallId;
	@TableField("hall_name")
	private String hallName;  //放映厅名称
	@TableField("hall_capacity")
	private int hallCapacity; //放映厅容量
	@TableField("cinema_id")
	private long cinemaId;  //所属影院编号
//	private List<Schedule> ScheduleList; //所有的电影场次集合
}
