package com.zking.controller.captcha;

import cloud.tianai.captcha.common.constant.CaptchaTypeConstant;
import cloud.tianai.captcha.validator.common.model.dto.ImageCaptchaTrack;
import com.zking.util.captcha.CaptchaResponse;
import com.zking.util.captcha.ImageCaptchaApplication;
import com.zking.util.captcha.ImageCaptchaVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/captcha")
@RequiredArgsConstructor
public class CaptchaController {
    // 自动注入：详细配置参考：spring.xml
    private final ImageCaptchaApplication imageCaptchaApplication;
    
    // 用于获取验证图片：前端将获取并显示图片
    @GetMapping({"gen", "get"})
    @ResponseBody
    public CaptchaResponse<ImageCaptchaVO> genCaptcha(@RequestParam(value = "type", required = false) String type, HttpSession session) {
        if (type == null || type.trim().isEmpty()) {
            // 前端可以传递图片类型，这里建议为固定类型，不需要由前端传递
            type = CaptchaTypeConstant.SLIDER;
        }
        // 删除checked字段，防止重复利用结果
        session.removeAttribute("checked");
        return imageCaptchaApplication.generateCaptcha(type);
    }
    
    // 用于验证请求结果，返回true表示验证通过
    @PostMapping({"check", "validate"})
    @ResponseBody
    public boolean checkCaptcha(@RequestParam("id") String id, @RequestBody ImageCaptchaTrack imageCaptchaTrack, HttpSession session) {
        boolean checked = imageCaptchaApplication.matching(id, imageCaptchaTrack);
        if (checked) {
            // 通过了校验，在session中设置
            session.setAttribute("checked", 1);
        }
        return checked;
    }
    
    // ==============================
    // 一些视图：用于测试
    @RequestMapping("/slider")
    public String slider() {
        return "captcha/slider";
    }
    
    @RequestMapping("/rotate")
    public String rotate() {
        return "captcha/rotate";
    }
    
    @RequestMapping("/concat")
    public String concat() {
        return "captcha/concat";
    }
    
    @RequestMapping("/word-click")
    public String wordClick() {
        return "captcha/word-click";
    }
}
