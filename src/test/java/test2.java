import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Movie;
import com.zking.entity.MovieType;
import com.zking.service.IMovieService;
import com.zking.service.IMovieTypeService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test2 {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IMovieTypeService movieService = context.getBean(IMovieTypeService.class);
    @Test
    public void test1(){
        movieService.findAllType().forEach(System.out::println);
    }
//    根据状态查询热门排序
    @Test
    public void test2(){
        Page<Movie> moviePage = movieService.sortMovieStartById(0, 1,"美国");
        moviePage.getRecords().forEach(System.out::println);

        System.out.println("-------------");
        MovieType allId = movieService.findAllId("冒险");

        System.out.println("id为："+allId.getMovieTypeId());

    }


//    根据类型查询对应的电影
    @Test
    public void Test3(){
        movieService.findTypeAll(1,1).forEach(System.out::println);
    }
}
