package com.zking.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zking.entity.Movie;
import com.zking.entity.MovieType;
import com.zking.entity.MovieTypeId;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface IMovieTypeMapper extends BaseMapper<MovieType> {
//    根据状态查询列表
    List<Movie> selectAllMovies(int movieStare);
//      根据类型查询对应的数据
    List<MovieTypeId> selectTypeAll(@Param("typeId") int typeId, @Param("movieStart") int movieStart);

}
