package com.j1_1.ab_sd.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
//import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.j1_1.ab_sd.form.Message;
import com.j1_1.ab_sd.form.OrganisationGrid;
import com.j1_1.ab_sd.model.Organisation;
import com.j1_1.ab_sd.service.OrganisationService;
import com.j1_1.ab_sd.util.UrlUtil;

@RequestMapping("/orgs")
@Controller
public class OrganisationController {
	final Logger logger = LoggerFactory.getLogger(OrganisationController.class);

	@Autowired
	MessageSource messageSource;

	@Autowired
	private OrganisationService orgService;

	@RequestMapping(method = RequestMethod.GET)
	public String list(Model uiModel) {
		logger.info("Listing orgs");

		List<Organisation> orgs = orgService.findAll();
		uiModel.addAttribute("orgs", orgs);

		logger.info("No. of Organisation: " + orgs.size());

		return "orgs/list";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String show(@PathVariable("id") Long orgId, Model uiModel) {
		Organisation org = orgService.findById(orgId);
		logger.info("Org trong Show: " + org);
		uiModel.addAttribute("org", org);
		return "orgs/show";
	}

	// save
	@RequestMapping(value = "/{id}", params = "form", method = RequestMethod.POST)
	public String update(@Valid Organisation org, BindingResult bindingResult,
			Model uiModel, HttpServletRequest httpServletRequest,
			RedirectAttributes redirectAttributes, Locale locale) {
		logger.info("Updating org");
		if (bindingResult.hasErrors()) {
			uiModel.addAttribute(
					"message",
					new Message("error", messageSource.getMessage(
							"org_save_fail", new Object[] {}, locale)));
			uiModel.addAttribute("org", org);
			return "orgs/update";
		}
		uiModel.asMap().clear();
		redirectAttributes.addFlashAttribute(
				"message",
				new Message("success", messageSource.getMessage(
						"org_save_success", new Object[] {}, locale)));

		orgService.save(org);
		return "redirect:/orgs/"
				+ UrlUtil.encodeUrlPathSegment(org.getOrgId().toString(),
						httpServletRequest);
	}

	@RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long orgId, Model uiModel) {
		uiModel.addAttribute("org", orgService.findById(orgId));
		return "orgs/update";
	}

	// Creating contact
	// INFO : com.nhidy.crud.controller.ContactController - Creating contact
	@RequestMapping(params = "form", method = RequestMethod.POST)
	public String create(@Valid Organisation org, BindingResult bindingResult,
			Model uiModel, HttpServletRequest httpServletRequest,
			RedirectAttributes redirectAttributes, Locale locale) {
		logger.info("Creating org");
		if (bindingResult.hasErrors()) {
			uiModel.addAttribute(
					"message",
					new Message("error", messageSource.getMessage(
							"org_save_fail", new Object[] {}, locale)));
			uiModel.addAttribute("org", org);
			return "orgs/create";
		}
		uiModel.asMap().clear();
		redirectAttributes.addFlashAttribute(
				"message",
				new Message("success", messageSource.getMessage(
						"org_save_success", new Object[] {}, locale)));

		logger.info("Org id: " + org.getOrgId());

		orgService.save(org);
		return "redirect:/orgs/"
				+ UrlUtil.encodeUrlPathSegment(org.getOrgId().toString(),
						httpServletRequest);
	}

	/* @PreAuthorize("isAuthenticated()") */
	@RequestMapping(params = "form", method = RequestMethod.GET)
	public String createForm(Model uiModel) {
		logger.info("_______________Create new Organisation when click menu____________");
		Organisation org = new Organisation();
		uiModel.addAttribute("org", org);
		return "orgs/create";
	}

	/**
	 * Support pagination for front-end grid
	 * 
	 * @param uiModel
	 * @return
	 */
	// show list Organisations

	@RequestMapping(value = "/listgrid", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public OrganisationGrid listGrid(
			@RequestParam(value = "page", required = false) Integer page,
			@RequestParam(value = "rows", required = false) Integer rows,
			@RequestParam(value = "sidx", required = false) String sortBy,
			@RequestParam(value = "sord", required = false) String order) {

		logger.info("Listing orgs for grid with page: {}, rows: {}", page, rows);
		logger.info("Listing orgs for grid with sort: {}, order: {}", sortBy,
				order);

		// Process order by
		Sort sort = null;
		String orderBy = sortBy;
		/*
		 * if (orderBy != null && orderBy.equals("birthDateString")) orderBy =
		 * "birthDate";
		 */

		if (orderBy != null && order != null) {
			if (order.equals("desc")) {
				sort = new Sort(Sort.Direction.DESC, orderBy);
			} else
				sort = new Sort(Sort.Direction.ASC, orderBy);
		}

		// Constructs page request for current page
		// Note: page number for Spring Data JPA starts with 0, while jqGrid
		// starts with 1
		PageRequest pageRequest = null;

		if (sort != null) {
			pageRequest = new PageRequest(page - 1, rows, sort);
		} else {
			pageRequest = new PageRequest(page - 1, rows);
		}

		Page<Organisation> orgPage = orgService.findAllByPage(pageRequest);

		// Construct the grid data that will return as JSON data
		OrganisationGrid orgGrid = new OrganisationGrid();

		orgGrid.setCurrentPage(orgPage.getNumber() + 1);
		orgGrid.setTotalPages(orgPage.getTotalPages());
		orgGrid.setTotalRecords(orgPage.getTotalElements());
		orgGrid.setOrgData(Lists.newArrayList(orgPage.iterator()));

		return orgGrid;
	}
}
