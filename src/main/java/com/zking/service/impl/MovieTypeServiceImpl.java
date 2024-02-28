package com.zking.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Movie;
import com.zking.entity.MovieType;
import com.zking.entity.MovieTypeId;
import com.zking.mapper.IMovieMapper;
import com.zking.mapper.IMovieTypeMapper;
import com.zking.service.IMovieService;
import com.zking.service.IMovieTypeService;
import lombok.RequiredArgsConstructor;

import java.util.List;

// 使用Mybatis-Plus自带的ServiceImpl<Mapper类，实体类>实现类
@RequiredArgsConstructor
public class MovieTypeServiceImpl implements IMovieTypeService {
    private final IMovieTypeMapper movieTypeMapper;
    private final IMovieMapper movieMapper;
    @Override
    public List<MovieType> findAllType() {
        return movieTypeMapper.selectList(null);
    }

    @Override
    public Page<Movie> sortMovieStartById(int start, int pageNum,String address) {
        Page<Movie> moviePage = new Page<>(pageNum,5);
        QueryWrapper<Movie> wrapper = new QueryWrapper<>();
        return movieMapper.selectPage(moviePage,wrapper.eq("movie_state",start)
                .eq(address!=null ,"movie_country",address).orderByDesc("movie_box"));
    }

    @Override
    public MovieType findAllId(String name) {
        return movieTypeMapper.selectOne(new QueryWrapper<MovieType>().eq("movie_type_name", name));
    }

    @Override
    public List<MovieTypeId> findTypeAll(int typeId, int start) {
        return movieTypeMapper.selectTypeAll(typeId,start);
    }


}
