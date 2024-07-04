package com.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.Bank;
import com.web.repository.Bankrepo;

@Service
public class BankServiceImp implements BankService {
    @Autowired
    private Bankrepo repo;
	@Override
	public Bank createAccount(Bank bank) {
		bank.setStatus("active");
		Bank b=repo.save(bank);
		return b;
	}
	@Override
	public Bank getBalance(int acno) {
		Bank b=repo.findById(acno).get();
		
		return b;
	}
	@Override
	public String deposit(int acno,double amt) {
		Bank b=repo.findById(acno).get();
		if(b.getStatus().equals("active"))
		{
		b.setAmount(b.getAmount()+amt);
		 Bank  b1=repo.save(b);
		 double d=b1.getAmount();
		 String s="Your balance has increases"+amt;
		 return s;
		}
		else
		{
		  return "your account is deactivaed";
		}
		
		
		
	}
	@Override
	public String withdrawAmt(int acno, double amt) {
		Bank b=repo.findById(acno).get();
		if(b.getStatus().equals("active"))
		{
			if(b.getAmount()>amt)
			{
		     b.setAmount(b.getAmount()-amt);
		     Bank  b1=repo.save(b);
		     double d=b1.getAmount();
		     String s="Your balance has decreased"+amt;
		     return s;
			}
			else
			{
				return "sorry insufficient balance";
			}
		}
		else
		{
		  return "your account is deactivaed";
		}
		
		
	}
	@Override
	public String transferAmt(int acno, int tac, double amt) {
		Bank b=repo.findById(acno).get();
		Bank b1=repo.findById(tac).get();
		if(b.getStatus().equals("active") && b1.getStatus().equals("active"))
		{
			if(b.getAmount()>=amt)
			{
				
				b.setAmount(b.getAmount()-amt);
				b1.setAmount(b1.getAmount()+amt);
				repo.save(b);
				repo.save(b1);
				return "the targe amount balance is"+b1.getAmount()+"reduced balance is"+b.getAmount();
			}
			else
			{
				return "insufficient balance";
			}
		}
		else
		{
			return "your account is deactivated";
		}
		
	}
	@Override
	public String closeAccount(int acno) 
	{
		Bank b=repo.findById(acno).get();
		b.setStatus("deactive");
		repo.save(b);
		return "Welcome"+b.getName()+"your account no"+b.getAcno()+"has closed";
	}
	
	

}
