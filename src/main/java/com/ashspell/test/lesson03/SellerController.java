package com.ashspell.test.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ashspell.test.lesson03.bo.SellerBO;
import com.ashspell.test.lesson03.model.Seller;
	
@RequestMapping("/lesson03")
@Controller
public class SellerController {
	
	@Autowired
	private SellerBO sellerBO;
	
	@GetMapping ("/test01/input")
	public String sellerInput() {
		return "lesson03/sellerInput";
	}

	
	// 닉네임 프로필사진 url 온도 전달 받고 db에 저장
	
	@PostMapping("test01/add_seller")
	@ResponseBody
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam("profile") String profile,
			@RequestParam("temperature") double temperature) {
		
		int count = sellerBO.addSeller(nickname, profile, temperature);
		
		return "입력성공" + count;
	}
	
	@GetMapping ("/test01/seller_info")
	public String sellerinfo(
			@RequestParam(value = "id" , required = false) Integer id,
			Model model) {
		// id 라는 파라미터가 있으면 해당하는 정보 출력
		if (id != null) {
			
			Seller seller = sellerBO.getSeller(id);
			model.addAttribute("seller" , seller);
		}else {
			Seller seller = sellerBO.getLastSeller();
			
			model.addAttribute("seller" , seller);
			
			
		}
		// id 파라미터가 없으면 가장 최근 판매자 출력
		
		
		
		return "/lesson03/sellerInfo";
	}
	

}
