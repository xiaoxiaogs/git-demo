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
 * 电影院表实体对象
 */
@TableName("cinema")
@Data@NoArgsConstructor@AllArgsConstructor
public class Cinema {
	@TableId(type = IdType.AUTO)
	@TableField("cinema_id")
	private long cinemaId;
	@TableField("cinema_name")
	private String cinemaName;    //影院名称
	@TableField("cinema_brand")
	private String cinemaBrand;
	@TableField("cinema_address")
	private String cinemaAddress; //影院地址
//	private Cinema hallCinema;//所属影院
//	private List<Hall> hallList;   //所有的放映厅集合
	

	
	
}
