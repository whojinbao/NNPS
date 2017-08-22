package com.service.impl.reputation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.reputation.EmpDao;
import com.entity.Emp;
import com.service.reputation.EmpService;
@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	private EmpDao dao;
	@Override
	public List<Emp> query() {
		// TODO Auto-generated method stub
		return dao.query();
	}

}
