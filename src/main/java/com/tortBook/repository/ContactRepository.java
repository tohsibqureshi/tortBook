package com.tortBook.repository;

import org.springframework.data.repository.CrudRepository;

import com.tortBook.dto.ContactUs;

public interface ContactRepository extends CrudRepository<ContactUs, Long>{

}
