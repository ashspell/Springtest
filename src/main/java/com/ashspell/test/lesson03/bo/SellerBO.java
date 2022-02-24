package com.ashspell.test.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ashspell.test.lesson03.dao.SellerDAO;
import com.ashspell.test.lesson03.model.Seller;

@Service
public class SellerBO {

	@Autowired
		private SellerDAO sellerDAO;
	
	public Seller addSeller(int id) {
		return sellerDAO.selectseller(id);
	}
	
	
	public int addSeller(String nickname, String profil, double temperature) {
	 	return sellerDAO.insertseller(nickname, profil, temperature);
	}
	
	public Seller getLastSeller() {
		return sellerDAO.selectLastSeller();
	}
	
	public Seller getSeller(int id) {
		return sellerDAO.selectseller(id);
	}
}
