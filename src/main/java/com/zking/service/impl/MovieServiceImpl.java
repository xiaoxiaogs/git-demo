package com.zking.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Movie;
import com.zking.entity.MovieType;
import com.zking.entity.User;
import com.zking.mapper.IMovieMapper;
import com.zking.mapper.IUserMapper;
import com.zking.service.IMovieService;
import lombok.RequiredArgsConstructor;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

// 使用Mybatis-Plus自带的ServiceImpl<Mapper类，实体类>实现类
@RequiredArgsConstructor
public class MovieServiceImpl implements IMovieService {
    private final IMovieMapper movieMapper;

    @Override
    public List<Movie> findAllMovies(int movieStare) {
        List<Movie> moviePage = movieMapper.selectAllMovies(movieStare);
        return moviePage;
    }
    @Override
    public Page<Movie> findMovieAll(int pageNum) {
        Page<Movie> moviePage = new Page<>(pageNum,6);
        return movieMapper.selectPage(moviePage,null);
    }
    @Override
    public Page<Movie> findPage(int start, int pageNum, int pageSize) {
        Page<Movie> moviePage = new Page<>(pageNum,pageSize);
        QueryWrapper<Movie> wrapper = new QueryWrapper<>();
        return movieMapper.selectPage(moviePage,wrapper.eq("movie_state",start));
    }

    @Override
    public Page<Movie> sortMovieByBoxOffice(int start,int pageNum,String address) {
        Page<Movie> moviePage = new Page<>(pageNum,5);
        QueryWrapper<Movie> wrapper = new QueryWrapper<>();
        return movieMapper.selectPage(moviePage,wrapper.eq("movie_state",start)
                .eq(address!=null ,"movie_country",address).orderByDesc("movie_box"));
    }

    @Override
    public Page<Movie> sortMovieByCount(int pageNum) {
        Page<Movie> moviePage = new Page<>(pageNum,6);
        QueryWrapper<Movie> wrapper = new QueryWrapper<>();
        return movieMapper.selectPage(moviePage,wrapper.orderByDesc("movie_box"));
    }

    @Override
    public Page<Movie> sortMovieByReleaseDate() {
        return null;
    }

    @Override
    public List<Movie> findAll() {
        List<Movie> all = movieMapper.findAll();
        return all;
    }

    @Override
    public Page<Movie> findTypeAll(String typename,int pageNum) {
        return movieMapper.SelectTypeAll(typename);
    }

    @Override
    public Movie findById(int id) {
        return movieMapper.selectOne(new QueryWrapper<Movie>().eq("movie_id",id));
    }

    @Override
    public List<Movie> findAll(int statr) {
        return movieMapper.selectList(new QueryWrapper<Movie>().eq("movie_state",statr));
    }

    @Override
    public int insert(Movie movie) {
        Movie movie1 = new Movie(null, movie.getMovieCnName(), movie.getMovieFgName(),
                movie.getMovieActor(), movie.getMovieDirector(), movie.getMovieDetail(),
                movie.getMovieDuration(), null, null,
                null, movie.getMovieReleaseDate(), movie.getMovieCountry(),
                "1.jpg", movie.getMovieState());
        return movieMapper.insert(movie1);
    }

    @Override
    public int delete(int id) {
        return movieMapper.updateId(id);
    }

    @Override
    public int update(Movie movie) {
        return movieMapper.updateById(movie);
    }

    @Override
    public Page<Movie> findlikeAll(int pageNum,String movieName) {
        Page<Movie> moviePage = new Page<>(pageNum,6);
        QueryWrapper<Movie> wrapper = new QueryWrapper<>();
        return movieMapper.selectPage(moviePage,wrapper.like("movie_cn_name",movieName));
    }




    long count(){
        return movieMapper.selectCount(null);
    }
}
