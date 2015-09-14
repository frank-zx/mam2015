package cn.hfut.mam.dao;


import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @author ZhangXu
 * 2014-9-23
 * 下午9:08:30
 */
public interface BaseDao<T> {
	
	public Serializable save(T o);
	
	public T get(String hql);
	
	public T get(String hql,Map<String,Object> params);
	
	public void delete(T o);
	
	public void update(T o);

	public List<T> getList(String hql);

}
