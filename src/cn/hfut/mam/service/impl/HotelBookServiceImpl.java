package cn.hfut.mam.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hfut.mam.dao.HotelBookDao;
import cn.hfut.mam.dao.MemberDao;
import cn.hfut.mam.dto.HotelBookInfo;
import cn.hfut.mam.model.HotelBook;
import cn.hfut.mam.model.Member;
import cn.hfut.mam.service.HotelBookService;

/**
 * @author ZhangXu
 * 2015-4-17
 * 上午11:05:50
 */

@Service("hotelBookService")
public class HotelBookServiceImpl implements HotelBookService {
	
	private HotelBookDao hotelBookDao;
	private MemberDao memberDao;

	public HotelBookDao getHotelBookDao() {
		return hotelBookDao;
	}
    
	@Autowired
	public void setHotelBookDao(HotelBookDao hotelBookDao) {
		this.hotelBookDao = hotelBookDao;
	}
    
	public MemberDao getMemberDao() {
		return memberDao;
	}
    
	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public void book(String m_email, HotelBookInfo hotelBookInfo) {
		HotelBook hb=new HotelBook();
		String hql="from Member where email='" + m_email+ "'";
		Member m=(Member)this.memberDao.get(hql);
		hb.setId(UUID.randomUUID().toString());
		hb.setCreateDatetime(new Date());
		hb.setMember(m);
		hb.setHotel(hotelBookInfo.getHotel());
		hb.setDanjian(hotelBookInfo.getDanjian());
		hb.setBiaojian(hotelBookInfo.getBiaojian());
		this.hotelBookDao.save(hb);
		
	}

	@Override
	public List<HotelBook> show(String m_email) {	
		Member m=this.memberDao.get("from Member where email='"+m_email+"'");
		String id=m.getId();
		List<HotelBook> list=this.hotelBookDao.getList("from HotelBook where member_id='"+id+"'");
		return list;
	}

	

}
