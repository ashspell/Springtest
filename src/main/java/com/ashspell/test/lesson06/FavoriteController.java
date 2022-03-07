package com.ashspell.test.lesson06;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ashspell.test.lesson06.bo.FavoriteBO;
import com.ashspell.test.lesson06.model.Favorite;

@Controller

public class FavoriteController {
	
	@Autowired
	public FavoriteBO favoriteBO;
	
	@GetMapping("/lesson06/favoriteInput")
	public String favoriteInput() {
		
		return "lesson06/favoriteInput";
	}

	@GetMapping("/lesson06/favorite_list")
	public String favoriteList(Model model) {
	
	 List<Favorite> favoriteList = favoriteBO.getFavoriteList();
		
	 model.addAttribute("favoriteList", favoriteList);
	 
	 return "lesson06/favoriteList";
	}	
	
	@PostMapping("/lesson06/add_favorite")
	@ResponseBody
	public Map<String, String> addFavorite(
			@RequestParam("name")String name,
			@RequestParam("url") String url) {
		
		int count = favoriteBO.addFavorite(name, url);
		
		//성공시
		// {"result":"success"}
		
		//실패시
		//{"result":"fail"}
		
		Map<String, String> resultMap = new HashMap<>();
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
			
	}
	
	@PostMapping("/lesson07/duplicatefavorite")
	@ResponseBody
	public Map<String, Boolean>urlDuplicate(@RequestParam("url") String url) {
		
	boolean isDuplicate = favoriteBO.urlDuplicate(url);
		
		//중복시
		// {"is.duplicate":true}
		//비 중복시
		// {"is.duplicate":false}
		
		Map<String, Boolean> result = new HashMap<>();
		if(isDuplicate) {
			result.put("is_duplicate", true);
		} else {
			result.put("is_duplicate", false);
		}
		
		return result;
		}
	
		@GetMapping("/delete_favorite")
		@ResponseBody
		public Map<String , String> deleteFavorite(@RequestParam("id") int id) {
			
			int count = favoriteBO.deleteFavorite(id);
			
			// {"result":"success"}
			// {"result":"fail"}
			
			Map<String, String> result = new HashMap<>();
			if(count == 1) {
				result.put("result", "success");
			} else {
				result.put("result", "fail");
			}
			
			return result;
		}
		
}
