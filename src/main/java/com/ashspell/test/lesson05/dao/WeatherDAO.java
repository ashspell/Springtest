package com.ashspell.test.lesson05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ashspell.test.lesson05.model.Weather;



@Repository
public interface WeatherDAO {

	

	public List<Weather> selectWeatherhistory();

}
