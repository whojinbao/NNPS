package com.web.reputation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Emp;
import com.service.reputation.EmpService;

@Controller
@RequestMapping("/emp")
public class EmpController {
	@Autowired
	private EmpService empService;
	@RequestMapping("/query")
	public void query(){
		List<Emp> list= empService.query();
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getEname());
		}
	}
}
