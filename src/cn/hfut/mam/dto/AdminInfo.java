package cn.hfut.mam.dto;

import java.io.Serializable;

import cn.hfut.mam.utils.Encrypt;

/**
 * @author ZhangXu
 * 2015-3-16
 * 下午9:42:01
 */
public class AdminInfo implements Serializable {

	private static final long serialVersionUID = 5060229258063928909L;
	
	private String name;
	private String pwd;


	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = Encrypt.md5AndSha(pwd.trim());
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
