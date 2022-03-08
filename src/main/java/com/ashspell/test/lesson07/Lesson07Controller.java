package com.ashspell.test.lesson07;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ashspell.test.lesson07.bo.BookingBO;
import com.ashspell.test.lesson07.model.Booking;

@Controller
public class Lesson07Controller {
	
	@Autowired
	public BookingBO bookingBO;
	
	@GetMapping("/lesson07/bookinginfo")
	public String booking(Model model) {
		List<Booking> booking = bookingBO.getBookingList();
		
		model.addAttribute("booking", booking);
		return "lesson07/BookingInfo";
	}
	
	@GetMapping("/lesson07/bookinginput")
	public String bookinginput() {
		return "lesson07/BookingInput";
	}
	
	@PostMapping("/lesson07/insertbooking")
	
	
	
	
	
	
	
	@GetMapping("/lesson07/delete_booking")
	@ResponseBody
	public Map<String, Object> deletebooking(@RequestParam("id") int id) {
		
		int count = bookingBO.deletebooking(id);
		
	
		Map<String, Object> result = new HashMap<>();
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
}
