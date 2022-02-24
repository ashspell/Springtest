package com.ashspell.test.lesson02;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ashspell.test.lesson02.bo.Real_estateBO;
import com.ashspell.test.lesson02.model.Real_estate;

@Controller
public class Real_estateController {
	
	@Autowired
	private Real_estateBO real_estateBO;
	
	@ResponseBody
	@RequestMapping("/lesson02/test01/1")
	public Real_estate real_estate (@RequestParam("id") int id) {
		
		return real_estateBO.getReal_estate(id); 
	}
	
	@RequestMapping("/lesson02/test02/1")
	public String addReal_estate() {
		
		Real_estate real_estate = new Real_estate();
		real_estate.setRealtorId(3);
		real_estate.setAddress("Ǫ������ ���� 303�� 1104ȣ");
		real_estate.setArea(89);
		real_estate.setType("�Ÿ�");
		real_estate.setPrice(100000);
		
		int count = real_estateBO.addReal_estateByObject(real_estate);
		
		return "�Է� ���� : " + count;
	
	}
	
	// insert 2������ 
	
	
	
	
	
	@RequestMapping("/lesson02/test02/3")
	public String updatedReal_estate() {
	
		int count = real_estateBO.updatedReal_estate(24, "����", 70000);
	
		return "���� ����" + count;
	}	
}
