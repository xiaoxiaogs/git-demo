package com.zking.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zking.entity.Movie;
import com.zking.entity.MovieType;
import com.zking.entity.User;

import java.util.List;

// 继承IService<实体类>，使用Mybatis-Plus自带的一些Service方法
public interface IMovieService {
    List<Movie> findAllMovies(int movieStare);
//    根据状态查询列表
    public Page<Movie> findPage(int start,int pageNum,int pageSize);
//根据票房排行
    Page<Movie> sortMovieByBoxOffice(int start,int pageNum,String address);
//    根据热门排序
    Page<Movie> sortMovieByCount(int pageNum);
//    根据上映时间排序
    Page<Movie> sortMovieByReleaseDate();
//    查询所有
    List<Movie> findAll();

//    根据类型查询
    Page<Movie> findTypeAll(String typename,int pageNum);
    //查询所有电影
    Page<Movie> findMovieAll(int pageNum);

//    根据ID查询电影
    Movie findById(int id);

//    查询上映的所有电影
    List<Movie> findAll(int statr);

    //新增（上架）电影
    int insert(Movie movie);

    //下架电影
    int delete(int id);

    //修改
    int update(Movie movie);


//    根据电影名模糊搜索
    Page<Movie> findlikeAll(int pageNum,String movieName);


}
