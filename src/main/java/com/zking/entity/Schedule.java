package com.zking.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;


import java.sql.Date;
import java.time.LocalDateTime;
import java.util.List;

/**
 * 场次表实体对象
 */
@TableName("schedule")
@Data@AllArgsConstructor@NoArgsConstructor
public class Schedule {
	@TableId(type = IdType.AUTO)
	@TableField("schedule_id")
	private Integer scheduleId;
	@TableField("hall_id")
	private Integer hallId;      //所属放映厅
	@TableField("movie_id")
	private Integer movieId;     //放映的电影编号
	//@DateTimeFormat(pattern="yyyy-MM-dd")
	@TableField("schedule_startTime")
//	@DateTimeFormat(fallbackPatterns = {"yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd'T'HH:mm:ss"})
	private Date scheduleStartTime; //电影放映时间
	@TableField("schedule_price")
	private Integer schedulePrice; //售价
	@TableField("schedule_remain")
	private Integer scheduleRemain;  //剩余座位数
	@TableField("schedule_state")
	private Integer scheduleState;   //场次状态 1：上映中 0：下架
	@TableField("hall_name")
	private String hallName;  //放映厅名称
	@TableField("movie_cn_name")
	private String movieCnName;
//	private Hall schedule_hall; //所属放映厅对象
//	private Movie schedule_movie; //放映的电影
//	private List<Order> orderList; //所有的订单集合

}
