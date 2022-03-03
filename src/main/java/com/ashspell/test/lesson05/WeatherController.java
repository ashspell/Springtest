package com.ashspell.test.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ashspell.test.lesson05.bo.WeatherBO;
import com.ashspell.test.lesson05.model.Weather;

@Controller
@RequestMapping("/lesson05")
public class WeatherController {

	@Autowired
	public WeatherBO weatherBO;
	
	@GetMapping ("/weatherinfo")
	public String weatherhistory(Model model) {
		List<Weather> weatherhistory = weatherBO.getWeatherhistory();
		
		model.addAttribute("weatherhistory", weatherhistory);
		return "lesson05/weatherinfo";
	}

	@GetMapping("/weatherinput")
	public String weatherinput() {
		return "lesson05/weatherinput";
	}
	
	
	
	
	
}
