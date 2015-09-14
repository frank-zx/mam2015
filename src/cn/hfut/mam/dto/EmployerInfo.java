package cn.hfut.mam.dto;

import java.io.Serializable;

public class EmployerInfo implements Serializable {

	private static final long serialVersionUID = -8963027039255268908L;
	
	private String org;
	private String name;
	private String tel;
	private String email;
	private String pwd;
	private String pwd2;
    
	public String getOrg() {
		return org;
	}

	public void setOrg(String org) {
		this.org = org;
	}
    
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
    
	public String getEmail() {
		return email;
	}
   
	public void setEmail(String email) {
		this.email = email;
	}
        
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd2() {
		return pwd2;
	}

	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


}
