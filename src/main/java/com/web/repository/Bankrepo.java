package com.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.model.Bank;

public interface Bankrepo extends JpaRepository<Bank, Integer> {

}
