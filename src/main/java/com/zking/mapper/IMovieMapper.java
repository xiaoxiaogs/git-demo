package com.zking.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Movie;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface IMovieMapper extends BaseMapper<Movie> {
//    根据状态查询列表
    List<Movie> selectAllMovies(int movieStare);
    //    查询所有
    List<Movie> findAll();

//    根据类型查询
    Page<Movie> SelectTypeAll(String typename);

//    下架电影
    int updateId(int id);
}
