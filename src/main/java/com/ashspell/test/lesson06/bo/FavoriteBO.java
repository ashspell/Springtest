package com.ashspell.test.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ashspell.test.lesson06.dao.FavoriteDAO;
import com.ashspell.test.lesson06.model.Favorite;

@Service
public class FavoriteBO {
	
	@Autowired
	public FavoriteDAO favoriteDAO;
	
	public List<Favorite> getFavoriteList() {
		
		return favoriteDAO.selectFavoriteList();
	}
	
	public int addFavorite(String name, String url) {
		
	}
}
