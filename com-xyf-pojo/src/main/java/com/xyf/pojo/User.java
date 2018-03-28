package com.xyf.pojo;

import java.io.Serializable;
import java.util.Date;


public class User implements Serializable {

  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private Long  id;
  private String name;
  private String phone;
  private String password;
  private String image;
  private Long  age;
  private Long weight;
  private String description;
  private Date createTime;
  private String team;
  private Boolean isDeleted;
  private Boolean isMale;
  private int height;
  
public int getHeight() {
	return height;
}
public void setHeight(int height) {
	this.height = height;
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
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public Long getAge() {
	return age;
}
public void setAge(Long age) {
	this.age = age;
}
public Long getWeight() {
	return weight;
}
public void setWeight(Long weight) {
	this.weight = weight;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public Boolean getIsMale() {
	return isMale;
}
public void setIsMale(Boolean isMale) {
	this.isMale = isMale;
}
public Date getcreateTime() {
	return createTime;
}
public void setcreateTime(Date createTime) {
	this.createTime = createTime;
}
public String getTeam() {
	return team;
}
public void setTeam(String team) {
	this.team = team;
}
public Boolean getIsDeleted() {
	return isDeleted;
}
public void setIsDeleted(Boolean isDeleted) {
	this.isDeleted = isDeleted;
}
@Override
public String toString() {
	return "User [id=" + id + ", name=" + name + ", phone=" + phone + ", password=" + password + ", image=" + image
			+ ", age=" + age + ", weight=" + weight + ", description=" + description + ", createTime=" + createTime
			+ ", team=" + team + ", isDeleted=" + isDeleted + ", isMale=" + isMale + ", height=" + height + "]";
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	User other = (User) obj;
	if (id != other.id)
		return false;
	return true;
}
  




}
