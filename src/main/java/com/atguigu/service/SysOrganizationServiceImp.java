package com.atguigu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.bean.SysOrganization;
import com.atguigu.mapper.SysOrganizationMapper;

@Service
public class SysOrganizationServiceImp implements SysOrganizationService {
	
	@Autowired
	SysOrganizationMapper sysOrganizationMapper;
	
	public List<SysOrganization> selectOrganization(){
		List<SysOrganization> list = sysOrganizationMapper.selectAll();
		return list;
	}

	@Override
	public void insertOrgan(SysOrganization sysOrgan) {
		sysOrganizationMapper.insert(sysOrgan);
	}

	@Override
	public SysOrganization selectByPrimaryKey(Integer id) {
		SysOrganization sysOrgan = sysOrganizationMapper.selectByPrimaryKey(id);
		return sysOrgan;
	}

	@Override
	public void updateByPrimaryKey(SysOrganization sysOrgan) {
		sysOrganizationMapper.updateByPrimaryKey(sysOrgan);
	}

	@Override
	public void deleteByPrimaryKey(Integer id) {
		sysOrganizationMapper.deleteByPrimaryKey(id);
	};
}
