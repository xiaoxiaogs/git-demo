package com.zking.controller.alipay;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.zking.config.alipay.AlipayConfig;
import com.zking.entity.Order;
import com.zking.entity.User;
import com.zking.service.IMovieService;
import com.zking.service.IOrderService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ContextLoader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/pay")
public class AlipayController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IOrderService orderService = context.getBean(IOrderService.class);
    /*
    *       定义属性方便其他控制器调用
    *          String price,             单票价格
     *         String position,          座位号
     *         Integer schduleId         场次id
    * */
    private static Integer oprice;
    private static List<String> opositions;
    private static Integer oschduleId;


    // 测试页面：/alipay/index.jsp
    // 这里统一配置支付宝支付初始设置：返回结果时重定向的链接，改成自己的
    public AlipayController() {
        int port = 8081; // 自己定义！！！（一般都是8080）
        String contextPath = Objects.requireNonNull(ContextLoader.getCurrentWebApplicationContext()).getServletContext().getContextPath();
        AlipayConfig.return_url = "http://localhost:" + port + contextPath + "/pay/return";
        AlipayConfig.notify_url = "http://localhost:" + port + contextPath + "/pay/notify";
    }
    
    @RequestMapping("/alipay")
    public String alipay() {
        return "alipay/alipay";
    }
    @RequestMapping("/result")
    public String result() {
        return "alipay/result";
    }
    @RequestMapping("/trade")
    public String trade() {
        return "alipay/alipay.trade.page.pay";
    }
    
    // 参数id为订单ID，自己调整
    @RequestMapping
    public String pay(HttpServletRequest request,String movieName,String prices,Integer price,String position,Integer schduleId) {
/*
*
*         String movieName,         电影名称
*         String prices,            总价格
*         String price,             单票价格
*         String position,          座位号
*         Integer schduleId         场次id
* */
        System.out.println("座位号为："+position);
//        分割字符串
        List<String> positions = splitStr(position);
        System.out.println("分割后的数据为：-----------------------------");
        positions.forEach(System.out::println);
//        赋值给其他方法调用
        oprice = price;
        opositions = positions;
        oschduleId = schduleId;
        //        随机生成订单号
        Random random = new Random();
        int oid = random.nextInt(90000)+10000;


        // Mybatis根据id获取订单详情，然后转发到alipay支付页
        String tradeId = "（数据库查询结果）" + oid; // 就是id，注意是整数
        String tradeName = "订单名"+movieName;
        String tradeMoney = prices;
        String tradeDesc = "订单描述，商品描述xxx";
        // 设置参数
        request.setAttribute("tradeId", tradeId);
        request.setAttribute("tradeName", tradeName);
        request.setAttribute("tradeMoney", tradeMoney);
        request.setAttribute("tradeDesc", tradeDesc);
        // 转发
        return "forward:pay/alipay";
    }
    
    // 支付宝支付结果回调路径：/pay/return，自己调整设置
    @RequestMapping("/return")
    public String result(HttpServletRequest request,HttpSession session) {
        Map<String, String> params = new HashMap<>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (String name : requestParams.keySet()) {
            String[] values = requestParams.get(name);
            StringBuilder valueStr = new StringBuilder();
            for (int i = 0; i < values.length; i++) {
                if (i == values.length - 1) {
                    valueStr.append(values[i]);
                } else {
                    valueStr.append(values[i]).append(",");
                }
            }
            params.put(name, valueStr.toString());
        }
        
        // 调用SDK验证签名
        boolean signVerified;
        try {
            signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type);
        } catch (AlipayApiException ignored) {
            signVerified = false;
        }
        
        // 判断结果
        request.setAttribute("success", signVerified); // 是否支付成功
        if (signVerified) {
            // 商户订单号，就是你的订单ID
            String tradeId = request.getParameter("out_trade_no");
            // 支付宝交易号，支付宝生成的
            String tradeNo = request.getParameter("trade_no");
            // 付款金额
            String tradeMoney = request.getParameter("total_amount");
            // 设置参数
            request.setAttribute("tradeId", tradeId);
            request.setAttribute("tradeNo", tradeNo);
            request.setAttribute("tradeMoney", tradeMoney);


            /*
             *       付款成功新增数据
             * */


            User user = (User) session.getAttribute("login");
            Integer userId = user.getUserId();
            System.out.println("场次ID为："+oschduleId);
            for (int i = 0; i <opositions.size() ; i++) {
                System.out.println("插入的第"+i+"条数据"+opositions.get(i));
                Order order = new Order(null,userId,oschduleId,opositions.get(i),1,oprice,null);
                int insert = orderService.insert(order);
                System.out.println("插入成功！！！！"+insert);
            }




            // 支付成功跳转页面，改成自己的控制器路径，可以转发、重定向
            return "redirect:/mainPage";
        } else {
            // 这里支付失败，你也可以定义另一个失败页面，这里用的都是result.jsp页面
            return "redirect:/mainPage";
        }
    }
//      分割
    public static List<String> splitStr(String name){
        //        根据    ：   进行分割
        List<String> list = new ArrayList<>();
        if (name!=null){
            String[] strs = name.split(",");
            list.addAll(Arrays.asList(strs));
            return list;
        }
        return null;
    }
}
