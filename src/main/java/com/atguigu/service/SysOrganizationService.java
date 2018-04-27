package com.atguigu.service;

import java.util.List;

import com.atguigu.bean.SysOrganization;

public interface SysOrganizationService {
		
	public List<SysOrganization> selectOrganization();

	public void insertOrgan(SysOrganization sysOrgan);

	public SysOrganization selectByPrimaryKey(Integer id);

	public void updateByPrimaryKey(SysOrganization sysOrgan);

	public void deleteByPrimaryKey(Integer id);

	
}
