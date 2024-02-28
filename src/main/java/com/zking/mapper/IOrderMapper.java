package com.zking.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zking.entity.Order;
import com.zking.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IOrderMapper extends BaseMapper<Order> {
    // 自定SQL语句配置

//     根据场次id查询哪些座位被购买
    List<Order> selectAllposition(int schedule);

}
