package com.zking.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 用户表实体对象
 * @author Wxj
 */
@TableName("user")
@Data@AllArgsConstructor@NoArgsConstructor
public class User {
	@TableId(type = IdType.AUTO)
	@TableField("user_id")
	private Integer userId;
	@TableField("user_name")
	private String userName; //用户账号
	@TableField("user_pwd")
	@JsonIgnore //表示JSON格式下不
	private String userPwd;	  //用户密码
	@TableField("user_email")
	private String userEmail;    //用户邮箱
	@TableField("user_role")
	private Integer userRole;    //用户权限 0：普通会员 1：管理员
	@TableField("user_headImg")
	private String userHeadImg;  //用户头像地址
	private Integer valid;
}
