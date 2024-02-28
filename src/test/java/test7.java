import com.zking.entity.User;
import com.zking.service.IOrderService;
import com.zking.service.IUserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test7 {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IOrderService orderService = context.getBean(IOrderService.class);
    @Test
    public void test1(){
       orderService.findAlloposition(315).forEach(System.out::println);
    }

}
