package com.nhidy.crud.jpa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;
import com.nhidy.crud.model.Contact;
import com.nhidy.crud.repository.ContactRepository;
import com.nhidy.crud.service.ContactService;

@Service("contactService")
@Repository
@Transactional
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactRepository contactRepository;

	@Transactional(readOnly = true)
	public List<Contact> findAll() {
		return Lists.newArrayList(contactRepository.findAll());
	}

	@Transactional(readOnly = true)
	public Contact findById(Long id) {
		return contactRepository.findOne(id);
	}

	public Contact save(Contact contact) {
		return contactRepository.save(contact);
	}
	
	@Transactional(readOnly = true)
	public void delete(Contact contact) {
		contactRepository.delete(contact);
	}

	@Transactional(readOnly = true)
	public Page<Contact> findAllByPage(Pageable pageable) {
		return contactRepository.findAll(pageable);
	}

}