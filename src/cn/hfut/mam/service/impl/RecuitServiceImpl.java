package cn.hfut.mam.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hfut.mam.dao.RecuitDao;
import cn.hfut.mam.dto.RecuitInfo;
import cn.hfut.mam.model.Recuit;
import cn.hfut.mam.service.RecuitService;

/**
 * @author ZhangXu 2015-3-7 上午9:47:45
 */

@Service("recuitService")
public class RecuitServiceImpl implements RecuitService {

	private RecuitDao recuitDao;

	public RecuitDao getRecuitDao() {
		return recuitDao;
	}
    
	@Autowired
	public void setRecuitDao(RecuitDao recuitDao) {
		this.recuitDao = recuitDao;
	}

	@Override
	public Serializable addRecuit(RecuitInfo recuitInfo) {
		Recuit recuit = new Recuit();
		BeanUtils.copyProperties(recuitInfo, recuit);
		recuit.setId(UUID.randomUUID().toString());
		recuit.setCreateDatetime(new Date());
		return this.recuitDao.save(recuit);
		

	}

	@Override
	public List<Recuit> showRecuit() {
		return this.recuitDao.getRecuitList();
	}

	@Override
	public Recuit getRecuitContentById(String id) {

		String hql = "from Recuit as recuit where recuit.id='" + id+"'";
		Recuit recuit = this.recuitDao.get(hql);
		return recuit;

	}

	
}
