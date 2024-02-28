package com.zking.util.captcha;

import lombok.Getter;

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
public enum CaptchaImageType {

    /** webp类型. */
    WEBP,
    /** jpg+png类型. */
    JPEG_PNG;

    public static CaptchaImageType getType(String bgImageType, String sliderImageType) {
        if ("webp".equalsIgnoreCase(bgImageType) && "webp".equalsIgnoreCase(sliderImageType)) {
            return WEBP;
        }
        if (("jpeg".equalsIgnoreCase(bgImageType) || "jpg".equalsIgnoreCase(bgImageType)) && "png".equalsIgnoreCase(sliderImageType)) {
            return JPEG_PNG;
        }
        return null;
    }
}
