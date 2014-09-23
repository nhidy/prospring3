package com.j1_1.ab_sd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;
import com.j1_1.ab_sd.model.Organisation;
import com.j1_1.ab_sd.repository.OrganisationRepository;

@Service("organisationService")
@Repository
@Transactional
public class OrganisationServiceImpl implements OrganisationService {
	@Autowired
	private OrganisationRepository orgRepository;

	@Override
	@Transactional(readOnly = true)
	public List<Organisation> findAll() {
		return Lists.newArrayList(orgRepository.findAll());
	}

	@Override
	@Transactional(readOnly = true)
	public Organisation findById(Long orgId) {
		return orgRepository.findOne(orgId);
	}

	@Override
	public Organisation save(Organisation org) {
		return orgRepository.save(org);
	}

	@Override
	@Transactional(readOnly = true)
	public Page<Organisation> findAllByPage(Pageable pageable) {
		return orgRepository.findAll(pageable);
	}

}
