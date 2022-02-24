package com.ashspell.test.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.ashspell.test.lesson04.dao.RealtorDAO;
import com.ashspell.test.lesson04.model.Realtor;

@Service
public class RealtorBO {
	
	@Autowired
		public RealtorDAO realtorDAO;
	
	public int addRealtor(Realtor realtor) {
		return realtorDAO.insertRealtor(realtor);
	}
}
