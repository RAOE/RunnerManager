package com.xyf.pojo;

public class Admin {

	private Long id;
	private String name;
	private String phone;
	private String password;
	private String description;
	private Boolean isDeleted;
	private Boolean roleid;//当前为权限控制 是否为裁判长 1是 0否 
	private String realname;
	
	
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Boolean getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	public Boolean getRoleid() {
		return roleid;
	}
	public void setRoleid(Boolean roleid) {
		this.roleid = roleid;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", phone=" + phone + ", password=" + password + ", description="
				+ description + ", isDeleted=" + isDeleted + ", roleid=" + roleid + "]";
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Admin other = (Admin) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
	
	
	
	
	
}
