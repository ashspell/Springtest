package com.ashspell.test.lesson01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/lesson01/test02")
public class Test02Controller {
	@RequestMapping("/1")
	
	public Map<String, Object> printMap() {
		
		List<Map<String, Object>> list = new ArrayList<>();
		
		
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> map2 = new HashMap<>();
		Map<String, Object> map3 = new HashMap<>();
		Map<String, Object> map4 = new HashMap<>();
		Map<String, Object> map5 = new HashMap<>();
		
		map.put("rate",15);
		map.put("director", "����ȣ");
		map.put("time", 131);
		map.put("title", "�����");
		list.add(map);
		
		map2.put("rate",0);
		map2.put("director", "�κ����� ���ϴ�");
		map2.put("time", 116);
		map2.put("title", "�λ��� �Ƹ��ٿ�");
		list.add(map2);
	
		map3.put("rate",12);
		map3.put("director", "ũ�������� ���");
		map3.put("time", 147);
		map3.put("title", "�μ���");
		list.add(map3);
		
		map4.put("rate",19);
		map4.put("director", "������");
		map4.put("time", 133);
		map4.put("title", "���˿��� ����");
		list.add(map4);
		
		map5.put("rate",15);
		map5.put("director", "�����ý� �η���");
		map5.put("time", 137);
		map5.put("title", "��Ű���");
		list.add(map5);
		return map;
		
		
		
		
		
		
		
	
		
	}
}
