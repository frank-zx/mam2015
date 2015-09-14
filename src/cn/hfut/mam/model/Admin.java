package cn.hfut.mam.model;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * 实体类--管理员
 * @author ZhangXu
 * 2015-3-6
 * 下午8:49:19
 */

@Entity
public class Admin extends BaseEntity {


	private static final long serialVersionUID = -5617555432694502431L;
	
	private String name;
	private String pwd;
    
	@Column(length=20,nullable=false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
    
	@Column(length=40,nullable = false)
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
