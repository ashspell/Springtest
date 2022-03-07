package com.ashspell.test.lesson07;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ashspell.test.lesson06.dao.FavoriteDAO;

@Controller
public class Lesson07Controller {
	
	@Autowired
	public FavoriteDAO favoriteDAO;
	
	@GetMapping("/lesson07/bookinginfo")
	public String bookingInfo() {
		return "lesson07/BookingInfo";
	}
}
