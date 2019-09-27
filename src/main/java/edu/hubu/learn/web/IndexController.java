package edu.hubu.learn.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.hubu.learn.entity.Movie;
import edu.hubu.learn.entity.User;
import edu.hubu.learn.service.UserService;
import edu.hubu.learn.service.MovieService;

@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    private UserService userService;

    @Autowired
    private MovieService MovieService;

    @RequestMapping("/")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping("/user")
    public ModelAndView user() {
        ModelAndView mav = new ModelAndView();
        User user = userService.getUser(1l);
        mav.addObject("user", user);
        mav.setViewName("user");
        return mav;
    }

    @RequestMapping("/movie")
    public ModelAndView movie() {
        ModelAndView mav = new ModelAndView();
        Movie movie = MovieService.getMovie(1l);
        mav.addObject("movie", movie);
        mav.setViewName("user");
        return mav;
}
}