package edu.hubu.learn.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.hubu.learn.entity.Movie;

public interface MovieDao extends JpaRepository<Movie, Long> {

}