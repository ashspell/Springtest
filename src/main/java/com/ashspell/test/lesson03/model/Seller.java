package com.ashspell.test.lesson03.model;

import java.util.Date;

public class Seller {
	private int id;
	private String nickname;
	private String profile_imgurl;
	private double temperature;
	private Date createdAt;
	private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getProfile_imgurl() {
		return profile_imgurl;
	}
	public void setProfile_imgurl(String profile_imgurl) {
		this.profile_imgurl = profile_imgurl;
	}
	public double getTemperature() {
		return temperature;
	}
	public void setTemperature(int temperature) {
		this.temperature = temperature;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	
}
