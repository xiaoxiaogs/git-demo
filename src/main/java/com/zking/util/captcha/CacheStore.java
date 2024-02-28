package com.zking.util.captcha;

import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * Created by 刘庆文 on 2022-2022-8-9, project: SsmAndBootAndCloud.
 * <p>
 * Author: 刘庆文
 * Create Date: 2022-8-9
 * Project: me.liuqingwen.captcha in project: SsmAndBootAndCloud
 * <p>
 * Notice: If you are using this class or file, check it and do some modification.
 */
public interface CacheStore
{
    Map<String, Object> getCache(String key);

    /**
     * 获取并删除数据 通过key
     *
     * @param key key
     * @return Map<String, Object>
     */
    Map<String, Object> getAndRemoveCache(String key);

    /**
     * 添加缓存数据
     *
     * @param key      key
     * @param data     data
     * @param expire   过期时间
     * @param timeUnit 过期时间单位
     * @return boolean
     */
    boolean setCache(String key, Map<String, Object> data, Long expire, TimeUnit timeUnit);
}
