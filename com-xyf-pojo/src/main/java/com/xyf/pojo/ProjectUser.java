package com.xyf.pojo;

public class ProjectUser {
    //成员管理中的用户
	//1.评分
	//2.裁判的评价多个
	//3.个人资料
	private Long id;
	private Long userId;
	private Long projectId;
	
	private String name;
	private String description;
	private Long score;
	private String message;
	private Boolean isMale;
	private String team;
	private Boolean isDeleted;
	
    
	
	public Long getUserid() {
		return userId;
	}
	public void setUserid(Long userid) {
		this.userId = userid;
	}
	public Long getProjectid() {
		return projectId;
	}
	public void setProjectid(Long projectid) {
		this.projectId = projectid;
	}
	public Boolean getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public Boolean getIsMale() {
		return isMale;
	}
	public void setIsMale(Boolean isMale) {
		this.isMale = isMale;
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
	
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Long getScore() {
		return score;
	}
	public void setScore(Long score) {
		this.score = score;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "ProjectUser [id=" + id + ", userid=" + userId + ", projectid=" + projectId + ", name=" + name
				+ ", description=" + description + ", score=" + score + ", message=" + message + ", isMale=" + isMale
				+ ", team=" + team + ", isDeleted=" + isDeleted + "]";
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProjectUser other = (ProjectUser) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
	
	
	
	
	
	
	
	
	
	
}
