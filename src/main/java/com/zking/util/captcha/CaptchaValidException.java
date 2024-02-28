package com.zking.util.captcha;

import cloud.tianai.captcha.common.exception.ImageCaptchaException;
import lombok.Getter;
import lombok.Setter;

/**
 * Created by 刘庆文 on 2022-2022-8-9, project: SsmAndBootAndCloud.
 * <p>
 * Author: 刘庆文
 * Create Date: 2022-8-9
 * Project: me.liuqingwen.captcha in project: SsmAndBootAndCloud
 * <p>
 * Notice: If you are using this class or file, check it and do some modification.
 */
@Getter
@Setter
public class CaptchaValidException extends ImageCaptchaException
{

    private String captchaType;

    public CaptchaValidException() {
    }

    public CaptchaValidException(String captchaType,String message) {
        super(message);
        this.captchaType = captchaType;
    }

    public CaptchaValidException(String message, Throwable cause) {
        super(message, cause);
    }

    public CaptchaValidException(Throwable cause) {
        super(cause);
    }

    public CaptchaValidException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}