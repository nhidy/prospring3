package com.j1_1.ab_sd.model;

import java.util.ArrayList;
import java.util.List;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Organisation")
public class Organisation {

	private Long orgId;
	private String orgName;
	private String orgShortDesc;
	private String leadContact;
	private String add1;
	private String add2;
	private String add3;
	private String postcode;
	private String cityTown;
	private String county;
	private String nationCountry;
	private boolean preferredOrg;
	private boolean expOfInt;
	private String typeOfBusiness;
	private String sicCode;
	private String orgFullDesc;
	private String phoneNum;
	private String fax;
	private String email;
	private String webAdd;
	private int charityNum;
	private int companyNum;
	private boolean isActive;
	
	
	/*private List<String> orgSpecicalism = new ArrayList<String>();
	private List<String> serviceDisablities = new ArrayList<String>();
	private List<String> serviceBarriers = new ArrayList<String>();
	private List<String> serviceBenefits = new ArrayList<String>();
	private List<String> servicePersonal = new ArrayList<String>();
	private List<String> serviceEthnicity = new ArrayList<String>();
	private List<String> accreditation = new ArrayList<String>();
	private List<String> eoiProgrammes = new ArrayList<String>();
	private List<String> eoiServices = new ArrayList<String>();*/

	// private List<SupportingMaterial> supportingMaterials = new
	// ArrayList<SupportingMaterial>();
	// private List<Directorate> disrectorates = new ArrayList<Directorate>();
	// private List<Programme> programes = new ArrayList<Programme>();
	// private List<Service> services = new ArrayList<Service>();
	// private Contact contact;

	public Organisation() {
	}

	public Organisation(Long orgId, String orgName, String orgShortDesc,
			String leadContact, String add1, String add2, String add3,
			String postcode, String cityTown, String county,
			String nationCountry, boolean preferredOrg, boolean expOfInt,
			String typeOfBusiness, String sicCode, String orgFullDesc,
			String phoneNum, String fax, String email, String webAdd,
			int charityNum, int companyNum, boolean isActive) {
		super();
		this.orgId = orgId;
		this.orgName = orgName;
		this.orgShortDesc = orgShortDesc;
		this.leadContact = leadContact;
		this.add1 = add1;
		this.add2 = add2;
		this.add3 = add3;
		this.postcode = postcode;
		this.cityTown = cityTown;
		this.county = county;
		this.nationCountry = nationCountry;
		this.preferredOrg = preferredOrg;
		this.expOfInt = expOfInt;
		this.typeOfBusiness = typeOfBusiness;
		this.sicCode = sicCode;
		this.orgFullDesc = orgFullDesc;
		this.phoneNum = phoneNum;
		this.fax = fax;
		this.email = email;
		this.webAdd = webAdd;
		this.charityNum = charityNum;
		this.companyNum = companyNum;
		this.isActive = isActive;
	}

