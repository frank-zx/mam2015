package cn.hfut.mam.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table
public class Recuit extends BaseEntity {

	private static final long serialVersionUID = -2918189749415720000L;

	private String org; // 招聘单位
	private String position;// 招聘职位
	private String contact;// 联系人
	private String content;// 详情

	@Column(nullable = false)
	public String getOrg() {
		return org;
	}

	public void setOrg(String org) {
		this.org = org;
	}

	@Column(nullable = false)
	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	@Column(nullable = false)
	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	@Column(nullable = false)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	// 参数构造器
	public Recuit(String id, String org, Date createDatetime, String position) {
		this.setId(id);
		this.setOrg(org);
		this.setCreateDatetime(createDatetime);
		this.setPosition(position);
	}

	public Recuit() {

	}

}
