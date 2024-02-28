package com.zking.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.List; 
/**
 * 电影信息实体对象
 */
@TableName("movie")
@Data@AllArgsConstructor@NoArgsConstructor
public class Movie {
	@TableId(type = IdType.AUTO)
	private Integer movieId;
	private String movieCnName;
	private String movieFgName;
	private String movieActor;     //演职人员
	private String movieDirector;  //导演
	private String movieDetail;    //电影详情
	private String movieDuration;  //电影时长
	private Integer movieScore;      //电影评分
	@TableField("movie_box")
	private Integer movieBoxOffice;   //票房
	@TableField("movie_commentCount")
	private Integer movieCommentCount; //电影参评人数
	@TableField("movie_releaseDate")
	private Date movieReleaseDate;        //上映时间
	private String movieCountry;    //制片地区
	private String moviePicture;    //电影海报地址
	private int movieState; 		 //电影状态 默认1 1：在线 0：下架
//	private List<Comment> commentList; //所有的评论信息
}
