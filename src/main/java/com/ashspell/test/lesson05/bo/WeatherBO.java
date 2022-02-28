package com.ashspell.test.lesson05.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ashspell.test.lesson03.model.Seller;
import com.ashspell.test.lesson05.dao.WeatherDAO;
import com.ashspell.test.lesson05.model.Weather;

@Service
public class WeatherBO {
	
	@Autowired
	public WeatherDAO weatherDAO;
	
	
	public Weather getWeatherhistory() {
		return weatherDAO.getWeatherhistory(weatherDAO);
	}
}