	public Organisation(String orgName, String orgShortDesc,
			String leadContact, String add1, String add2, String add3,
			String postcode, String cityTown, String county,
			String nationCountry, boolean preferredOrg, boolean expOfInt,
			String typeOfBusiness, String sicCode, String orgFullDesc,
			String phoneNum, String fax, String email, String webAdd,
			int charityNum, int companyNum, boolean isActive) {
		super();
		this.orgName = orgName;
		this.orgShortDesc = orgShortDesc;
		this.leadContact = leadContact;
		this.add1 = add1;
		this.add2 = add2;
		this.add3 = add3;
		this.postcode = postcode;
		this.cityTown = cityTown;
		this.county = county;
		this.nationCountry = nationCountry;
		this.preferredOrg = preferredOrg;
		this.expOfInt = expOfInt;
		this.typeOfBusiness = typeOfBusiness;
		this.sicCode = sicCode;
		this.orgFullDesc = orgFullDesc;
		this.phoneNum = phoneNum;
		this.fax = fax;
		this.email = email;
		this.webAdd = webAdd;
		this.charityNum = charityNum;
		this.companyNum = companyNum;
		this.isActive = isActive;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	/*@SequenceGenerator(name = "org_ID_Gen", sequenceName = "org_SEQ_ID")*/
	@Column(unique = true, nullable = false)
	public Long getOrgId() {
		return orgId;
	}

	@NotEmpty(message = "{validation.orgName.NotEmpty.message}")
	@Column(unique = true, nullable = false)
	public String getOrgName() {
		return orgName;
	}

	@NotEmpty(message = "{validation.orgShortDesc.NotEmpty.message}")
	@Column(nullable = false)
	public String getOrgShortDesc() {
		return orgShortDesc;
	}

	public String getLeadContact() {
		return leadContact;
	}

	@NotEmpty(message = "{validation.add1.NotEmpty.message}")
	@Column(nullable = false)
	public String getAdd1() {
		return add1;
	}

	public String getAdd2() {
		return add2;
	}

	public String getAdd3() {
		return add3;
	}

	@NotEmpty(message = "{validation.postcode.NotEmpty.message}")
	@Column(nullable = false)
	public String getPostcode() {
		return postcode;
	}

	public String getCityTown() {
		return cityTown;
	}

	public String getCounty() {
		return county;
	}

	public String getNationCountry() {
		return nationCountry;
	}

	public boolean isPreferredOrg() {
		return preferredOrg;
	}

	public boolean isExpOfInt() {
		return expOfInt;
	}

	@NotEmpty(message = "{validation.typeOfBusiness.NotEmpty.message}")
	@Column(nullable = false)
	public String getTypeOfBusiness() {
		return typeOfBusiness;
	}

	public String getSicCode() {
		return sicCode;
	}

	public String getOrgFullDesc() {
		return orgFullDesc;
	}

	@NotEmpty(message = "{validation.phoneNum.NotEmpty.message}")
	@Column(nullable = false)
	public String getPhoneNum() {
		return phoneNum;
	}

	public String getFax() {
		return fax;
	}

	public String getEmail() {
		return email;
	}

	public String getWebAdd() {
		return webAdd;
	}

	public int getCharityNum() {
		return charityNum;
	}

	public int getCompanyNum() {
		return companyNum;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setOrgId(Long orgId) {
		this.orgId = orgId;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public void setOrgShortDesc(String orgShortDesc) {
		this.orgShortDesc = orgShortDesc;
	}

	public void setLeadContact(String leadContact) {
		this.leadContact = leadContact;
	}

	public void setAdd1(String add1) {
		this.add1 = add1;
	}

	public void setAdd2(String add2) {
		this.add2 = add2;
	}

	public void setAdd3(String add3) {
		this.add3 = add3;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public void setCityTown(String cityTown) {
		this.cityTown = cityTown;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public void setNationCountry(String nationCountry) {
		this.nationCountry = nationCountry;
	}

	public void setPreferredOrg(boolean preferredOrg) {
		this.preferredOrg = preferredOrg;
	}

	public void setExpOfInt(boolean expOfInt) {
		this.expOfInt = expOfInt;
	}

	public void setTypeOfBusiness(String typeOfBusiness) {
		this.typeOfBusiness = typeOfBusiness;
	}

	public void setSicCode(String sicCode) {
		this.sicCode = sicCode;
	}

	public void setOrgFullDesc(String orgFullDesc) {
		this.orgFullDesc = orgFullDesc;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setWebAdd(String webAdd) {
		this.webAdd = webAdd;
	}

	public void setCharityNum(int charityNum) {
		this.charityNum = charityNum;
	}

	public void setCompanyNum(int companyNum) {
		this.companyNum = companyNum;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

//	public List<String> getOrgSpecicalism() {
//		return orgSpecicalism;
//	}
//
//	public List<String> getServiceDisablities() {
//		return serviceDisablities;
//	}
//
//	public List<String> getServiceBarriers() {
//		return serviceBarriers;
//	}
//
//	public List<String> getServiceBenefits() {
//		return serviceBenefits;
//	}
//
//	public List<String> getServicePersonal() {
//		return servicePersonal;
//	}
//
//	public List<String> getServiceEthnicity() {
//		return serviceEthnicity;
//	}
//
//	public List<String> getAccreditation() {
//		return accreditation;
//	}
//
//	public List<String> getEoiProgrammes() {
//		return eoiProgrammes;
//	}
//
//	public List<String> getEoiServices() {
//		return eoiServices;
//	}
//
//	public void setOrgSpecicalism(List<String> orgSpecicalism) {
//		this.orgSpecicalism = orgSpecicalism;
//	}
//
//	public void setServiceDisablities(List<String> serviceDisablities) {
//		this.serviceDisablities = serviceDisablities;
//	}
//
//	public void setServiceBarriers(List<String> serviceBarriers) {
//		this.serviceBarriers = serviceBarriers;
//	}
//
//	public void setServiceBenefits(List<String> serviceBenefits) {
//		this.serviceBenefits = serviceBenefits;
//	}
//
//	public void setServicePersonal(List<String> servicePersonal) {
//		this.servicePersonal = servicePersonal;
//	}
//
//	public void setServiceEthnicity(List<String> serviceEthnicity) {
//		this.serviceEthnicity = serviceEthnicity;
//	}
//
//	public void setAccreditation(List<String> accreditation) {
//		this.accreditation = accreditation;
//	}
//
//	public void setEoiProgrammes(List<String> eoiProgrammes) {
//		this.eoiProgrammes = eoiProgrammes;
//	}
//
//	public void setEoiServices(List<String> eoiServices) {
//		this.eoiServices = eoiServices;
//	}

	// public Organisation(int orgId, String orgName,
	// List<SupportingMaterial> supportingMaterials) {
	// super();
	// this.orgId = orgId;
	// this.orgName = orgName;
	// this.supportingMaterials = supportingMaterials;
	// }
	//
	// @Id
	// @GeneratedValue(strategy = GenerationType.IDENTITY)
	// @SequenceGenerator(name = "org_ID_Gen", sequenceName = "org_SEQ_ID")
	// @Column(name = "orgID", unique = true, nullable = false)
	// public int getOrgId() {
	// return orgId;
	// }
	//
	// public void setOrgId(int orgId) {
	// this.orgId = orgId;
	// }
	//
	// @Column(name = "OrgName")
	// public String getOrgName() {
	// return orgName;
	// }
	//
	// public void setOrgName(String orgName) {
	// this.orgName = orgName;
	// }
	//
	// public void setSupportingMaterials(
	// List<SupportingMaterial> supportingMaterials) {
	// this.supportingMaterials = supportingMaterials;
	// }
	//
	// @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy =
	// "organisation")
	// public List<Directorate> getDisrectorates() {
	// return disrectorates;
	// }
	//
	// public void setDisrectorates(List<Directorate> disrectorates) {
	// this.disrectorates = disrectorates;
	// }
	//
	// @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy =
	// "supportingMaterial")
	// public List<SupportingMaterial> getSupportingMaterials() {
	// return supportingMaterials;
	// }
	//
	// @ManyToOne(fetch = FetchType.LAZY)
	// @JoinColumn(name = "ContactID", nullable = false, insertable = false,
	// updatable = false)
	// public Contact1 getContact() {
	// return contact;
	// }
	//
	// public void setContact(Contact1 contact) {
	// this.contact = contact;
	// }
	//
	// @ManyToMany
	// @JoinTable(name = "Org_Programme", joinColumns= @JoinColumn
	// (name="OrgID"),
	// inverseJoinColumns = @JoinColumn(name = "ProgrammeID"))
	// public List<Programme> getProgrames() {
	// return programes;
	// }
	//
	// public void setProgrames(List<Programme> programes) {
	// this.programes = programes;
	// }
	// @ManyToMany
	// @JoinTable(name = "Org_Service", joinColumns= @JoinColumn (name="OrgID"),
	// inverseJoinColumns = @JoinColumn(name = "ServiceID"))
	// public List<Service> getServices() {
	// return services;
	// }
	//
	// public void setServices(List<Service> services) {
	// this.services = services;
	// }

}