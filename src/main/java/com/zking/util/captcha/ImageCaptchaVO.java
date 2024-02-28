package com.zking.util.captcha;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * Created by 刘庆文 on 2022-2022-8-9, project: SsmAndBootAndCloud.
 * <p>
 * Author: 刘庆文
 * Create Date: 2022-8-9
 * Project: me.liuqingwen.captcha in project: SsmAndBootAndCloud
 * <p>
 * Notice: If you are using this class or file, check it and do some modification.
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ImageCaptchaVO implements Serializable
{
    /**
     * 背景图
     */
    private String backgroundImage;

    /**
     * 移动图
     */
    private String sliderImage;
    /** 背景图片宽度.*/
    private Integer backgroundImageWidth;
    /** 背景图片高度.*/
    private Integer backgroundImageHeight;
    /** 滑动图片宽度.*/
    private Integer sliderImageWidth;
    /** 滑动图片高度.*/
    private Integer sliderImageHeight;
    /**
     * data
     */
    private Object data;
}
