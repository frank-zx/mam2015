package cn.hfut.mam.dao.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.hfut.mam.dao.BaseDao;

/**
 * @author ZhangXu 2014-9-23 下午9:19:44
 */
@Repository("baseDao")
public class BaseDaoImpl<T> implements BaseDao<T> {

	protected SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Serializable save(T o) {

		return this.sessionFactory.getCurrentSession().save(o);

	}

	@Override
	public T get(String hql) {
        
		Query q = this.sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<T> list = q.list();
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;

	}

	@Override
	public T get(String hql, Map<String, Object> params) {
		Query q = this.sessionFactory.getCurrentSession().createQuery(hql);
		if (params != null && !params.isEmpty()) {
			for (String key : params.keySet()) {
				q.setParameter(key, params.get(key));
			}
		}
		@SuppressWarnings("unchecked")
		List<T> l = q.list();
		if (l != null && l.size() > 0) {
			return l.get(0);
		}
		return null;
	}

	@Override
	public void delete(T o) {
		this.sessionFactory.getCurrentSession().delete(o);

	}

	@Override
	public void update(T o) {
		this.sessionFactory.getCurrentSession().update(o);

	}
	
	@Override
	public List<T> getList(String hql) {

		Query q = this.sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<T> list = q.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;

	}

}
