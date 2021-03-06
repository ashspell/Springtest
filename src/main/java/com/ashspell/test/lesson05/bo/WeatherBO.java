package com.ashspell.test.lesson05.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ashspell.test.lesson05.dao.WeatherDAO;
import com.ashspell.test.lesson05.model.Weather;

@Service
public class WeatherBO {
	
	@Autowired
	public WeatherDAO weatherDAO;
	
	
	public List<Weather> getWeatherhistory() {
		return weatherDAO.selectWeatherhistory();
	}
	
	public int addWeather(Date date, 
			String weather, 
			double temperatures, 
			double precipitation, 
			String microDust, 
			double windSpeed) {
		
		return weatherDAO.insertWeather(date, weather, temperatures, precipitation, microDust, windSpeed);
	}
}

