import com.zking.entity.Hall;
import com.zking.entity.Schedule;
import com.zking.entity.User;
import com.zking.service.IHallService;
import com.zking.service.IScheduleService;
import com.zking.service.IUserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class test6 {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IUserService userService = context.getBean(IUserService.class);
    @Test
    public void test1(){
        User login = userService.login("admin", "admin");
    }

}
