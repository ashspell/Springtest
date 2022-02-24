package com.ashspell.test.lesson02.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ashspell.test.lesson02.model.Real_estate;

@Repository
public interface Real_estateDAO {
	
	public Real_estate selectestate(@Param("id") int id);
		
	public int insertReal_estateByObject(Real_estate real_estate);
	
	public int updatedReal_estate(
			@Param("id") int id,
			@Param("type") String type,
			@Param("price") int price);
}
