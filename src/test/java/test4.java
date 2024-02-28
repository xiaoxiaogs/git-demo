import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.service.ICinemaService;
import com.zking.service.IMovieService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test4 {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    ICinemaService cinemaService = context.getBean(ICinemaService.class);

//    查询影院所有信息
    @Test
    public void test1(){
        Page<Cinema> all = cinemaService.findAll(1);
        all.getRecords().forEach(System.out::println);
    }

    //    根据品牌查询对应的影院信息
    @Test
    public void test2(){
        Page<Cinema> all = cinemaService.findBybrand("博纳国际影城",1);
        all.getRecords().forEach(System.out::println);
    }

    //    查询所有品牌
    @Test
    public void test3(){
        cinemaService.findBrandAll().forEach(System.out::println);
    }
    @Test
    public void test4(){
        System.out.println(cinemaService.findById(1));
    }
}
