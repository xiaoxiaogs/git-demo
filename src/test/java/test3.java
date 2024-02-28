import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Movie;
import com.zking.entity.MovieType;
import com.zking.service.IMovieService;
import com.zking.service.IMovieTypeService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test3 {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IMovieService movieService = context.getBean(IMovieService.class);

//    根据ID查询电影名称
    @Test
    public void test1(){
        System.out.println(movieService.findById(1));

    }
}
