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
public class CaptchaResponse<T> implements Serializable
{
    private String id;
    private T captcha;

    public static <T> CaptchaResponse<T> of(String id, T data) {
        return new CaptchaResponse<T>(id, data);
    }
}
