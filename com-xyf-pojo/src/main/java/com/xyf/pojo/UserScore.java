package com.xyf.pojo;

public class UserScore {

	private Long id;
	private Long adminId;
	private Long userId;
    private Long score;
    private Boolean isDeleted;
    private Long projectId;
    /*
     * 新增裁判名称
     * 比赛项目
     * 运动员名称
     */
    private String admin_name;
    private String user_name;
    private String project_name;
    private String user_team;
    
    
    
    
    
    
    
	public String getUser_team() {
		return user_team;
	}
	public void setUser_team(String user_team) {
		this.user_team = user_team;
	}
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
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public Long getProjectId() {
		return projectId;
	}
	public void setProjectId(Long projectid) {
		this.projectId = projectid;
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
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getScore() {
		return score;
	}
	public void setScore(Long score) {
		this.score = score;
	}


	public Boolean getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	@Override
	public String toString() {
		return "UserScore [id=" + id + ", adminId=" + adminId + ", userId=" + userId + ", score=" + score
				+ ", isDleleted=" + isDeleted + ", projectId=" + projectId + ", admin_name=" + admin_name
				+ ", user_name=" + user_name + ", project_name=" + project_name + "]";
	}
    
	
	
	
}
