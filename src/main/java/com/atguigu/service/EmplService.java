package com.atguigu.service;

import java.util.List;
import java.util.Map;

import com.atguigu.bean.EmployeeInfo;

public interface EmplService {

	List<EmployeeInfo> selectAll();

	
	/**
     * 用户查询
     * @param map
     * @return
     */
    public List<EmployeeInfo> find(Map<String, Object> map);
    
    /**
     * 获取总记录数
     * @param map
     * @return
     */
    public Long getTotal(Map<String, Object> map);
}
