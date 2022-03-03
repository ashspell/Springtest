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
@RequestMapping("/lesson06")
public class FavoriteController {
	
	@Autowired
	public FavoriteBO favoriteBO;
	
	@GetMapping("/favoriteInput")
	public String favoriteInput() {
		
		return "lesson06/favoriteInput";
	}
	

	
	
	

	@GetMapping("/lesson06/favorite_list")
	public String favoriteList(Model model) {
	
	 List<Favorite> favoriteList = favoriteBO.getFavoriteList();
		
	 model.addAttribute("favoriteList", favoriteList);
	 
	 return "lesson06/favoriteList";
	}	
	
	@PostMapping("/add_favorite")
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
	
	
	
	
	
	
}
