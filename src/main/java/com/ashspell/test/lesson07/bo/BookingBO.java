package com.ashspell.test.lesson07.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ashspell.test.lesson07.dao.BookingDAO;
import com.ashspell.test.lesson07.model.Booking;

@Service
public class BookingBO {
	
	@Autowired
	public BookingDAO bookingDAO;
	
	
	public List<Booking> getBookingList() {
		
		return bookingDAO.selectBookingList();
	}
	
	public int insertBooking(String name, Date date, int day, int headcount, String phonenumber) {
		return bookingDAO.insertBooking(name, date, day, headcount, phonenumber);
	}
	
	public int deletebooking(int id) {
		return bookingDAO.deletebooking(id);
	}
	
}
