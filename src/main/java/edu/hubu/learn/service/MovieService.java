package edu.hubu.learn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;


import edu.hubu.learn.dao.MovieDao;
import edu.hubu.learn.entity.Movie;

@Service
public class MovieService {

    @Autowired
    private MovieDao movieDao;

    public Movie getMovie(Long id) {
        return movieDao.findById(id).get();
    }

    public List<Movie> getMovies(){
        return movieDao.findAll(new Sort(Direction.DESC, "id"));
    }

    public List<Movie> searchMovies(String keyword) {
        Movie movie = new Movie();
        movie.setMoviename(keyword);
        ExampleMatcher matcher = ExampleMatcher.matching().withMatcher("moviename", match->match.contains());
        Example<Movie> example = Example.of(movie, matcher);
        Sort sort = new Sort(Direction.DESC, "id");
        return movieDao.findAll(example, sort);
    }

    public Movie addMovie(Movie movie) {
        return movieDao.save(movie);
    }

    public void deleteMovie(Long id) {
        movieDao.deleteById(id);
    }

    public void modifyMovie(Movie movie) {
        movieDao.save(movie);
    }
}