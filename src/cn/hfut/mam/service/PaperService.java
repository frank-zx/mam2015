package cn.hfut.mam.service;

import java.util.List;

import cn.hfut.mam.dto.PaperInfo;
import cn.hfut.mam.model.Paper;

/**
 * @author ZhangXu
 * 2015-3-31
 * 下午6:34:02
 */
public interface PaperService {

	/**
	 * @return
	 */
	public List<Paper> show();

	/**
	 * @param paperInfo
	 * @return
	 */
	public String upload(String m_eamil,PaperInfo paperInfo);
	
	/**
	 * @param m_email
	 * @return
	 */
	public List<Paper> showYourPaper(String m_email);
	
	

}
