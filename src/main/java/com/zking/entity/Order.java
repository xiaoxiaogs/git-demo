package com.zking.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

/**
 * 订单表实体对象
 */
@TableName("orderinfo")
@Data@NoArgsConstructor@AllArgsConstructor
public class Order {
	@TableId(type = IdType.AUTO)
	@TableField("order_id")
	private Integer orderId;
	@TableField("user_id")
	private Integer userIid;   //所属用户编号
	@TableField("schedule_id")
	private Integer scheduleIid;    //所属场次编号,通过schedule_id-》场次信息-》放映厅信息+电影信息
	@TableField("order_position")
	private String orderPosition; //电影票座位信息
	@TableField("order_state")
	private Integer orderState;  //订单状态 0：退票中 -1：无法退票  1：已支付 2：退票成功
	@TableField("order_price")
	private Integer orderPrice; //订单价格
	@TableField("order_time")
	private Date orderTime; //订单支付时间
}
