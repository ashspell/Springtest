package com.ashspell.test.lesson05;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class lesson05Controller {
	
	@GetMapping("/lesson05/test01")
	public String test01 () {
		return "lesson05/test01";
	}
	
	@GetMapping("/lesson05/test02")
	public String test02(Model model) {
		
		List<String> musicRanking = new ArrayList<>();
		musicRanking.add("������Ÿ��");
		musicRanking.add("���ɿ���");
		musicRanking.add("������");
		musicRanking.add("������");
		musicRanking.add("����ʹ�");
		
		model.addAttribute("musicRanking", musicRanking);
		
		return "lesson05/test02";
	}
	
	@GetMapping("/lesson05/test03")
	public String test03(Model model) {
		List<Map<String, Object>> membership = new ArrayList<>();

		Map<String, Object> member = new HashMap<>();
		member.put("name", "�տ���");
		member.put("phoneNumber", "010-1234-5678");
		member.put("grade", "VIP");
		member.put("point", 12040);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "���Ȱ�");
		member.put("phoneNumber", "010-4321-1234");
		member.put("grade", "BASIC");
		member.put("point", 3420);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "�����");
		member.put("phoneNumber", "010-8888-1111");
		member.put("grade", "GOLD");
		member.put("point", 1530);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "����");
		member.put("phoneNumber", "010-0000-1234");
		member.put("grade", "GOLD");
		member.put("point", 8450);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "�츶��");
		member.put("phoneNumber", "010-1111-2222");
		member.put("grade", "BASIC");
		member.put("point", 420);
		membership.add(member);
		
		model.addAttribute("membership",membership);
		
		return "lesson05/test03";
	
	}
	
	@GetMapping("/lesson05/test04")
	public String test04 (Model model) {
		
		List<Integer> candidates = new ArrayList<>();
		candidates.add(263001);
		candidates.add(173942); 
		candidates.add(563057); 
		
		model.addAttribute("candidate", candidates);
		
		return "lesson05/test04";
	}
}
