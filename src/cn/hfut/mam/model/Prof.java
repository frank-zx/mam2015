package cn.hfut.mam.model;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * 实体类--评审专家
 * @author ZhangXu
 * 2015-3-6
 * 下午8:47:31
 */

@Entity
public class Prof extends BaseEntity {

	private static final long serialVersionUID = -8005497480137478873L;
	
	private String name;
	private String pwd;
    
	@Column(nullable=false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
    
	@Column(length=40,nullable=false)
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
