package com.zking.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data@AllArgsConstructor@NoArgsConstructor
@TableName("movie_type_id")
public class MovieTypeId {
    @TableField("id")
    Integer id;
    @TableField("movie_id")
    Integer movieId;
    @TableField("movie_type_id")
    Integer movieTypeId;
    private String movieCnName;
    private String movieFgName;
    private String movieActor;     //演职人员
    private String movieDirector;  //导演
    private String movieDetail;    //电影详情
    private String movieDuration;  //电影时长
    private float movieScore;      //电影评分
    @TableField("movie_box")
    private float movieBoxOffice;   //票房
    @TableField("movie_commentCount")
    private long movieCommentCount; //电影参评人数
    @TableField("movie_releaseDate")
    private Date movieReleaseDate;        //上映时间
    private String movieCountry;    //制片地区
    private String moviePicture;    //电影海报地址
    private int movieState; 		 //电影状态 默认1 1：在线 0：下架
}
