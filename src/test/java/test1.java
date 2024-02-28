import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Movie;
import com.zking.service.IMovieService;
import com.zking.service.impl.MovieServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test1 {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IMovieService movieService = context.getBean(IMovieService.class);
    @Test
    public void test1(){
        movieService.findAllMovies(1).forEach(System.out::println);
    }

    @Test
    public void test2(){
        Page<Movie> page = movieService.findPage(1,1,8);
        page.getRecords().forEach(System.out::println);
        System.out.println(page.getTotal());
    }



    @Test
    public void test3(){
        Page<Movie> page = movieService.findPage(0,1,8);
        page.getRecords().forEach(System.out::println);
        System.out.println(page.getTotal());
    }

//  今日票房
    @Test
    public void test4(){
        Page<Movie> moviePage = movieService.sortMovieByBoxOffice(1,1,null);
        moviePage.getRecords().forEach(System.out::println);
        System.out.println("总页数"+moviePage.getPages());
        System.out.println("当前页"+moviePage.getCurrent());

    }
//  最受期待
    @Test
    public void test45(){
        Page<Movie> moviePage = movieService.sortMovieByBoxOffice(0,1,"区域");
        moviePage.getRecords().forEach(System.out::println);
    }

    @Test
    public void test6(){
        System.out.println(movieService.findAll().get(0).getMovieCountry());
    }

//    测试去重复
    @Test
    public void test7(){
        movieService.findAll().forEach(System.out::println);
    }

//    根据类型查询对应的电影数据
    @Test
    public void test8(){
        Page<Movie> moviePage = movieService.findTypeAll("冒险",1);
        moviePage.getRecords().forEach(System.out::println);
    }
    @Test
    public void test9(){
        movieService.findAll(1).forEach(System.out::println);
    }

    @Test
    public void test10(){
        Movie movie = movieService.findById(27);
        System.out.println(movie);
    }
    //  根据票房排序
//    @Test
//    public void test5(){
//        Page<Movie> moviePage = movieService.sortMovieByCount(1);
//        System.out.println(moviePage.getRecords().get(0).getMovieType());
//    }
}
