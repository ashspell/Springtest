package com.ashspell.test.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/lesson01/test01")
public class Test01Controller {
	
	@RequestMapping("/1")
	@ResponseBody
	public String printString() {
		return "<h1>�׽�Ʈ ������Ʈ �ϼ�</h1>" 
				+ "<h2>�ش� ������Ʈ�� ���ؼ� ���� Ǯ�̸� ���� �մϴ�.</h2>";
		}
	
	@RequestMapping("/2")
	@ResponseBody
	public Map<String, Object> printMap() {
		Map<String, Object> map = new HashMap<>();
		
		map.put("����", 80);
		map.put("����", 90);
		map.put("����", 85);
		
		return map;
	}

}
