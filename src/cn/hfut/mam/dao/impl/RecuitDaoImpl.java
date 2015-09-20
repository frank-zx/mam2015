package cn.hfut.mam.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import cn.hfut.mam.dao.RecuitDao;
import cn.hfut.mam.model.Recuit;

/**
 * @author ZhangXu 2015-3-7 上午9:45:38
 */

@Repository("recuitDao")
public class RecuitDaoImpl extends BaseDaoImpl<Recuit> implements RecuitDao {	
	
	

	@Override
	public List<Recuit> getRecuitList() {

		String hql = "select new Recuit(id,org,createDatetime,position) from Recuit order by createDatetime desc";
		Query q = this.sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Recuit> list = q.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}


}
