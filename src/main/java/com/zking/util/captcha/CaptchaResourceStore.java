package com.zking.util.captcha;

import cloud.tianai.captcha.common.constant.CaptchaTypeConstant;
import cloud.tianai.captcha.generator.common.constant.SliderCaptchaConstant;
import cloud.tianai.captcha.generator.impl.StandardSliderImageCaptchaGenerator;
import cloud.tianai.captcha.resource.common.model.dto.Resource;
import cloud.tianai.captcha.resource.impl.DefaultResourceStore;
import cloud.tianai.captcha.resource.impl.provider.ClassPathResourceProvider;

import java.util.HashMap;
import java.util.Map;

import static cloud.tianai.captcha.generator.impl.StandardSliderImageCaptchaGenerator.DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH;

/**
 * Created by 刘庆文 on 2022-2022-8-9, project: SsmAndBootAndCloud.
 * <p>
 * Author: 刘庆文
 * Create Date: 2022-8-9
 * Project: me.liuqingwen.captcha in project: SsmAndBootAndCloud
 * <p>
 * Notice: If you are using this class or file, check it and do some modification.
 */
public class CaptchaResourceStore extends DefaultResourceStore
{
    public CaptchaResourceStore() {
        // 滑块验证码 模板 (系统内置)
        Map<String, Resource> template1 = new HashMap<>(4);
        template1.put(SliderCaptchaConstant.TEMPLATE_ACTIVE_IMAGE_NAME, new Resource(ClassPathResourceProvider.NAME, DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH.concat("/1/active.png")));
        template1.put(SliderCaptchaConstant.TEMPLATE_FIXED_IMAGE_NAME, new Resource(ClassPathResourceProvider.NAME, DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH.concat("/1/fixed.png")));
        template1.put(SliderCaptchaConstant.TEMPLATE_MATRIX_IMAGE_NAME, new Resource(ClassPathResourceProvider.NAME, DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH.concat("/1/matrix.png")));
        // 模板 (系统内置)
        Map<String, Resource> template2 = new HashMap<>(4);
        template2.put(SliderCaptchaConstant.TEMPLATE_ACTIVE_IMAGE_NAME, new Resource(ClassPathResourceProvider.NAME, DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH.concat("/2/active.png")));
        template2.put(SliderCaptchaConstant.TEMPLATE_FIXED_IMAGE_NAME, new Resource(ClassPathResourceProvider.NAME, DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH.concat("/2/fixed.png")));
        template2.put(SliderCaptchaConstant.TEMPLATE_MATRIX_IMAGE_NAME, new Resource(ClassPathResourceProvider.NAME, DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH.concat("/2/matrix.png")));
        // 旋转验证码 模板 (系统内置)
        Map<String, Resource> template3 = new HashMap<>(4);
        template3.put(SliderCaptchaConstant.TEMPLATE_ACTIVE_IMAGE_NAME, new Resource(ClassPathResourceProvider.NAME, StandardSliderImageCaptchaGenerator.DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH.concat("/3/active.png")));
        template3.put(SliderCaptchaConstant.TEMPLATE_FIXED_IMAGE_NAME, new Resource(ClassPathResourceProvider.NAME, StandardSliderImageCaptchaGenerator.DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH.concat("/3/fixed.png")));
        template3.put(SliderCaptchaConstant.TEMPLATE_MATRIX_IMAGE_NAME, new Resource(ClassPathResourceProvider.NAME, StandardSliderImageCaptchaGenerator.DEFAULT_SLIDER_IMAGE_TEMPLATE_PATH.concat("/3/matrix.png")));

        // 1. 添加一些模板
        addTemplate(CaptchaTypeConstant.SLIDER, template1);
        addTemplate(CaptchaTypeConstant.SLIDER, template2);
        addTemplate(CaptchaTypeConstant.ROTATE, template3);

        // 2. 添加自定义背景图片：注意文件都在resources文件夹下，可以修改为自己的图片，注意大小尺寸
        addResource(CaptchaTypeConstant.SLIDER, new Resource("classpath", "captcha/a.jpg"));
        addResource(CaptchaTypeConstant.SLIDER, new Resource("classpath", "captcha/b.jpg"));
        addResource(CaptchaTypeConstant.SLIDER, new Resource("classpath", "captcha/c.jpg"));
        addResource(CaptchaTypeConstant.SLIDER, new Resource("classpath", "captcha/d.jpg"));
        addResource(CaptchaTypeConstant.SLIDER, new Resource("classpath", "captcha/e.jpg"));
        addResource(CaptchaTypeConstant.SLIDER, new Resource("classpath", "captcha/g.jpg"));
        addResource(CaptchaTypeConstant.SLIDER, new Resource("classpath", "captcha/h.jpg"));
        addResource(CaptchaTypeConstant.SLIDER, new Resource("classpath", "captcha/i.jpg"));
        addResource(CaptchaTypeConstant.SLIDER, new Resource("classpath", "captcha/j.jpg"));
        addResource(CaptchaTypeConstant.ROTATE, new Resource("classpath", "captcha/48.jpg"));
        addResource(CaptchaTypeConstant.CONCAT, new Resource("classpath", "captcha/48.jpg"));
        addResource(CaptchaTypeConstant.WORD_IMAGE_CLICK, new Resource("classpath", "captcha/c.jpg"));
    }
}
