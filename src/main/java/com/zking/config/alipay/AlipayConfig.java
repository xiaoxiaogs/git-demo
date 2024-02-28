package com.zking.config.alipay;

import java.io.FileWriter;

public class AlipayConfig
{
    /**
     * 项目配置：必须为spring项目，在web.xml中配置port端口
     *
     * 测试账号：
     *  买家账号gkylrk9430@sandbox.com
     *  登录密码111111
     *  支付密码111111
     * 参考地址：
     *  https://open.alipay.com/platform/appDaily.htm?tab=info
     *  https://opendocs.alipay.com/open/270/106291/
     * 注意：测试的时候换个浏览器，要么退出账号
    */
    // 应用ID，您的APPID，可以使用自己的沙箱测试ID
    public static final String app_id = "9021000132683733";
    // 商户私钥，您的PKCS8格式RSA2私钥，使用自己的
    public static final String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCj1k4QVL1VfPFuWPi9aD8WgWaW2WmU7cAq1O15hS2tFWPentNlgivQBlGFxkuSAsNflDTXMiW2uX7sVso35E7KsXvoZDGMKWwTPQ+mbiCY87xe7ePu36R75KGdciXUg855VIYhhHHXoi7UOjHLB+ihvz+L4cjHKZ+wlcwqYl480jw0jBVbqQRNsbqVqECc4As/5ct9F0RERsHDahlkEpqIpP0YSfYhPofipAqEdu10Ig01JkCHLcx1wQ7kb8XuWmFM7/QQIIRQEaO8dMPX8Z4avQof6fb3OEh/rk+JyG2lb566aD3aRchqXx/frdl8dMe5GuKnOaN73AwbUrkg/zQBAgMBAAECggEAaSn/U8ZA/eXERzN+/n0yuax4AG4vsnPlvNiOUkllJ0uqnlROl0K2AsJ7g6XkDiYN6IUGYfeDc8Wfre6LwNKgrMS+J05g63oPME4qhIb+D4+sIzcJ7uPI/emkv55sn/u3BfR2YH9WX7Zv3rQ4D/3UmjZbgNt9+DFEmqGcurwHh3vW6fMqBomDTpai/iI5w/6jcDXqWqPOO8MW53VrSedtRMYD1lq4ewTlKvSmN1c6ZSu6zC3FRKe/37xBm/u2NO3vBAsvO1l02EYALBlloSPQzAl2C6+xhPQd7xKdIigMd/f6EujYCUY/kwWiLdLFUT1lcq2dsQjvmP7tu1bn4QqBkQKBgQDjMbrB3gZ8XnS9F87MeW/Gcwt3XqGOlZy7HMzknsFCTg6qIPACMgQ0Ze7KZiQ2GUGZLHznO05kwRriG3Pu9Ycgoa/eX0qniZU4sZPG78d4K7GJZScyWFNGiDkYz7i1VATagxOQwTPnE+QvsPTdKMhOTNt1FotUCi4HfzHrVRIxZQKBgQC4nCFFmvtsXEE44bYuu0tempDijbPLiC7yusR0CLLPN897VExiFYvPa3ywxIvyN8ffvgAy41RJYnUIPXJZIzdV6Fd87bRr1et7gNTLTnpbGQ1BRlov3K7jxnEReooe2+7lLqEDbTHJnvB6oCORF/n2mH06+nAAuNjJ7Ov+CXK8bQKBgEdDmQ4oo6YtRrbtmdt/l/UKryURVOHRwijbHtXzijFPJMButnop0DHTa3SnV2J0x6PRVZh+fNeTzufvrozdDTbKIM1C3LryqBDxeqYjHlFuezDavtHG7NAp+Kb0uT5/jUoxZVi5kZtBHQlsm1In8bTF3Oy8VpXU351QY4sq0xsVAoGBAIN1SowSTK9hEmC6+cxVOtpnHnz1gu6QTz4xmOs3tnywtWKRKMM/rItLc0M88prM9dtxpRqXntGS9tujReYLmb/m70XazvtrHYCYwO71N1PfhvzQaDBk6XTxPlq/89L9siQpDCcwfp+gOoZXunv7otfixmpVI6Sf/F/uAi6n87gRAoGBANLzTesyizHDkB6m0NvcaN1foAKUPS/U0pljuH6GVsOKkt00RLUd8PPZpKDW02xQ773MTy5bceCefynnQEMRAkPlbpV8oe6Q4zO+JduDrVT3i5kf+RaPj96eB5lePfTUc2j6H3AQ4KOae1vXzaLePOReb47OSSE9GG40U9cYHIAR";
    // 支付宝公钥，对应APPID下的支付宝公钥，使用自己的
    public static final String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArHdvgysLHmVgdDJGPf5OOGR+s3RJ2n6jgPC94rq2R5hMcQr/FLXEKg2FNfdLimaaORRwSjZzim3+nc5ANZou2N4lEUQQ61q0dXtW2JOAB9AfHrt29A5aXEdM6T2iiHiHSv4IMz3r2TmgChlceGtzagWpx0bxoxcc8N9mDXnDlUhuyjnviQbwYiM75CUlL1C06AWdWGY5hnZlR1mzhGKm3UFo4XucjwCFrmw+eFGnyoEJEGRQK96+mLXACXV0AoMYy9K/9QYbK0HU3HSxHGEREgMC7D8FP8GyZJGt+/PPXi9gazC+bdEq4Qk2oejwyrWo3JVbe2v6pTAvLx1ddKEMrQIDAQAB";
    // 签名方式
    public static final String sign_type = "RSA2";
    // 字符编码格式
    public static final String charset = "utf-8";
    // 支付宝网关：必须为alipaydev
    public static final String gatewayUrl = "https://openapi-sandbox.dl.alipaydev.com/gateway.do";
    // 这是日志输出目录：这个自定义
    public static final String log_path = "D:\\Othertemp\\Cache\\Temp";
    
    // 服务器异步通知页面路径,需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url;
    // 页面跳转同步通知页面路径,需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url;
    static {
        // ServletContext context = Objects.requireNonNull(ContextLoader.getCurrentWebApplicationContext()).getServletContext();
        // String contextPath = context == null ? "" : context.getContextPath();
        // String port = context == null ? "" : context.getInitParameter("port");
        // String port = "8080";
        // String contextPath = "/jsp10_war_exploded"; // 自己定义，或者在Listener里设置
        // return_url = "http://localhost:" + port + contextPath + "/returnServlet";
        // notify_url = "http://localhost:" + port + contextPath + "/notifyServlet";
        // System.out.printf("通知路径：%s%n跳转路径：%s%n", notify_url, return_url);
    }
    
    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord)
    {
        try(FileWriter writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis() + ".txt"))
        {
            writer.write(sWord);
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
