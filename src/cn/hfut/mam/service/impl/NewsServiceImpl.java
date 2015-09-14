package cn.hfut.mam.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hfut.mam.dao.NewsDao;
import cn.hfut.mam.dto.NewsInfo;
import cn.hfut.mam.model.News;
import cn.hfut.mam.service.NewsService;

/**
 * @author ZhangXu 2015-3-7 上午9:47:45
 */

@Service("newsService")
public class NewsServiceImpl implements NewsService {

	private NewsDao newsDao;

	public NewsDao getNewsDao() {
		return newsDao;
	}

	@Autowired
	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	@Override
	public Serializable addNews(NewsInfo newsInfo) {
		News news = new News();
		BeanUtils.copyProperties(newsInfo, news);
		news.setId(UUID.randomUUID().toString());
		news.setCreateDatetime(new Date());
		if(this.newsDao.get("from News as news where news.title='" + newsInfo.getTitle()+"'")!=null)
			return null;
		return this.newsDao.save(news);
		

	}

	@Override
	public List<News> showIndexTitle() {
		return this.newsDao.getIndexNewsList();
	}

	@Override
	public List<News> showAllTitle(int page) {
		return this.newsDao.getNewsList(page);
	}

	@Override
	public int getPagesCount() {

		return this.newsDao.getPagesCount();
	}

	@Override
	public News getNewsById(String id) {

		String hql = "from News as news where news.id='" + id+"'";
		News news = this.newsDao.get(hql);
		news.setReviews(news.getReviews()+1);//浏览数+1

		return news;

	}

	@Override
	public void deleteById(String id) {
		this.newsDao.delete(this.getNewsById(id));
		
	}

}
