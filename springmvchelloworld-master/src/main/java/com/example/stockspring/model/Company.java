package com.example.stockspring.model;

public class Company {

	private int companyId; 
	private String boardOfDirectors;
	private Sector sector;
    private String ceo;
    private String company_Name;
    private String breifwriteup;
	public String getCeo() {
		return ceo;
	}
	public void setCeo(String ceo) {
		this.ceo = ceo;
	}
	public String getCompany_Name() {
		return company_Name;
	}
	public void setCompany_Name(String company_Name) {
		this.company_Name = company_Name;
	}
	public String getBreifwriteup() {
		return breifwriteup;
	}
	public void setBreifwriteup(String breifwriteup) {
		this.breifwriteup = breifwriteup;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getBoardOfDirectors() {
		return boardOfDirectors;
	}
	public void setBoardOfDirectors(String boardOfDirectors) {
		this.boardOfDirectors = boardOfDirectors;
	}
	public Sector getSector() {
		return sector;
	}
	public void setSector(Sector sector) {
		this.sector = sector;
	}
	
	public String toString(){
		return "id:"+this.getCompanyId()+" directors:"+this.getBoardOfDirectors();
	}
}
