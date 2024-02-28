package com.zking.util.captcha;

import cloud.tianai.captcha.generator.impl.MultiImageCaptchaGenerator;
import cloud.tianai.captcha.resource.ImageCaptchaResourceManager;

/**
 * Created by 刘庆文 on 2022-2022-8-9, project: SsmAndBootAndCloud.
 * <p>
 * Author: 刘庆文
 * Create Date: 2022-8-9
 * Project: me.liuqingwen.captcha in project: SsmAndBootAndCloud
 * <p>
 * Notice: If you are using this class or file, check it and do some modification.
 */
public class MultiImageCaptchaGeneratorBean extends MultiImageCaptchaGenerator
{
    public MultiImageCaptchaGeneratorBean(ImageCaptchaResourceManager imageCaptchaResourceManager)
    {
        super(imageCaptchaResourceManager);
        init(true);
    }
}
