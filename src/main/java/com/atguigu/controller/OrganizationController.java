package com.atguigu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.bean.AjaxResult;
import com.atguigu.bean.SysOrganization;
import com.atguigu.service.SysOrganizationService;

@Controller
public class OrganizationController {
	
	@Autowired
	SysOrganizationService sysOrganizationService;
	
	@RequestMapping("organizationList")
	@ResponseBody
	public List<SysOrganization> organizationList() {
		//查询组织机构列表，返回list
		List<SysOrganization> orgList= sysOrganizationService.selectOrganization();
		return orgList;
	}
	
	//组织机构添加
	@RequestMapping("gotoAddOrg")
	public String gotoAddOrg() {
		return "addOrg";
	}
	
	@RequestMapping("saveOrg")
	@ResponseBody
	public Object saveOrg(SysOrganization sysOrgan) {
		AjaxResult result=new AjaxResult();
		try {
			sysOrganizationService.insertOrgan(sysOrgan);
			result.setSucceess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSucceess(false);
		}
		return result;
	}
	
	//组织机构修改
	@RequestMapping(value="updateById")
	@ResponseBody
	public Object updateById(SysOrganization sysOrgan) {
		AjaxResult result=new AjaxResult();
		try {
			System.out.println(sysOrgan);
			sysOrganizationService.updateByPrimaryKey(sysOrgan);
			result.setSucceess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSucceess(false);
		}
		System.out.println(result);
		return result;
	}
	
	//组织机构修改
	@RequestMapping(value="deleteByPrimaryKey")
	@ResponseBody
	public Object deleteByPrimaryKey(Integer id) {
		AjaxResult result=new AjaxResult();
		try {
			System.out.println(id);
			sysOrganizationService.deleteByPrimaryKey(id);
			result.setSucceess(true);
		} catch (Exception e) {
			e.printStackTrace();
			result.setSucceess(false);
		}
		System.out.println(result);
		return result;
	}
	
	
	
	
	
	
}
