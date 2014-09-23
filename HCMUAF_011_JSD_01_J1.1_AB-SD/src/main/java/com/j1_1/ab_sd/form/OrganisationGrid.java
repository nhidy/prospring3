package com.j1_1.ab_sd.form;

import java.util.List;

import com.j1_1.ab_sd.model.Organisation;

public class OrganisationGrid {
	private int totalPages;

	private int currentPage;

	private long totalRecords;

	private List<Organisation> orgData;

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public long getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(long totalRecords) {
		this.totalRecords = totalRecords;
	}

	public List<Organisation> getOrgData() {
		return orgData;
	}

	public void setOrgData(List<Organisation> orgData) {
		this.orgData = orgData;
	}

}
