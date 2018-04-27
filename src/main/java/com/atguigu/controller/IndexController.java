package com.atguigu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.atguigu.bean.EmployeeInfo;
import com.atguigu.bean.PageBean;
import com.atguigu.bean.SysOrganization;
import com.atguigu.service.EmplService;
import com.atguigu.service.SysOrganizationService;
import com.atguigu.util.ResponseUtil;
import com.atguigu.util.StringUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class IndexController {
	
	@Autowired
	SysOrganizationService sysOrganizationService;
	
	@Autowired	
	EmplService emplService;
	
	//员工
	@RequestMapping("goto_employee")
	public String goto_employee() {
		return "employee";
	}
	
	
	//组织机构
	@RequestMapping("goto_organization")
	public String goto_organization(HttpServletRequest request, HttpServletResponse response) {
		List<SysOrganization> organizationList = sysOrganizationService.selectOrganization();
		return "organization";
	}

	@RequestMapping("index")
	public String index(String url, String title, ModelMap map) {

		map.put("url", url);
		map.put("title", title);
		return "main";
	}

}
