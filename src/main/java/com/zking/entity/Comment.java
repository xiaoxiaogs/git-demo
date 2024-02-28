package com.zking.entity;
/**
 * 评论表实体对象
 */

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@TableName("comment")
@Data@AllArgsConstructor@NoArgsConstructor
public class Comment {
	@TableId(type = IdType.AUTO)
	private long commentId;
	private long userId; //所属用户编号
	private String commentContent; //评论内容
	private long movieId; //所属电影编号
	private Date commentTime; //评论时间
	private User commentUser; //所属用户

}
