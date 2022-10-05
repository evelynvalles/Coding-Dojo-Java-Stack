package com.evelynvalles.dojosandninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.evelynvalles.dojosandninjas.models.Dojo;

public interface DojoRepository extends CrudRepository<Dojo, Long>{

	List<Dojo> findAll();
}
