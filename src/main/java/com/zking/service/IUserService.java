package com.zking.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Schedule;
import com.zking.entity.User;

import java.util.List;


public interface IUserService {
//    根据账号密码登录
    User login(String name,String pass);
    //注册
    Integer register(User user);
    //根据用户名去查询
    List<User> findUserByName(String user_name);

    //根据账号查询
    Page<User> findByUserName(String uName, int pageNum);
    //查询所有用户
    Page<User> findAll(int pageNum);


    //添加用户
    int AddUser(User User);

    //重置密码
    int updatePass(int id);
    //    根据用户ID修改状态
    int updateValid( int id);
}
