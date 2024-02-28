package com.zking.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@AllArgsConstructor@NoArgsConstructor
@TableName("movie_type")
public class MovieType {
    @TableField("movie_type_id")
    Integer movieTypeId;
    @TableField("movie_type_name")
    String movieTypeName;
}
