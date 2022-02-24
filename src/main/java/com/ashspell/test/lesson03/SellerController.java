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

	
	// �г��� �����ʻ��� url �µ� ���� �ް� db�� ����
	
	@PostMapping("test01/add_seller")
	@ResponseBody
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam("profile") String profile,
			@RequestParam("temperature") double temperature) {
		
		int count = sellerBO.addSeller(nickname, profile, temperature);
		
		return "�Է¼���" + count;
	}
	
	@GetMapping ("/test01/seller_info")
	public String sellerinfo(
			@RequestParam(value = "id" , required = false) Integer id,
			Model model) {
		// id ��� �Ķ���Ͱ� ������ �ش��ϴ� ���� ���
		if (id != null) {
			
			Seller seller = sellerBO.getSeller(id);
			model.addAttribute("seller" , seller);
		}else {
			Seller seller = sellerBO.getLastSeller();
			
			model.addAttribute("seller" , seller);
			
			
		}
		// id �Ķ���Ͱ� ������ ���� �ֱ� �Ǹ��� ���
		
		
		
		return "/lesson03/sellerInfo";
	}
	

}
