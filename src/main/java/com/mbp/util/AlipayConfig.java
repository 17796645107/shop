package com.mbp.util;

import java.io.FileWriter;
import java.io.IOException;

/**
 * @author 王攀
 * @date Created in 09:28 2019/12/30
 * 支付宝支付沙箱环境相关配置
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101600703349";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCfipENPATnBsBJUN0ViiUN0rUTZYKmhGrJ9UgFbo95fPwjLH4JD8H4KsD5nEpWaygc291bi7Q+KxEANY8Ek1aW9ZITGKDwxB4sHJ931RWTal3bF2VqwRfG4MXHEwwyPU6yfMIeDX07kKgFX3yj26I35iOn2M/Dicro/ANJFsnSnrv+Q65vXKnGt0od70nXWy77Ip87rfDyaDB1C6769L5KXqvb4qR+XCrrvA+mkq8npCGUtCoVzaczaaaUncp4TsDN3Ap6SLFSkN7ZdsVN7W2Bg2EBbvX8wu5t+pY/uXsPiiNuvK2Aanf0iYg63m73c6L4MWzkAm36+3VK0e2ayYcTAgMBAAECggEAVWmLyngNb9nPa/Dcy8FPoRzjUGUSEy/lNAYa7r2IFlRxcCtLtnI3ODM7aObhbW6k5P5YfcBHWNkZmvERhjOTMfJ6p7qRvxRfyuHwBemQSYGyia723rZNkm2XtMJfzy2/ShM8oXY7S35gVbAPPHJDYIXXJO8QG/FTLnRtFd4bYqQ5SyjWncgICO5ZNzKfXVfaqwWX5LMaGLs4ItHD5wx55YS7Su+oc8TvpNdRwfi3CgG+hwvFTJgsEYos+frxRwY/K3EabEpdQFhi4oHOKnhZby69OIXvBcxD2Af6JtJ2pohtmyuDR190y5oZzfKuGg6iPpApfRROI98WC0PpRSwFMQKBgQDuZli3pqjUzef3Vk1BcfB6fGHLIQ1N03kwMk+AHbQGds4LttJRleAy9dAkWDtrPBiOynM7UaX3DeHkxbBkENdBmVJXPyPScjznkvGhCXMF3mgAfCtKvmeMH2NJ4WRnG/2Hmk38en4My4ubWRXWMeNVN/7v5Xkjt1rcXIUsQhHCPwKBgQCrUdP7a4I30OGi2nVu8H24Iwz7Mh1PwP2d2N2cFbWR07iLmcT0+qChOSDqYJQNGsavQTJaH0aa7k9HjKXXvvuWt2OGzPaZt1qy4zJwmZf8Jo6N7IOS4C5H0a29lmhb16earg9aoLe5G0/eJJmfWQDL+BHby0nGEUYFYaBaX1keLQKBgAnOnAeyC2/1qH08R6FRlprzUvKQQYPaFzosV6jlj+pUKNXCh5Rjnf16rz1Pg+I9bqUxHtxp13H6WDiZCVCUgMZqEEEWj9qwaGD+YoJFaT3skEq00PMaMhhJkkQPyZmURTG2305rm5PbK7sQRx2wn7F5xDsKLZmSiWJXTAMuFJzxAoGAKoqtSxeNRHL4NMpustfBQEJj7NSq9q0DzXiWvzWc2tNqVjAe+n5p+N8Iz2qgGQj3IXndGQf/LmXTBf9lB0gDjY+IhWbMLaucOCO22MMrPJAOgiujGIvWsjrdG+EHlRbeJcjnQyf5t1uS36TTCQC+8+dr99ppPWf4rUlq2kYnCRkCgYA5Wt7J7I5vnaDv95rEhAkg2e5WtG4TgR7+14xfO/byPLVvqoN+IgtJg4FTaUhIRTXHgSJyZLsvQUViTITYtS65HQXvNKhd+UKFlzy3Z8MeKBQ0KWsOb0/iyiz9ZmjvJCXOb/PomKCaG2yRobaBEd/FNBAwidNu2vqFUQeJOmx1aw==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoOtvdVq2I64xUpZRvGmJt25/mKEPU+1uexCJNZuNIWj1ptOr6FjXSXd1nJBAKhwqEXYraj2cquhD690vzDjVA+mbBRm3ALuJAaLX6p1jJTpm1m664pEDq2HsUp7zEgyWl1d3bQZbmRLOUQ789uO6SfIDRswkOrrcPpGXyK7rpDWaCe9xAF9F05SUoMquGLlnd9tbsPmRHMTA2aHg6FOeXFKEZ7FMMM8f8wTS1rM5bTkEjKyULQlMUfmJzQ8BvYTQ+RifmP42GYibI5EVSjWnBZ7dYfNLrm+cR/OfdJ/NKcrg4j04+YkDIc1N0ehi0qYiAqsXb+gFVlMF0UZyfU8D3wIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8080/shop/payNotify";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8080/shop/payResult";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}