package cn.hfut.mam.dao;

import java.util.List;

import cn.hfut.mam.model.Recuit;

/**
 * @author ZhangXu
 * 2015-3-7
 * 上午9:44:43
 */
public interface RecuitDao extends BaseDao<Recuit> {
	
	public List<Recuit> getRecuitList();

}
