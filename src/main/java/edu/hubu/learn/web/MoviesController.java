package edu.hubu.learn.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.hubu.learn.entity.Movie;
import edu.hubu.learn.service.MovieService;

@Controller
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
}