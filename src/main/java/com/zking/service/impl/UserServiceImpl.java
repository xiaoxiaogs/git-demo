package com.zking.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.entity.Hall;
import com.zking.entity.Schedule;
import com.zking.entity.User;
import com.zking.mapper.ICinemaMapper;
import com.zking.mapper.IHallMapper;
import com.zking.mapper.IScheduleMapper;
import com.zking.mapper.IUserMapper;
import com.zking.service.IScheduleService;
import com.zking.service.IUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
public class UserServiceImpl implements IUserService {
    private final IUserMapper userMapper;
    @Override
    public User login(String name, String pass) {
        return userMapper.selectOne(new QueryWrapper<User>().eq("user_name",name).eq("user_pwd",pass));
    }
    @Override
    public Integer register(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public List<User> findUserByName(String user_name) {
        return userMapper.findUserByName(user_name);
    }
    @Override
    public Page<User> findAll(int pageNum) {
        Page<User> userPage = new Page<>(pageNum, 6);
        return userMapper.selectPage(userPage,null);
    }
    @Override
    public Page<User> findByUserName(String uName, int pageNum) {
        Page<User> userPage = new Page<>(pageNum, 6);
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        return userMapper.selectPage(userPage,wrapper.like("user_name",uName));
    }

    @Override
    public int AddUser(User User) {

        return userMapper.insert(
                new User(null, User.getUserName(), User.getUserPwd(),User.getUserEmail(),null,null,null));

    };

    @Override
    public int updatePass(int id) {
        return userMapper.UpdatePass(id);
    }

    @Override
    public int updateValid(int id) {
        return userMapper.Updatevalid(id);
    }
}
