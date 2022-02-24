package com.ashspell.test.lesson02.bo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ashspell.test.lesson02.dao.Real_estateDAO;
import com.ashspell.test.lesson02.model.Real_estate;

@Service
public class Real_estateBO {
	
	@Autowired
	private Real_estateDAO realestateDAO;

	public Real_estate getReal_estate(int id) {
		return realestateDAO.selectestate(id);
	}
	
	// 문제 2,3 github 에서 살펴보기	
	
	
	public int addReal_estateByObject(Real_estate real_estate) {
		return realestateDAO.insertReal_estateByObject(real_estate);
		
	}
	
	// insert 문제 2 살펴보기
	
	
	public int updatedReal_estate(int id , String type,int price) {
		return realestateDAO.updatedReal_estate(id, type, price);
	}
	
	
}



