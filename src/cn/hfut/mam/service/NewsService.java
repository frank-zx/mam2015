package cn.hfut.mam.service;

import java.io.Serializable;
import java.util.List;

import cn.hfut.mam.dto.NewsInfo;
import cn.hfut.mam.model.News;

/**
 * @author ZhangXu
 * 2015-3-7
 * 上午9:47:18
 */
public interface NewsService {
	
	public Serializable addNews(NewsInfo newsInfo);
	public List<News> showIndexTitle();
	public List<News> showAllTitle(int page);
	public int getPagesCount();
	/**
	 * @param id
	 */
	public News getNewsById(String id);
	/**
	 * @param id
	 */
	public void deleteById(String id);
}
