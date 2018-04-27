package com.atguigu.bean;

import java.util.Date;

public class SysOrganization {
    
    private Integer id;

    
    private Date createTime;

    private Date modifyTime;

    private Integer version;

    private Integer status;

    private String name;

    private Integer parentId;
    private String address;

    private String phone;

    private String postCode;

    private String fax;
    private Byte type;

    private Integer orderNo;

    private String code;

    private String principalId;

    private String path;

	public SysOrganization(Integer id, Date createTime, Date modifyTime, Integer version, Integer status, String name,
			Integer parentId, String address, String phone, String postCode, String fax, Byte type, Integer orderNo,
			String code, String principalId, String path) {
		super();
		this.id = id;
		this.createTime = createTime;
		this.modifyTime = modifyTime;
		this.version = version;
		this.status = status;
		this.name = name;
		this.parentId = parentId;
		this.address = address;
		this.phone = phone;
		this.postCode = postCode;
		this.fax = fax;
		this.type = type;
		this.orderNo = orderNo;
		this.code = code;
		this.principalId = principalId;
		this.path = path;
	}

	public SysOrganization() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public Byte getType() {
		return type;
	}

	public void setType(Byte type) {
		this.type = type;
	}

	public Integer getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPrincipalId() {
		return principalId;
	}

	public void setPrincipalId(String principalId) {
		this.principalId = principalId;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	@Override
	public String toString() {
		return "SysOrganization [id=" + id + ", createTime=" + createTime + ", modifyTime=" + modifyTime + ", version="
				+ version + ", status=" + status + ", name=" + name + ", parentId=" + parentId + ", address=" + address
				+ ", phone=" + phone + ", postCode=" + postCode + ", fax=" + fax + ", type=" + type + ", orderNo="
				+ orderNo + ", code=" + code + ", principalId=" + principalId + ", path=" + path + "]";
	}
    
	
    
}