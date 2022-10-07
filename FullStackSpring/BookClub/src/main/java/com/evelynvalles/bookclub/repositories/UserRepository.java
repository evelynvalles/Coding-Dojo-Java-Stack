package com.evelynvalles.bookclub.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.evelynvalles.bookclub.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
	
	Optional<User> findByEmail(String email);
}
