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
public class LocalCacheStore implements CacheStore
{

    protected ExpiringMap<String, Map<String, Object>> cache;

    public LocalCacheStore() {
        cache = new ConCurrentExpiringMap<>();
        cache.init();
    }

    @Override
    public Map<String, Object> getCache(String key) {
        return cache.get(key);
    }

    @Override
    public Map<String, Object> getAndRemoveCache(String key) {
        return cache.remove(key);
    }

    @Override
    public boolean setCache(String key, Map<String, Object> data, Long expire, TimeUnit timeUnit) {
        cache.remove(key);
        cache.put(key, data, expire, timeUnit);
        return true;
    }
}
