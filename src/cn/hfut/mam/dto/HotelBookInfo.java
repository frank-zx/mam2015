package cn.hfut.mam.dto;

import java.io.Serializable;

/**
 * @author ZhangXu 2015-4-17 上午10:53:27
 */
public class HotelBookInfo implements Serializable {

	private static final long serialVersionUID = -7304584196348929034L;

	private String hotel;
	private String danjian;// 单间数量
	private String biaojian;// 标间数量

	public String getHotel() {
		return hotel;
	}

	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	public String getDanjian() {
		return danjian;
	}

	public void setDanjian(String danjian) {
		this.danjian = danjian;
	}

	public String getBiaojian() {
		return biaojian;
	}

	public void setBiaojian(String biaojian) {
		this.biaojian = biaojian;
	}

}
