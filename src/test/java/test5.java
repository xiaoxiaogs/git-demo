import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.entity.Hall;
import com.zking.entity.Schedule;
import com.zking.service.ICinemaService;
import com.zking.service.IHallService;
import com.zking.service.IScheduleService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class test5 {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IHallService hallService = context.getBean(IHallService.class);
    IScheduleService scheduleService = context.getBean(IScheduleService.class);
    @Test
    public void test1(){
        List<Hall> byHall = hallService.findByHall(1);
        byHall.forEach(System.out::println);
    }
    @Test
    public void test2(){
        List<Hall> byHall = hallService.findByHall(1);
        List<Integer> listId = new ArrayList<>();
        List<String> listName = new ArrayList<>();
        for (int i = 0; i < byHall.size(); i++) {
            long hallId = byHall.get(i).getHallId();
            listId.add((int) hallId);
            String hallName = byHall.get(i).getHallName();
            listName.add(hallName);
        }
        listId.forEach(System.out::println);
        listName.forEach(System.out::println);
        List<Schedule> byHallId = scheduleService.findByHallId(listId);
        Date scheduleStartTime = byHallId.get(0).getScheduleStartTime();
        System.out.println("时间为："+scheduleStartTime);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
        String dateString = simpleDateFormat.format(scheduleStartTime);
        System.out.println("转化后的时间为："+dateString);
        byHallId.forEach(System.out::println);
    }

    @Test
    public void test3(){
        scheduleService.findByMovieIdAndCinemaId(1,2).forEach(System.out::println);
    }
    @Test
    public void test4(){
        scheduleService.findByMovieIdAndCinemaId1(1,2).forEach(System.out::println);
    }

    @Test
    public void test11(){
        scheduleService.findAll(1).forEach(System.out::println);
    }
}
