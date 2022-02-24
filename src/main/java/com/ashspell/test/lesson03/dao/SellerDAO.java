package com.ashspell.test.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


import com.ashspell.test.lesson03.model.Seller;

@Repository
public interface SellerDAO {
	
	public Seller selectseller(@Param("id")int id);
	
	public int insertseller(
			@Param("nickname") String nickname,
			@Param("profil") String profil,
			@Param("temperature") double temperature);
	
	public Seller selectLastSeller();
	
	public Seller selectSeller(@Param("id") int id);
}
