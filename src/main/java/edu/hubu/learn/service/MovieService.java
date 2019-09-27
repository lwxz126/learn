package edu.hubu.learn.service;

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
}