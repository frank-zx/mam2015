package cn.hfut.mam.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


/**
 * 实体类--酒店预订
 * 
 * @author ZhangXu 2015-3-6 下午8:37:52
 */

@Entity
public class HotelBook extends BaseEntity {

	private static final long serialVersionUID = -3774982322199968382L;

	private Member member;// 预订者
	private String hotel;
	private String danjian;//单间数量
	private String biaojian;//标间数量
    
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "member_id",nullable=false)
	public Member getMember() {
		return member;
	}
  
	public void setMember(Member member) {
		this.member = member;
	}
    
	@Column(nullable=false)
	public String getHotel() {
		return hotel;
	}

	public void setHotel(String hotel) {
		this.hotel = hotel;
	}
    
	@Column(nullable=false)
	public String getDanjian() {
		return danjian;
	}

	public void setDanjian(String danjian) {
		this.danjian = danjian;
	}
    
	@Column(nullable=false)
	public String getBiaojian() {
		return biaojian;
	}

	public void setBiaojian(String biaojian) {
		this.biaojian = biaojian;
	}
    

}
