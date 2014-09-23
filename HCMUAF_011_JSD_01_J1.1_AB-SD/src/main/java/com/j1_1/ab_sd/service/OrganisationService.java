package com.j1_1.ab_sd.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.j1_1.ab_sd.model.Organisation;

public interface OrganisationService {
	public List<Organisation> findAll();

	public Organisation findById(Long orgId);

	public Organisation save(Organisation org);

	public Page<Organisation> findAllByPage(Pageable pageable);
}
