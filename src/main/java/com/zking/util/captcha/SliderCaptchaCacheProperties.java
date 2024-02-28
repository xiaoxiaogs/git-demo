package com.zking.util.captcha;

import lombok.Data;

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
public class SliderCaptchaCacheProperties {
    private Boolean enabled = false;
    /** 缓存大小. */
    private Integer cacheSize = 20;
    /** 缓存拉取失败后等待时间. */
    private Integer waitTime = 1000;
    /** 缓存检查间隔. */
    private Integer period = 100;
}
