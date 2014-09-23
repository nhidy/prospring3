package com.j1_1.ab_sd.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.j1_1.ab_sd.model.Organisation;

public interface OrganisationRepository extends
		PagingAndSortingRepository<Organisation, Long> {

}
