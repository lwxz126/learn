package edu.hubu.learn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
        return movieDao.findAll();
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