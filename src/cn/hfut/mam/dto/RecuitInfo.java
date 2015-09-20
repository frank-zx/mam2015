package cn.hfut.mam.dto;

import java.io.Serializable;

public class RecuitInfo implements Serializable {

	private static final long serialVersionUID = -8963027039255268908L;

	private String org;
	private String contact;
	private String position;
	private String content;

	public String getOrg() {
		return org;
	}

	public void setOrg(String org) {
		this.org = org;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
