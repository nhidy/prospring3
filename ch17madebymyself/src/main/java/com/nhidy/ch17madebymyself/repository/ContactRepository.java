package com.nhidy.ch17madebymyself.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.nhidy.ch17madebymyself.model.Contact;

public interface ContactRepository extends
		PagingAndSortingRepository<Contact, Long> {

}
