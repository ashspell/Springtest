package com.ashspell.test.lesson07.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ashspell.test.lesson07.model.Booking;

@Repository
public interface BookingDAO {
	
	public List<Booking> selectBookingList();
		
	public int insertFavorite(
			@Param("name") String name,
			@Param("date") String date,
			@Param("day") int day,
			@Param("headcount") int headcount,
			@Param("phonenumber") String phonenumber);
	
}