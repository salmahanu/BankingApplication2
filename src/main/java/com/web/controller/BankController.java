package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.Bank;
import com.web.service.BankServiceImp;



@Controller
public class BankController {

	@Autowired
	private BankServiceImp service;
	@RequestMapping("/")
	public String homePage()
	{
		return "home";
	}
	@RequestMapping("/newacc")
	public String createOpen()
	{
		return "openaccount";
	}
	@RequestMapping("/NewaccCode")
	public String saveAccount(Bank bank)
	{
		service.createAccount(bank);
		return "success";
	}
	@RequestMapping("/balance")
	public String BalnceForm()
	{
		return "balform";
	}
	@RequestMapping("/BalanceCode")
	public String getBalance(@RequestParam int acno,ModelMap model)
	{
	   model.put("bank",service.getBalance(acno));
	   return "displaybal";
		
	}
	@RequestMapping("/deposit")
	public String depoform()
	{
		return "dform";
	}
	@RequestMapping("/DepositCode")
	public String depoCode(@RequestParam int acno,@RequestParam double amt,ModelMap model)
	{
		model.put("ddetails", service.deposit(acno, amt));
		
		return "dresult";
	}
	
	@RequestMapping("/Withdraw")
	public String withdrawform()
	{
		return "withdraw";
	}
	@RequestMapping("/WithDrawCode")
	public String withdrawCode(@RequestParam int acno,@RequestParam double amt,ModelMap model)
	{
		model.put("adetails", service.withdrawAmt(acno, amt));
		
		return "wresult";
	}
	@RequestMapping("/transfer")
	public String transferForm()
	{
		return "transfer";
	}
	@RequestMapping("/TransferCode")
	public String transferCode(@RequestParam int acno,@RequestParam int tac,@RequestParam double amt,ModelMap model)
	{
	model.put("tdetails",service.transferAmt(acno, tac, amt));
	return "tresult";
	}
	
	@RequestMapping("/close")
	public String closeForm()
	{
		return "close";
	}
	@RequestMapping("/CloseCode")
	public String closeAcc(@RequestParam int acno,ModelMap model)
	{
		model.put("cdetails",service.closeAccount(acno));
		return "cresult";
	}
	

}
