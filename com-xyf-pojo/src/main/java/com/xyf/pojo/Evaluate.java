package com.xyf.pojo;

public class Evaluate {

	private Long id;
	private Long userId;
	private Long adminId;
	private String image;
	private String evaluate;
	private Boolean isDeleted;
	private String admin_name;
	private String user_name;
	
	
	
	
	
	
	
	
	
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Boolean getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getAdminId() {
		return adminId;
	}
	public void setAdminId(Long adminId) {
		this.adminId = adminId;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}
	@Override
	public String toString() {
		return "Evaluate [id=" + id + ", userId=" + userId + ", adminId=" + adminId + ", image=" + image + ", evaluate="
				+ evaluate + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
