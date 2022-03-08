package com.ashspell.test.lesson07.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ashspell.test.lesson07.model.Booking;

@Repository
public interface BookingDAO {
	
	public List<Booking> selectBookingList();
		
	public int insertBooking(
			@Param("name") String name,
			@Param("date") Date date,
			@Param("day") int day,
			@Param("headcount") int headcount,
			@Param("phonenumber") String phonenumber);
	
	
	
	
	public int deletebooking(@Param("id") int id);
	
}
