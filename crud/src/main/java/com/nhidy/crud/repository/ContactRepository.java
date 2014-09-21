package com.nhidy.crud.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.nhidy.crud.model.Contact;

public interface ContactRepository extends
		PagingAndSortingRepository<Contact, Long> {

}
