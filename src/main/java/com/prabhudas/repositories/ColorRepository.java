package com.prabhudas.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.prabhudas.models.Colors;

@Repository
public interface ColorRepository extends CrudRepository<Colors, Integer> {

}
