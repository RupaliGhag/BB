package com.POJO;

public class ExpensesPOJO {
	private int expenses;
	private String expensesType;
	private String expensesDate;
	private String userEmail;
	public int getExpenses() {
		return expenses;
	}
	public void setExpenses(int expenses) {
		this.expenses = expenses;
	}
	public String getExpensesType() {
		return expensesType;
	}
	public void setExpensesType(String expensesType) {
		this.expensesType = expensesType;
	}
	public String getExpensesDate() {
		return expensesDate;
	}
	public void setExpensesDate(String expensesDate) {
		this.expensesDate = expensesDate;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	@Override
	public String toString() {
		return "ExpensesPOJO [expenses=" + expenses + ", expensesType=" + expensesType + ", expensesDate="
				+ expensesDate + ", userEmail=" + userEmail + ", getExpenses()=" + getExpenses()
				+ ", getExpensesType()=" + getExpensesType() + ", getExpensesDate()=" + getExpensesDate()
				+ ", getUserEmail()=" + getUserEmail() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
}
