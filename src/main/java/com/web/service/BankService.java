package com.web.service;

import com.web.model.Bank;

public interface BankService {
	public Bank createAccount(Bank bank);
	public Bank getBalance(int acno);
	public String deposit(int acno,double amt);
	public String withdrawAmt(int acno,double amt);
	public String transferAmt(int acno,int tac,double amt);
	public String closeAccount(int acno);

}
