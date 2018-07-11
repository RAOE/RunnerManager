package com.xyf.pojo;

import java.util.Date;

public class Messages {

	private Long id;
	private String message;
	private Boolean isAnonymous;
	private Boolean isAdmin;
	private Boolean isDeleted;
	private Date createTime;
	private String name;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Boolean getIsAnonymous() {
		return isAnonymous;
	}
	public void setIsAnonymous(Boolean isAnonymous) {
		this.isAnonymous = isAnonymous;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Boolean getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(Boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	public Boolean getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(Boolean  isDeleted) {
		this.isDeleted = isDeleted;
	}
	@Override
	public String toString() {
		return "Messages [id=" + id + ", message=" + message + ", createTime="  + ", isAnonymous="
				+ isAnonymous + ", isAdmin=" + isAdmin + ", isDeleted=" + isDeleted + "]";
	}

	
	
	
	
	
}
