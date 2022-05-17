package com.tortBook.repository;

import org.springframework.data.repository.CrudRepository;

import com.tortBook.dto.User;

public interface UserRepository extends CrudRepository<User, Long> {

}
