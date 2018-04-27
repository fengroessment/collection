package com.atguigu.mapper;

import java.util.List;
import java.util.Map;

import com.atguigu.bean.EmployeeInfo;

public interface EmployeeInfoMapper {
    
    int deleteByPrimaryKey(Integer id);

    int insert(EmployeeInfo record);

    EmployeeInfo selectByPrimaryKey(Integer id);

    
    List<EmployeeInfo> selectAll();

    int updateByPrimaryKey(EmployeeInfo record);
    
    /**
     * 用户查询
     * @param map
     * @return用户集合
     */
    public List<EmployeeInfo> find(Map<String, Object> map);
    
    /**
     * 获取总记录数
     * @param map
     * @return获取的total数
     */
    public Long getTotal(Map<String, Object> map);
}