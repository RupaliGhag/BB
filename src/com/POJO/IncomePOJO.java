package com.POJO;

public class IncomePOJO {
	private int incomeId;
	private int income;
	private String incomeType;
	private String incomeDate;
	private String userEmail;
	public int getIncomeId() {
		return incomeId;
	}
	public void setIncomeId(int incomeId) {
		this.incomeId = incomeId;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	public String getIncomeType() {
		return incomeType;
	}
	public void setIncomeType(String incomeType) {
		this.incomeType = incomeType;
	}
	public String getIncomeDate() {
		return incomeDate;
	}
	public void setIncomeDate(String incomeDate) {
		this.incomeDate = incomeDate;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	@Override
	public String toString() {
		return "IncomePOJO [incomeId=" + incomeId + ", income=" + income + ", incomeType=" + incomeType
				+ ", incomeDate=" + incomeDate + ", userEmail=" + userEmail + "]";
	}


}
