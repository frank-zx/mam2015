package cn.hfut.mam.service;

import java.util.List;

import cn.hfut.mam.dto.HotelBookInfo;
import cn.hfut.mam.model.HotelBook;

/**
 * @author ZhangXu
 * 2015-4-17
 * 上午11:05:21
 */
public interface HotelBookService {

	/**
	 * @param m_email
	 * @param hotelBookInfo
	 */
	public void book(String m_email, HotelBookInfo hotelBookInfo);

	public List<HotelBook> show(String m_email);

}
