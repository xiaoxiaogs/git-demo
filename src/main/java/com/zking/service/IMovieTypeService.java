package com.zking.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Movie;
import com.zking.entity.MovieType;
import com.zking.entity.MovieTypeId;

import java.util.List;

// 继承IService<实体类>，使用Mybatis-Plus自带的一些Service方法
public interface IMovieTypeService {

//  查询电影所有类型
    List<MovieType> findAllType();


    //  根据状态查询热门排序
    Page<Movie> sortMovieStartById(int start,int pageNum,String address);

    MovieType findAllId(String name);

//    根据类型ID查询对应的电影
//    Page<Movie> findTypeAll(int pageNum,int typeId,int start);
    List<MovieTypeId> findTypeAll(int typeId, int start);
}
