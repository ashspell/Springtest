package com.ashspell.test.lesson05;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ashspell.test.lesson05.model.Member;

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
	
	@GetMapping("/lesson05/test05")
	public String test05(Model model) {
		
		List<Map<String, Object>> cardBills = new ArrayList<>();

		Map<String, Object> cardBill = new HashMap<>();
		cardBill.put("store", "GS48");
		cardBill.put("pay", 7800);
		cardBill.put("date", "2025-09-14");
		cardBill.put("installment", "�Ͻú�");
		cardBills.add(cardBill);

		cardBill = new HashMap<>();
		cardBill.put("store", "���¹�ȭ��");
		cardBill.put("pay", 2750000);
		cardBill.put("date", "2025-09-18");
		cardBill.put("installment", "3����");
		cardBills.add(cardBill);

		cardBill = new HashMap<>();
		cardBill.put("store", "����ġŲ");
		cardBill.put("pay", 180000);
		cardBill.put("date", "2025-09-20");
		cardBill.put("installment", "�Ͻú�");
		cardBills.add(cardBill);
		
		model.addAttribute("cardBill" , cardBill);
		
		return "lesson05/test05";
	}
	
	@GetMapping("/lesson05/test06")
	public String test06(Model model) {
		
		List<Member> members = new ArrayList<>();

		Member member = new Member();
		member.setName("����");
		member.setPhonenumber("010-1234-5678");
		member.setEmail("youbee@gmail.com");
		member.setNationality("�ﱹ�ô� ����");
		member.setIntroduce("���� ���� ���� �����Դϴ�. �ﱹ������ ���� ������ ���ϰڽ��ϴ�.");
		members.add(member);

		member = new Member();
		member.setName("����");
		member.setPhonenumber("010-1234-5678");
		member.setEmail("woo@naver.com");
		member.setNationality("�ﱹ�ô� ����");
		member.setIntroduce("���쿡��. ���� �������� ���� ���̴� ������ �ϴ� �ƿ��Դϴ�.");
		members.add(member);

		member = new Member();
		member.setName("���");
		member.setPhonenumber("02-111-3333");
		member.setNationality("�ﱹ�ô� ����");
		member.setEmail("tools@gmail.com");
		member.setIntroduce("�����");
		members.add(member);

		member = new Member();
		member.setName("����");
		member.setPhonenumber("010-0987-4321");
		member.setNationality("�ﱹ�ô� ��");
		member.setEmail("jojo@gmail.com");
		member.setIntroduce("�̸��� ���� �ڴ� �ʹ��̶� �Ͽ�");
		members.add(member);

		member = new Member();
		member.setName("����");
		member.setPhonenumber("010-0000-1111");
		member.setNationality("�ﱹ�ô� ��");
		member.setEmail("jooyou@kakao.com");
		member.setIntroduce("������ �����ҿ��� ����");
		members.add(member);

		member = new Member();
		member.setName("Ȳ��");
		member.setPhonenumber("031-432-0000");
		member.setNationality("�ﱹ�ô� ����");
		member.setEmail("yellowbug@naver.com");
		member.setIntroduce("�� ���� �� ���ִ� ��");
		members.add(member);
		
		model.addAttribute("Member" , members);
		
		return "lesson05/test06";
	}
	
	
}
