package cn.hfut.mam.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import cn.hfut.mam.dao.NewsDao;
import cn.hfut.mam.model.News;

/**
 * @author ZhangXu 2015-3-7 上午9:45:38
 */

@Repository("newsDao")
public class NewsDaoImpl extends BaseDaoImpl<News> implements NewsDao {

	public static final int PAGE_RECORDS = 10;

	@Override
	public List<News> getIndexNewsList() {

		String hql = "select new News(id,title,createDatetime,reviews) from News order by createDatetime desc";
		Query q = this.sessionFactory.getCurrentSession().createQuery(hql);
		q.setFirstResult(0);
		q.setMaxResults(6);
		@SuppressWarnings("unchecked")
		List<News> list = q.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	@Override
	public List<News> getNewsList(int page) {

		String hql = "select new News(id,title,createDatetime,reviews) from News order by createDatetime desc";
		Query q = this.sessionFactory.getCurrentSession().createQuery(hql);
		q.setFirstResult(PAGE_RECORDS * (page - 1));
		q.setMaxResults(PAGE_RECORDS);
		@SuppressWarnings("unchecked")
		List<News> list = q.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public int getPagesCount() {
		String countStr = "select count(*) from News";
		Query query = this.sessionFactory.getCurrentSession().createQuery(
				countStr);
		Number num = (Number) query.uniqueResult();
		int count = num.intValue();
		int pages = (count - 1) / PAGE_RECORDS + 1;
		return pages;
	}

}
