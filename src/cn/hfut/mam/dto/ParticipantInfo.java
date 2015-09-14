package cn.hfut.mam.dto;

import java.io.Serializable;

/**
 * @author ZhangXu
 * 2015-4-2
 * 下午4:39:15
 */
public class ParticipantInfo implements Serializable {

	private static final long serialVersionUID = -6184523848892356469L;
    
	private String id;
    private String realname;
    private String tel;
	private String organization;
	private String email;
	private Boolean isStudent;
	private String isPayed;



	public String getIsPayed() {
		return isPayed;
	}

	public void setIsPayed(String isPayed) {
		this.isPayed = isPayed;
	}

	public Boolean getIsStudent() {
		return isStudent;
	}

	public void setIsStudent(Boolean isStudent) {
		this.isStudent = isStudent;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


}
