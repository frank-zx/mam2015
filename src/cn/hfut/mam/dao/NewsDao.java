package cn.hfut.mam.dao;

import java.util.List;

import cn.hfut.mam.model.News;

/**
 * @author ZhangXu
 * 2015-3-7
 * 上午9:44:43
 */
public interface NewsDao extends BaseDao<News> {
	
	public List<News> getIndexNewsList();
	public List<News> getNewsList(int page);
	public int getPagesCount();

}
