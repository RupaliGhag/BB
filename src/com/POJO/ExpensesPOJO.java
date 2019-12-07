package com.POJO;

public class ExpensesPOJO {
	private int expenseId;
	private int expenses;
	private String expensesType;
	private String expensesDate;
	private String userEmail;
	public int getExpenseId() {
		return expenseId;
	}
	public void setExpenseId(int expenseId) {
		this.expenseId = expenseId;
	}
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
		return "ExpensesPOJO [expenseId=" + expenseId + ", expenses=" + expenses + ", expensesType=" + expensesType
				+ ", expensesDate=" + expensesDate + ", userEmail=" + userEmail + "]";
	}


}
