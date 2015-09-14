package cn.hfut.mam.service;

import java.io.File;
import java.util.List;

import cn.hfut.mam.model.Resource;

/**
 * @author ZhangXu
 * 2015-3-7
 * 下午4:11:29
 */
public interface ResourceService {
	
	public String upload(File document,String documentFileName);

	public List<Resource> show();

	/**
	 * 
	 */
	public void delete(String id);

}
