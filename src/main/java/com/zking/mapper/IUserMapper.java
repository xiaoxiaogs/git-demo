package com.zking.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zking.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface IUserMapper extends BaseMapper<User> {
    // 自定SQL语句配置

    //注册
    Integer addUser(User user);
//  判断用户名是否存在
    List<User> findUserByName(String user_name);

    //    根据用户ID重置密码
    int UpdatePass(int id);
    //    根据用户ID修改用户状态
    int Updatevalid(@Param("id") int id);
}
