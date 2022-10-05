package com.com.main.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.com.main.models.Tv;


@Repository
public interface TvRepository extends CrudRepository<Tv, Long> {

	List<Tv> findAll();
}