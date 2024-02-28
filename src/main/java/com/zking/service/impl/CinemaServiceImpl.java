package com.zking.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.mapper.ICinemaMapper;
import com.zking.service.ICinemaService;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class CinemaServiceImpl implements ICinemaService {
    private final ICinemaMapper cinemaMapper;
    @Override
    public Page<Cinema> findAll(int pageNum) {
        Page<Cinema> cinemaPage = new Page<>(pageNum,6);
        QueryWrapper<Cinema> wrapper = new QueryWrapper<>();
        return cinemaMapper.selectPage(cinemaPage, null);
    }

    @Override
    public Page<Cinema> findBybrand(String brand,int pageNum) {
        Page<Cinema> cinemaPage = new Page<>(pageNum,6);
        QueryWrapper<Cinema> wrapper = new QueryWrapper<>();
        return cinemaMapper.selectPage(cinemaPage,wrapper.eq("cinema_brand",brand));
    }

    @Override
    public List<Cinema> findBrandAll() {
        return cinemaMapper.selectAllBrand();
    }

    @Override
    public Cinema findById(int id) {
        return cinemaMapper.selectOne(new QueryWrapper<Cinema>().eq("cinema_id",id));
    }
}
