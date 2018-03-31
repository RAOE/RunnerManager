package com.xyf.pojo;

public class AdminScore {

	private Long id;
	private Long adminId;
	private String evaluate;
	private Long score;
	private Long userId;
	private Boolean isDeleted;
	private String name;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getAdminId() {
		return adminId;
	}
	public void setAdminId(Long adminId) {
		this.adminId = adminId;
	}
	public String getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}
	public Long getScore() {
		return score;
	}
	public void setScore(Long score) {
		this.score = score;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Boolean getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	@Override
	public String toString() {
		return "AdminScore [adminId=" + adminId + ", evaluate=" + evaluate + ", score=" + score + ", userId=" + userId
				+ ", isDeleted=" + isDeleted + "]";
	}
	
	
	
	
	
	
	
	
	
}
