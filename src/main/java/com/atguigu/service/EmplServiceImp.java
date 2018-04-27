package com.atguigu.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.bean.EmployeeInfo;
import com.atguigu.mapper.EmployeeInfoMapper;

@Service
public class EmplServiceImp implements EmplService {
	
	@Autowired
	EmployeeInfoMapper employeeInfoMapper;

	@Override
	public List<EmployeeInfo> selectAll() {
		List<EmployeeInfo> empList = employeeInfoMapper.selectAll();
		return empList;
	}

	@Override
	public List<EmployeeInfo> find(Map<String, Object> map) {
		List<EmployeeInfo> empList = employeeInfoMapper.find(map);
		return empList;
	}

	@Override
	public Long getTotal(Map<String, Object> map) {
		Long total = employeeInfoMapper.getTotal(map);
		return total;
	}

	
	
}
