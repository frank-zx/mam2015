package cn.hfut.mam.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * 实体类--论文
 * @author ZhangXu
 * 2015-3-6
 * 下午8:44:36
 */

@Entity
public class Paper extends BaseEntity {
	
	private static final long serialVersionUID = -6987384387226489615L;
	
	private String	title;
	private String author;
	private String path;
	private String tel;
	private String organization;
	private String email;
	private Member member;                         //论文提交者
	
	private String topic;//对应议题
	private String checkStatus;                      //审核状态
	private boolean cnki;                            //是否同意知网收录
    private boolean wanfang;                         //是否同意万方收录
    private boolean accepted;                        //录用状态
   
	@Column(nullable=false)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
    
	@Column(nullable=false)
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
    
	@Column(nullable=false)
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
    
	@Column(nullable=false)
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
    
	@Column(nullable=false)
	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}
    
	@Column(nullable=false)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
    
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "member_id",nullable=false)
	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
    
	@Column(nullable=false)
	public String getCheckStatus() {
		return checkStatus;
	}

	public void setCheckStatus(String checkStatus) {
		this.checkStatus = checkStatus;
	}
    
	@Column(nullable=false)
	public boolean isCnki() {
		return cnki;
	}

	public void setCnki(boolean cnki) {
		this.cnki = cnki;
	}
    
	@Column(nullable=false)
	public boolean isWanfang() {
		return wanfang;
	}

	public void setWanfang(boolean wanfang) {
		this.wanfang = wanfang;
	}
    
	@Column(nullable=false)
	public boolean isAccepted() {
		return accepted;
	}

	public void setAccepted(boolean accepted) {
		this.accepted = accepted;
	}
    
	@Column(nullable=false)
	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

}
