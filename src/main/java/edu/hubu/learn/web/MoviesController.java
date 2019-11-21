package edu.hubu.learn.web;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import edu.hubu.learn.entity.Movie;
import edu.hubu.learn.service.MovieService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/lwxz")
public class MoviesController {


    @Autowired
    private MovieService MovieService;

   @RequestMapping("/{id}")
   public ModelAndView movie(@PathVariable Long id){
       ModelAndView mav = new ModelAndView();
       Movie movie = MovieService.getMovie(id);
       mav.addObject("movie", movie);
       mav.setViewName("movie");
       return mav;
   }

   @RequestMapping("/list")
    public ModelAndView movies(){
        ModelAndView mav = new ModelAndView();
        List<Movie> movies = MovieService.getMovies();
        mav.addObject("movies", movies);
        mav.setViewName("movies");
        return mav;
    }

    @RequestMapping("/add")
    public ModelAndView addMovie() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("add");
        return mav;
    }

    @RequestMapping("/do_add")
    public ModelAndView doAddMovie(Movie movie) {
        movie.setAvatar("");
        MovieService.addMovie(movie);
        ModelAndView mav = new ModelAndView("redirect:/lwxz/list");
        return mav;
    }

    @RequestMapping("/modify/{id}")
    public ModelAndView modifyMovie(@PathVariable Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("movie", MovieService.getMovie(id));
        mav.setViewName("modify");
        return mav;
    }

    @RequestMapping("/do_modify")
    public ModelAndView doModifyMovie(Movie movie) {
        movie.setAvatar("");
        MovieService.modifyMovie(movie);
        ModelAndView mav = new ModelAndView("redirect:/lwxz/list");
        return mav;
    }

    @RequestMapping("/delete/{id}")
    public ModelAndView delete(@PathVariable Long id) {
        MovieService.deleteMovie(id);
        ModelAndView mav = new ModelAndView("redirect:/lwxz/list");
        return mav;
    }

    @RequestMapping("/search")
    public ModelAndView searchMovie() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("search");
        return mav;
    }

    @RequestMapping("/do_search")
    public ModelAndView doSearchMovie(HttpServletRequest httpRequest) {
        ModelAndView mav = new ModelAndView();
        String keyword = httpRequest.getParameter("keyword");
        List<Movie> movies = MovieService.searchMovies(keyword);
        mav.addObject("movies", movies);
        mav.setViewName("movies");
        return mav;
    }

    @RequestMapping("/add_avatar/{id}")
    public ModelAndView addMovieAvatar(@PathVariable Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("movie", MovieService.getMovie(id));
        mav.setViewName("add_avatar");
        return mav;
    }

    @RequestMapping("/do_add_avatar/{id}")
    public ModelAndView doAddMovieAvatar(@RequestParam("avatar") MultipartFile file, @PathVariable Long id) {
        try {
            String fileName = file.getOriginalFilename();
            String filePath = ResourceUtils.getURL("classpath:").getPath() + "../../../resources/main/static/";
            File dest = new File(filePath + fileName);
            log.info(dest.getAbsolutePath());
            file.transferTo(dest);
            Movie movie = MovieService.getMovie(id);
            movie.setAvatar(fileName);
            MovieService.modifyMovie(movie);
        } catch (Exception e) {
            log.error("upload avatar error", e.getMessage());
        }
        return new ModelAndView("redirect:/lwxz/list");
    }
}