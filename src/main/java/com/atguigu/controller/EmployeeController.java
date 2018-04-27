package com.atguigu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.atguigu.bean.EmployeeInfo;
import com.atguigu.service.EmplService;
import com.atguigu.util.ResponseUtil;
import com.atguigu.util.StringUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class EmployeeController {
	
	@Autowired
	EmplService emplService;
	
	@RequestMapping("employeeList")
	public String employeeList(@RequestParam(value="page",required=false) String page,
			@RequestParam(value="rows",required=false) String rows,
			EmployeeInfo emp,HttpServletResponse res) throws Exception {
		
//		PageBean pageBean=new PageBean(Integer.parseInt(page),Integer.parseInt(rows));
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("userName", StringUtil.formatLike(emp.getUserName()));
//        map.put("start", pageBean.getStart());
//        map.put("size", pageBean.getPageSize());
        
        List<EmployeeInfo> empList = emplService.find(map);
        Long total = emplService.getTotal(map);
        
        JSONObject result = new JSONObject();
        JSONArray jsonArray = JSONArray.fromObject(empList);
        
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil.write(res, result);
        return null;
		//List<EmployeeInfo> employeeList = emplService.selectAll();
       
	}
}
