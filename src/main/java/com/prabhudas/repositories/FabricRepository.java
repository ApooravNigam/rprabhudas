package com.prabhudas.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.prabhudas.models.Fabric;

@Repository
public interface FabricRepository extends CrudRepository<Fabric, Integer> {

}
