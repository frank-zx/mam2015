package cn.hfut.mam.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.hfut.mam.dto.HotelBookInfo;
import cn.hfut.mam.model.HotelBook;
import cn.hfut.mam.service.HotelBookService;

import com.opensymphony.xwork2.ModelDriven;

/**
 * @author ZhangXu
 * 2015-4-17
 * 上午10:52:15
 */
public class HotelBookAction extends BaseAction implements ModelDriven<HotelBookInfo>{

	private static final long serialVersionUID = 7677420181497857815L;
	HotelBookInfo hotelBookInfo=new HotelBookInfo();

	@Override
	public HotelBookInfo getModel() {
		return hotelBookInfo;
	}
	
    private HotelBookService hotelBookService;
    public List<HotelBook> hotelBookList;

	public HotelBookService getHotelBookService() {
		return hotelBookService;
	}
   
	@Autowired
	public void setHotelBookService(HotelBookService hotelBookService) {
		this.hotelBookService = hotelBookService;
	}
	
	public String book(){
		String m_email=(String)session.get("email");
		this.hotelBookService.book(m_email,hotelBookInfo);
		return "success";
	}
	
	public String show(){
		String m_email=(String)session.get("email");
		hotelBookList=this.hotelBookService.show(m_email);
		return "success";
	}

	public List<HotelBook> getHotelBookList() {
		return hotelBookList;
	}

	public void setHotelBookList(List<HotelBook> hotelBookList) {
		this.hotelBookList = hotelBookList;
	}
	

}
