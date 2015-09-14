package cn.hfut.mam.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import cn.hfut.mam.dto.NewsInfo;
import cn.hfut.mam.model.News;
import cn.hfut.mam.service.NewsService;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @author ZhangXu 2015-3-7 上午9:43:54
 */

public class NewsAction extends BaseAction implements ModelDriven<NewsInfo> {

	private static final long serialVersionUID = -1843013955976950169L;

	NewsInfo newsInfo = new NewsInfo();
	private List<News> newsList;
	private int page = 1;
	private int pagesCount;
	private News news;
	private String id;

	@Override
	public NewsInfo getModel() {
		return newsInfo;
	}

	private NewsService newsService;

	public NewsService getNewsService() {
		return newsService;
	}

	@Autowired
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPagesCount() {
		return pagesCount;
	}

	public void setPagesCount(int pagesCount) {
		this.pagesCount = pagesCount;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List<News> getNewsList() throws Exception {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public String addNews() throws Exception {
		
		if (this.newsService.addNews(newsInfo) != null) {
			request.put("addsuccess", "新消息添加成功！");
		} else {
			request.put("resubmit", "请勿重复提交");
		}
		return "success";
	}

	public String showIndexTitle() throws Exception {

		newsList = this.newsService.showIndexTitle();
		/*if (newsList != null && newsList.size() > 0) {

			return "success";
		}
		return "error";*/
		return "success";

	}

	public String showAllTitle() throws Exception {

		pagesCount = this.newsService.getPagesCount();
		newsList = this.newsService.showAllTitle(page);
		/*if (newsList != null && newsList.size() > 0) {

			return "success";
		}
		return "error";*/
		return "success";

	}

	public String newsContent() throws Exception {

		news = this.newsService.getNewsById(newsInfo.getId());
		return "success";

	}
	
	public String delete() throws Exception{
		
		this.newsService.deleteById(newsInfo.getId());
		return "success";
	}

}
