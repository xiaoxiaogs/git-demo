package com.zking.util.captcha;

import lombok.Data;

import java.util.Collections;
import java.util.Map;

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
public class ImageCaptchaProperties {
    /** 过期key prefix. */
    private String prefix = "captcha";
    /** 过期时间. */
    private Map<String, Long> expire = Collections.emptyMap();
    /** 是否初始化默认资源. */
    private Boolean initDefaultResource = true;
    /** 二次验证配置. */
    // @NestedConfigurationProperty
    private SecondaryVerificationProperties secondary;
    /** 缓存配置. */
    // @NestedConfigurationProperty
    private SliderCaptchaCacheProperties cache;
}
