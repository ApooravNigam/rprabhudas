package com.prabhudas.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.prabhudas.models.Photo;

@Repository
public interface PhotoRepository extends CrudRepository<Photo, Integer> {

}
